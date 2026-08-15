package com.dp.sgp.glvars;

/* JADX INFO: loaded from: classes.dex */
public class GlVars {
    private static final GlVars instance = new GlVars();
    public static int RESULT_COUNT = 0;
    public static String Title = "";
    public static String User_Code = "";
    public static String Printed_Name = "";
    public static String Printed_Date = "";

    public static GlVars Instance() {
        return instance;
    }
}
