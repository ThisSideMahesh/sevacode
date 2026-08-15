package com.dp.sgp.util;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class RandomNumberGenerator {
    public static int generateRandom4DigitNumber() {
        return new Random().nextInt(9000) + 1000;
    }

    public static void main(String[] strArr) {
        System.out.println("Random 4-digit number: " + generateRandom4DigitNumber());
    }
}
