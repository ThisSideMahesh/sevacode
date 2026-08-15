package com.squareup.okhttp;

import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.HttpMethod;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.RetryableSink;
import java.io.IOException;
import java.net.ProtocolException;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes.dex */
public final class Call {
    volatile boolean canceled;
    private final OkHttpClient client;
    private final Dispatcher dispatcher;
    HttpEngine engine;
    private boolean executed;
    private int redirectionCount;
    private Request request;

    Call(OkHttpClient okHttpClient, Dispatcher dispatcher, Request request) {
        this.client = okHttpClient;
        this.dispatcher = dispatcher;
        this.request = request;
    }

    public Response execute() throws IOException {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        Response response = getResponse();
        this.engine.releaseConnection();
        if (response != null) {
            return response;
        }
        throw new IOException("Canceled");
    }

    public void enqueue(Callback callback) {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        this.dispatcher.enqueue(new AsyncCall(callback));
    }

    public void cancel() {
        this.canceled = true;
        HttpEngine httpEngine = this.engine;
        if (httpEngine != null) {
            httpEngine.disconnect();
        }
    }

    final class AsyncCall extends NamedRunnable {
        private final Callback responseCallback;

        private AsyncCall(Callback callback) {
            super("OkHttp %s", Call.this.request.urlString());
            this.responseCallback = callback;
        }

        String host() {
            return Call.this.request.url().getHost();
        }

        Request request() {
            return Call.this.request;
        }

        Object tag() {
            return Call.this.request.tag();
        }

        Call get() {
            return Call.this;
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        protected void execute() {
            IOException e;
            boolean z = true;
            try {
                try {
                    Response response = Call.this.getResponse();
                    try {
                        if (Call.this.canceled) {
                            this.responseCallback.onFailure(Call.this.request, new IOException("Canceled"));
                        } else {
                            Call.this.engine.releaseConnection();
                            this.responseCallback.onResponse(response);
                        }
                    } catch (IOException e2) {
                        e = e2;
                        if (!z) {
                            this.responseCallback.onFailure(Call.this.request, e);
                        } else {
                            throw new RuntimeException(e);
                        }
                    }
                } catch (Throwable th) {
                    Call.this.dispatcher.finished(this);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                z = false;
            }
            Call.this.dispatcher.finished(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:22:0x007b A[Catch: IOException -> 0x0116, TryCatch #0 {IOException -> 0x0116, blocks: (B:20:0x006e, B:22:0x007b, B:23:0x008a), top: B:46:0x006e }] */
    /* JADX WARN: Code duplicated, block: B:28:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:46:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00d1 A[SYNTHETIC] */
    public Response getResponse() throws IOException {
        RetryableSink retryableSinkEmptySink;
        Response response;
        Request requestFollowUpRequest;
        int i;
        RequestBody requestBodyBody = this.request.body();
        if (requestBodyBody != null) {
            Request.Builder builderNewBuilder = this.request.newBuilder();
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            if (mediaTypeContentType != null) {
                builderNewBuilder.header("Content-Type", mediaTypeContentType.toString());
            }
            long jContentLength = requestBodyBody.contentLength();
            if (jContentLength != -1) {
                builderNewBuilder.header("Content-Length", Long.toString(jContentLength));
                builderNewBuilder.removeHeader("Transfer-Encoding");
            } else {
                builderNewBuilder.header("Transfer-Encoding", "chunked");
                builderNewBuilder.removeHeader("Content-Length");
            }
            this.request = builderNewBuilder.build();
        } else {
            if (HttpMethod.hasRequestBody(this.request.method())) {
                retryableSinkEmptySink = Util.emptySink();
            }
            this.engine = new HttpEngine(this.client, this.request, false, null, null, retryableSinkEmptySink, null);
            while (!this.canceled) {
                try {
                    this.engine.sendRequest();
                    if (this.request.body() != null) {
                        this.request.body().writeTo(this.engine.getBufferedRequestBody());
                    }
                    this.engine.readResponse();
                    response = this.engine.getResponse();
                    requestFollowUpRequest = this.engine.followUpRequest();
                    if (requestFollowUpRequest == null) {
                        this.engine.releaseConnection();
                        return response.newBuilder().body(new RealResponseBody(response, this.engine.getResponseBody())).build();
                    }
                    if (this.engine.getResponse().isRedirect()) {
                        i = this.redirectionCount + 1;
                        this.redirectionCount = i;
                        if (i > 20) {
                            throw new ProtocolException("Too many redirects: " + this.redirectionCount);
                        }
                    }
                    if (!this.engine.sameConnection(requestFollowUpRequest.url())) {
                        this.engine.releaseConnection();
                    }
                    Connection connectionClose = this.engine.close();
                    this.request = requestFollowUpRequest;
                    this.engine = new HttpEngine(this.client, this.request, false, connectionClose, null, null, response);
                } catch (IOException e) {
                    HttpEngine httpEngineRecover = this.engine.recover(e, null);
                    if (httpEngineRecover == null) {
                        throw e;
                    }
                    this.engine = httpEngineRecover;
                }
            }
            return null;
        }
        retryableSinkEmptySink = null;
        this.engine = new HttpEngine(this.client, this.request, false, null, null, retryableSinkEmptySink, null);
        while (!this.canceled) {
            this.engine.sendRequest();
            if (this.request.body() != null) {
                this.request.body().writeTo(this.engine.getBufferedRequestBody());
            }
            this.engine.readResponse();
            response = this.engine.getResponse();
            requestFollowUpRequest = this.engine.followUpRequest();
            if (requestFollowUpRequest == null) {
                this.engine.releaseConnection();
                return response.newBuilder().body(new RealResponseBody(response, this.engine.getResponseBody())).build();
            }
            if (this.engine.getResponse().isRedirect()) {
                i = this.redirectionCount + 1;
                this.redirectionCount = i;
                if (i > 20) {
                    throw new ProtocolException("Too many redirects: " + this.redirectionCount);
                }
            }
            if (!this.engine.sameConnection(requestFollowUpRequest.url())) {
                this.engine.releaseConnection();
            }
            Connection connectionClose2 = this.engine.close();
            this.request = requestFollowUpRequest;
            this.engine = new HttpEngine(this.client, this.request, false, connectionClose2, null, null, response);
        }
        return null;
    }

    private static class RealResponseBody extends ResponseBody {
        private final Response response;
        private final BufferedSource source;

        RealResponseBody(Response response, BufferedSource bufferedSource) {
            this.response = response;
            this.source = bufferedSource;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public MediaType contentType() {
            String strHeader = this.response.header("Content-Type");
            if (strHeader != null) {
                return MediaType.parse(strHeader);
            }
            return null;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public long contentLength() {
            return OkHeaders.contentLength(this.response);
        }

        @Override // com.squareup.okhttp.ResponseBody
        public BufferedSource source() {
            return this.source;
        }
    }
}
