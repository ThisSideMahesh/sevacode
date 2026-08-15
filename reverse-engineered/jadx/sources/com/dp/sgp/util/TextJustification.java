package com.dp.sgp.util;

import android.graphics.drawable.ColorDrawable;
import android.support.v4.view.ViewCompat;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ImageSpan;
import android.widget.TextView;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class TextJustification {
    public static void justify(final TextView textView) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final String string = textView.getText().toString();
        final TextPaint paint = textView.getPaint();
        CharSequence text = textView.getText();
        final Spannable spannableString = text instanceof Spannable ? (Spannable) text : new SpannableString(string);
        textView.post(new Runnable() { // from class: com.dp.sgp.util.TextJustification.1
            @Override // java.lang.Runnable
            public void run() {
                if (atomicBoolean.get()) {
                    return;
                }
                int lineCount = textView.getLineCount();
                int width = textView.getWidth();
                for (int i = 0; i < lineCount; i++) {
                    int lineStart = textView.getLayout().getLineStart(i);
                    String strSubstring = string.substring(lineStart, textView.getLayout().getLineEnd(i));
                    if (i == lineCount - 1) {
                        break;
                    }
                    String strTrim = strSubstring.trim();
                    String strReplaceAll = strSubstring.replaceAll(" ", "");
                    float fMeasureText = (width - paint.measureText(strReplaceAll)) / (strTrim.length() - strReplaceAll.length());
                    Set setSpacePositionInEnds = TextJustification.spacePositionInEnds(strSubstring);
                    for (int i2 = 0; i2 < strSubstring.length(); i2++) {
                        char cCharAt = strSubstring.charAt(i2);
                        ColorDrawable colorDrawable = new ColorDrawable(ViewCompat.MEASURED_SIZE_MASK);
                        if (cCharAt == ' ') {
                            if (setSpacePositionInEnds.contains(Integer.valueOf(i2))) {
                                colorDrawable.setBounds(0, 0, 0, 0);
                            } else {
                                colorDrawable.setBounds(0, 0, (int) fMeasureText, 0);
                            }
                            int i3 = lineStart + i2;
                            spannableString.setSpan(new ImageSpan(colorDrawable), i3, i3 + 1, 33);
                        }
                    }
                }
                textView.setText(spannableString);
                atomicBoolean.set(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Set<Integer> spacePositionInEnds(String str) {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < str.length() && str.charAt(i) == ' '; i++) {
            hashSet.add(Integer.valueOf(i));
        }
        if (hashSet.size() == str.length()) {
            return hashSet;
        }
        for (int length = str.length() - 1; length > 0 && str.charAt(length) == ' '; length--) {
            hashSet.add(Integer.valueOf(length));
        }
        return hashSet;
    }
}
