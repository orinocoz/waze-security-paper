// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;

// Referenced classes of package com.waze.view.text:
//            WazeTextView

public class AutoResizeTextView extends WazeTextView
{
    public static interface OnTextResizeListener
    {

        public abstract void onTextResize(TextView textview, float f, float f1);
    }


    public static final float MIN_TEXT_SIZE = 15F;
    private static final String mEllipsis = "...";
    private static final Canvas sTextResizeCanvas = new Canvas();
    private boolean mAddEllipsis;
    private float mMaxTextSize;
    private float mMinTextSize;
    private boolean mNeedsResize;
    private float mSpacingAdd;
    private float mSpacingMult;
    private OnTextResizeListener mTextResizeListener;
    private float mTextSize;

    public AutoResizeTextView(Context context)
    {
        this(context, null);
    }

    public AutoResizeTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mNeedsResize = false;
        mMaxTextSize = 0.0F;
        mMinTextSize = 15F;
        mSpacingMult = 1.0F;
        mSpacingAdd = 0.0F;
        mAddEllipsis = true;
        mTextSize = getTextSize();
        setMinTextSize(context.obtainStyledAttributes(attributeset, com.waze.R.styleable.AutoResizeTextView).getDimension(0, 15F));
    }

    public AutoResizeTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mNeedsResize = false;
        mMaxTextSize = 0.0F;
        mMinTextSize = 15F;
        mSpacingMult = 1.0F;
        mSpacingAdd = 0.0F;
        mAddEllipsis = true;
        mTextSize = getTextSize();
    }

    private int getTextHeight(CharSequence charsequence, TextPaint textpaint, int i, float f)
    {
        if (isInEditMode())
        {
            return -1;
        }
        textpaint.setTextSize(f);
        StaticLayout staticlayout = new StaticLayout(charsequence, textpaint, i, android.text.Layout.Alignment.ALIGN_NORMAL, mSpacingMult, mSpacingAdd, true);
        staticlayout.draw(sTextResizeCanvas);
        if (staticlayout.getLineCount() > 1)
        {
            return -1;
        } else
        {
            return staticlayout.getHeight();
        }
    }

    public boolean getAddEllipsis()
    {
        return mAddEllipsis;
    }

    public float getMaxTextSize()
    {
        return mMaxTextSize;
    }

    public float getMinTextSize()
    {
        return mMinTextSize;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (flag || mNeedsResize)
        {
            resizeText(k - i - getCompoundPaddingLeft() - getCompoundPaddingRight(), l - j - getCompoundPaddingBottom() - getCompoundPaddingTop());
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        if (i != k || j != l)
        {
            resetTextSize();
            mNeedsResize = true;
        }
    }

    protected void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        mNeedsResize = true;
        requestLayout();
    }

    public void resetTextSize()
    {
        super.setTextSize(0, mTextSize);
        mMaxTextSize = mTextSize;
    }

    public void resizeText()
    {
        int i = getHeight() - getPaddingBottom() - getPaddingTop();
        resizeText(getWidth() - getPaddingLeft() - getPaddingRight(), i);
    }

    public void resizeText(int i, int j)
    {
        Object obj = getText();
        if (obj == null || ((CharSequence) (obj)).length() == 0 || j <= 0 || i <= 0 || mTextSize == 0.0F)
        {
            return;
        }
        TextPaint textpaint = getPaint();
        float f = textpaint.getTextSize();
        float f1;
        int k;
        if (mMaxTextSize > 0.0F)
        {
            f1 = Math.min(mTextSize, mMaxTextSize);
        } else
        {
            f1 = mTextSize;
        }
        k = getTextHeight(((CharSequence) (obj)), textpaint, i, f1);
        do
        {
            if (k != -1 && k <= j || f1 <= mMinTextSize)
            {
                if (!isInEditMode() && mAddEllipsis && f1 == mMinTextSize && (k > j || k == -1))
                {
                    StaticLayout staticlayout = new StaticLayout(((CharSequence) (obj)), textpaint, i, android.text.Layout.Alignment.ALIGN_NORMAL, mSpacingMult, mSpacingAdd, false);
                    staticlayout.draw(sTextResizeCanvas);
                    int l = -1 + staticlayout.getLineForVertical(j);
                    if (l != -1)
                    {
                        int i1 = staticlayout.getLineStart(l);
                        int j1 = staticlayout.getLineEnd(l);
                        float f2 = staticlayout.getLineWidth(l);
                        float f3 = textpaint.measureText("...");
                        while ((float)i < f2 + f3 && i1 <= j1) 
                        {
                            j1--;
                            f2 = textpaint.measureText(((CharSequence) (obj)).subSequence(i1, j1 + 1).toString());
                        }
                        if (j1 < 0)
                        {
                            j1 = 0;
                        }
                        obj = (new StringBuilder()).append(((CharSequence) (obj)).subSequence(0, j1)).append("...").toString();
                    }
                }
                setText(((CharSequence) (obj)));
                textpaint.setTextSize(f1);
                setLineSpacing(mSpacingAdd, mSpacingMult);
                if (mTextResizeListener != null)
                {
                    mTextResizeListener.onTextResize(this, f, f1);
                }
                mNeedsResize = false;
                return;
            }
            f1 = Math.max(f1 - 1.0F, mMinTextSize);
            k = getTextHeight(((CharSequence) (obj)), textpaint, i, f1);
        } while (true);
    }

    public void setAddEllipsis(boolean flag)
    {
        mAddEllipsis = flag;
    }

    public void setLineSpacing(float f, float f1)
    {
        super.setLineSpacing(f, f1);
        mSpacingMult = f1;
        mSpacingAdd = f;
    }

    public void setMaxTextSize(float f)
    {
        mMaxTextSize = f;
        requestLayout();
        invalidate();
    }

    public void setMinTextSize(float f)
    {
        mMinTextSize = f;
        requestLayout();
        invalidate();
    }

    public void setOnResizeListener(OnTextResizeListener ontextresizelistener)
    {
        mTextResizeListener = ontextresizelistener;
    }

    public void setTextSize(float f)
    {
        super.setTextSize(f);
        mTextSize = getTextSize();
    }

    public void setTextSize(int i, float f)
    {
        super.setTextSize(i, f);
        mTextSize = getTextSize();
    }

}
