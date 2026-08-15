package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.RouteSelector;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Route {
    final Address address;
    final InetSocketAddress inetSocketAddress;
    final Proxy proxy;
    final String tlsVersion;

    public Route(Address address, Proxy proxy, InetSocketAddress inetSocketAddress, String str) {
        Objects.requireNonNull(address, "address == null");
        Objects.requireNonNull(proxy, "proxy == null");
        Objects.requireNonNull(inetSocketAddress, "inetSocketAddress == null");
        Objects.requireNonNull(str, "tlsVersion == null");
        this.address = address;
        this.proxy = proxy;
        this.inetSocketAddress = inetSocketAddress;
        this.tlsVersion = str;
    }

    public Address getAddress() {
        return this.address;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public InetSocketAddress getSocketAddress() {
        return this.inetSocketAddress;
    }

    public String getTlsVersion() {
        return this.tlsVersion;
    }

    boolean supportsNpn() {
        return !this.tlsVersion.equals(RouteSelector.SSL_V3);
    }

    public boolean requiresTunnel() {
        return this.address.sslSocketFactory != null && this.proxy.type() == Proxy.Type.HTTP;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Route)) {
            return false;
        }
        Route route = (Route) obj;
        return this.address.equals(route.address) && this.proxy.equals(route.proxy) && this.inetSocketAddress.equals(route.inetSocketAddress) && this.tlsVersion.equals(route.tlsVersion);
    }

    public int hashCode() {
        return ((((((527 + this.address.hashCode()) * 31) + this.proxy.hashCode()) * 31) + this.inetSocketAddress.hashCode()) * 31) + this.tlsVersion.hashCode();
    }
}
