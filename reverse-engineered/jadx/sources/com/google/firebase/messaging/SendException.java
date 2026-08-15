package com.google.firebase.messaging;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class SendException extends Exception {
    public static final int ERROR_INVALID_PARAMETERS = 1;
    public static final int ERROR_SIZE = 2;
    public static final int ERROR_TOO_MANY_MESSAGES = 4;
    public static final int ERROR_TTL_EXCEEDED = 3;
    public static final int ERROR_UNKNOWN = 0;
    private final int errorCode;

    /* JADX WARN: Code duplicated, block: B:32:0x005c  */
    SendException(String str) {
        super(str);
        int i = 4;
        if (str != null) {
            String lowerCase = str.toLowerCase(Locale.US);
            lowerCase.hashCode();
            switch (lowerCase) {
                case "service_not_available":
                    i = 3;
                    break;
                case "toomanymessages":
                    break;
                case "invalid_parameters":
                case "missing_to":
                    i = 1;
                    break;
                case "messagetoobig":
                    i = 2;
                    break;
                default:
                    i = 0;
                    break;
            }
        } else {
            i = 0;
        }
        this.errorCode = i;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }
}
