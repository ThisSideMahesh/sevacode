package com.dp.sgp.util;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class JustifiedTextView extends TextView {
    private static final String HAIR_SPACE = "\u200a";
    private static final String NORMAL_SPACE = " ";
    private List<String> currentSentence;
    private String justifiedText;
    private Random random;
    private List<String> sentenceWithSpaces;
    private List<String> sentences;
    private int viewWidth;

    public JustifiedTextView(Context context) {
        super(context);
        this.sentences = new ArrayList();
        this.currentSentence = new ArrayList();
        this.sentenceWithSpaces = new ArrayList();
        this.justifiedText = "";
        this.random = new Random();
    }

    public JustifiedTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.sentences = new ArrayList();
        this.currentSentence = new ArrayList();
        this.sentenceWithSpaces = new ArrayList();
        this.justifiedText = "";
        this.random = new Random();
    }

    public JustifiedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.sentences = new ArrayList();
        this.currentSentence = new ArrayList();
        this.sentenceWithSpaces = new ArrayList();
        this.justifiedText = "";
        this.random = new Random();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.justifiedText.equals(getText().toString())) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            String string = getText().toString();
            this.viewWidth = getMeasuredWidth() - (getPaddingLeft() + getPaddingRight());
            if (layoutParams.width != -2 && this.viewWidth > 0 && !string.isEmpty()) {
                String justifiedText = getJustifiedText(string);
                this.justifiedText = justifiedText;
                if (justifiedText.isEmpty()) {
                    return;
                }
                setText(this.justifiedText);
                this.sentences.clear();
                this.currentSentence.clear();
                return;
            }
            super.onDraw(canvas);
            return;
        }
        super.onDraw(canvas);
    }

    private String getJustifiedText(String str) {
        for (String str2 : str.split(NORMAL_SPACE)) {
            boolean z = str2.contains("\n") || str2.contains("\r");
            if (fitsInSentence(str2, this.currentSentence, true)) {
                addWord(str2, z);
            } else {
                this.sentences.add(fillSentenceWithSpaces(this.currentSentence));
                this.currentSentence.clear();
                addWord(str2, z);
            }
        }
        if (this.currentSentence.size() > 0) {
            this.sentences.add(getSentenceFromList(this.currentSentence, true));
        }
        return getSentenceFromList(this.sentences, false);
    }

    private void addWord(String str, boolean z) {
        this.currentSentence.add(str);
        if (z) {
            this.sentences.add(getSentenceFromListCheckingNewLines(this.currentSentence));
            this.currentSentence.clear();
        }
    }

    private String getSentenceFromList(List<String> list, boolean z) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (z) {
                sb.append(NORMAL_SPACE);
            }
        }
        return sb.toString();
    }

    private String getSentenceFromListCheckingNewLines(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            sb.append(str);
            if (!str.contains("\n") && !str.contains("\r")) {
                sb.append(NORMAL_SPACE);
            }
        }
        return sb.toString();
    }

    private String fillSentenceWithSpaces(List<String> list) {
        this.sentenceWithSpaces.clear();
        if (list.size() > 1) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                this.sentenceWithSpaces.add(it.next());
                this.sentenceWithSpaces.add(NORMAL_SPACE);
            }
            while (fitsInSentence(HAIR_SPACE, this.sentenceWithSpaces, false)) {
                List<String> list2 = this.sentenceWithSpaces;
                list2.add(getRandomNumber(list2.size() - 2), HAIR_SPACE);
            }
        }
        return getSentenceFromList(this.sentenceWithSpaces, false);
    }

    private boolean fitsInSentence(String str, List<String> list, boolean z) {
        return getPaint().measureText(new StringBuilder().append(getSentenceFromList(list, z)).append(str).toString()) < ((float) this.viewWidth);
    }

    private int getRandomNumber(int i) {
        return this.random.nextInt(i) + 1;
    }
}
