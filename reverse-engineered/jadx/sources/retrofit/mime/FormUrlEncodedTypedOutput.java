package retrofit.mime;

import com.bumptech.glide.load.Key;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class FormUrlEncodedTypedOutput implements TypedOutput {
    final ByteArrayOutputStream content = new ByteArrayOutputStream();

    @Override // retrofit.mime.TypedOutput
    public String fileName() {
        return null;
    }

    @Override // retrofit.mime.TypedOutput
    public String mimeType() {
        return "application/x-www-form-urlencoded; charset=UTF-8";
    }

    public void addField(String str, String str2) {
        addField(str, true, str2, true);
    }

    public void addField(String str, boolean z, String str2, boolean z2) {
        Objects.requireNonNull(str, "name");
        Objects.requireNonNull(str2, "value");
        if (this.content.size() > 0) {
            this.content.write(38);
        }
        if (z) {
            try {
                str = URLEncoder.encode(str, Key.STRING_CHARSET_NAME);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        if (z2) {
            str2 = URLEncoder.encode(str2, Key.STRING_CHARSET_NAME);
        }
        this.content.write(str.getBytes(Key.STRING_CHARSET_NAME));
        this.content.write(61);
        this.content.write(str2.getBytes(Key.STRING_CHARSET_NAME));
    }

    @Override // retrofit.mime.TypedOutput
    public long length() {
        return this.content.size();
    }

    @Override // retrofit.mime.TypedOutput
    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(this.content.toByteArray());
    }
}
