// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.widget.FrameLayout;
import android.widget.TextView;

public class LikeBoxCountView extends FrameLayout
{
    public static final class LikeBoxCountViewCaretPosition extends Enum
    {

        public static final LikeBoxCountViewCaretPosition BOTTOM;
        private static final LikeBoxCountViewCaretPosition ENUM$VALUES[];
        public static final LikeBoxCountViewCaretPosition LEFT;
        public static final LikeBoxCountViewCaretPosition RIGHT;
        public static final LikeBoxCountViewCaretPosition TOP;

        public static LikeBoxCountViewCaretPosition valueOf(String s)
        {
            return (LikeBoxCountViewCaretPosition)Enum.valueOf(com/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition, s);
        }

        public static LikeBoxCountViewCaretPosition[] values()
        {
            LikeBoxCountViewCaretPosition alikeboxcountviewcaretposition[] = ENUM$VALUES;
            int i = alikeboxcountviewcaretposition.length;
            LikeBoxCountViewCaretPosition alikeboxcountviewcaretposition1[] = new LikeBoxCountViewCaretPosition[i];
            System.arraycopy(alikeboxcountviewcaretposition, 0, alikeboxcountviewcaretposition1, 0, i);
            return alikeboxcountviewcaretposition1;
        }

        static 
        {
            LEFT = new LikeBoxCountViewCaretPosition("LEFT", 0);
            TOP = new LikeBoxCountViewCaretPosition("TOP", 1);
            RIGHT = new LikeBoxCountViewCaretPosition("RIGHT", 2);
            BOTTOM = new LikeBoxCountViewCaretPosition("BOTTOM", 3);
            LikeBoxCountViewCaretPosition alikeboxcountviewcaretposition[] = new LikeBoxCountViewCaretPosition[4];
            alikeboxcountviewcaretposition[0] = LEFT;
            alikeboxcountviewcaretposition[1] = TOP;
            alikeboxcountviewcaretposition[2] = RIGHT;
            alikeboxcountviewcaretposition[3] = BOTTOM;
            ENUM$VALUES = alikeboxcountviewcaretposition;
        }

        private LikeBoxCountViewCaretPosition(String s, int i)
        {
            super(s, i);
        }
    }


    private static int $SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition[];
    private int additionalTextPadding;
    private Paint borderPaint;
    private float borderRadius;
    private float caretHeight;
    private LikeBoxCountViewCaretPosition caretPosition;
    private float caretWidth;
    private TextView likeCountLabel;
    private int textPadding;

    static int[] $SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition()
    {
        int ai[] = $SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[LikeBoxCountViewCaretPosition.values().length];
        try
        {
            ai1[LikeBoxCountViewCaretPosition.BOTTOM.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[LikeBoxCountViewCaretPosition.LEFT.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[LikeBoxCountViewCaretPosition.RIGHT.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[LikeBoxCountViewCaretPosition.TOP.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        $SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition = ai1;
        return ai1;
    }

    public LikeBoxCountView(Context context)
    {
        super(context);
        caretPosition = LikeBoxCountViewCaretPosition.LEFT;
        initialize(context);
    }

    private void drawBorder(Canvas canvas, float f, float f1, float f2, float f3)
    {
        Path path = new Path();
        float f4 = 2.0F * borderRadius;
        path.addArc(new RectF(f, f1, f + f4, f1 + f4), -180F, 90F);
        if (caretPosition == LikeBoxCountViewCaretPosition.TOP)
        {
            path.lineTo(f + (f2 - f - caretWidth) / 2.0F, f1);
            path.lineTo(f + (f2 - f) / 2.0F, f1 - caretHeight);
            path.lineTo(f + ((f2 - f) + caretWidth) / 2.0F, f1);
        }
        path.lineTo(f2 - borderRadius, f1);
        path.addArc(new RectF(f2 - f4, f1, f2, f1 + f4), -90F, 90F);
        if (caretPosition == LikeBoxCountViewCaretPosition.RIGHT)
        {
            path.lineTo(f2, f1 + (f3 - f1 - caretWidth) / 2.0F);
            path.lineTo(f2 + caretHeight, f1 + (f3 - f1) / 2.0F);
            path.lineTo(f2, f1 + ((f3 - f1) + caretWidth) / 2.0F);
        }
        path.lineTo(f2, f3 - borderRadius);
        path.addArc(new RectF(f2 - f4, f3 - f4, f2, f3), 0.0F, 90F);
        if (caretPosition == LikeBoxCountViewCaretPosition.BOTTOM)
        {
            path.lineTo(f + ((f2 - f) + caretWidth) / 2.0F, f3);
            path.lineTo(f + (f2 - f) / 2.0F, f3 + caretHeight);
            path.lineTo(f + (f2 - f - caretWidth) / 2.0F, f3);
        }
        path.lineTo(f + borderRadius, f3);
        path.addArc(new RectF(f, f3 - f4, f + f4, f3), 90F, 90F);
        if (caretPosition == LikeBoxCountViewCaretPosition.LEFT)
        {
            path.lineTo(f, f1 + ((f3 - f1) + caretWidth) / 2.0F);
            path.lineTo(f - caretHeight, f1 + (f3 - f1) / 2.0F);
            path.lineTo(f, f1 + (f3 - f1 - caretWidth) / 2.0F);
        }
        path.lineTo(f, f1 + borderRadius);
        canvas.drawPath(path, borderPaint);
    }

    private void initialize(Context context)
    {
        setWillNotDraw(false);
        caretHeight = getResources().getDimension(com.facebook.android.R.dimen.com_facebook_likeboxcountview_caret_height);
        caretWidth = getResources().getDimension(com.facebook.android.R.dimen.com_facebook_likeboxcountview_caret_width);
        borderRadius = getResources().getDimension(com.facebook.android.R.dimen.com_facebook_likeboxcountview_border_radius);
        borderPaint = new Paint();
        borderPaint.setColor(getResources().getColor(com.facebook.android.R.color.com_facebook_likeboxcountview_border_color));
        borderPaint.setStrokeWidth(getResources().getDimension(com.facebook.android.R.dimen.com_facebook_likeboxcountview_border_width));
        borderPaint.setStyle(android.graphics.Paint.Style.STROKE);
        initializeLikeCountLabel(context);
        addView(likeCountLabel);
        setCaretPosition(caretPosition);
    }

    private void initializeLikeCountLabel(Context context)
    {
        likeCountLabel = new TextView(context);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1);
        likeCountLabel.setLayoutParams(layoutparams);
        likeCountLabel.setGravity(17);
        likeCountLabel.setTextSize(0, getResources().getDimension(com.facebook.android.R.dimen.com_facebook_likeboxcountview_text_size));
        likeCountLabel.setTextColor(getResources().getColor(com.facebook.android.R.color.com_facebook_likeboxcountview_text_color));
        textPadding = getResources().getDimensionPixelSize(com.facebook.android.R.dimen.com_facebook_likeboxcountview_text_padding);
        additionalTextPadding = getResources().getDimensionPixelSize(com.facebook.android.R.dimen.com_facebook_likeboxcountview_caret_height);
    }

    private void setAdditionalTextPadding(int i, int j, int k, int l)
    {
        likeCountLabel.setPadding(i + textPadding, j + textPadding, k + textPadding, l + textPadding);
    }

    protected void onDraw(Canvas canvas)
    {
        int i;
        int j;
        int k;
        int l;
        super.onDraw(canvas);
        i = getPaddingTop();
        j = getPaddingLeft();
        k = getWidth() - getPaddingRight();
        l = getHeight() - getPaddingBottom();
        $SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition()[caretPosition.ordinal()];
        JVM INSTR tableswitch 1 4: default 80
    //                   1 110
    //                   2 122
    //                   3 134
    //                   4 96;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        drawBorder(canvas, j, i, k, l);
        return;
_L5:
        l = (int)((float)l - caretHeight);
        continue; /* Loop/switch isn't completed */
_L2:
        j = (int)((float)j + caretHeight);
        continue; /* Loop/switch isn't completed */
_L3:
        i = (int)((float)i + caretHeight);
        continue; /* Loop/switch isn't completed */
_L4:
        k = (int)((float)k - caretHeight);
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void setCaretPosition(LikeBoxCountViewCaretPosition likeboxcountviewcaretposition)
    {
        caretPosition = likeboxcountviewcaretposition;
        switch ($SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition()[likeboxcountviewcaretposition.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            setAdditionalTextPadding(additionalTextPadding, 0, 0, 0);
            return;

        case 2: // '\002'
            setAdditionalTextPadding(0, additionalTextPadding, 0, 0);
            return;

        case 3: // '\003'
            setAdditionalTextPadding(0, 0, additionalTextPadding, 0);
            return;

        case 4: // '\004'
            setAdditionalTextPadding(0, 0, 0, additionalTextPadding);
            break;
        }
    }

    public void setText(String s)
    {
        likeCountLabel.setText(s);
    }
}
