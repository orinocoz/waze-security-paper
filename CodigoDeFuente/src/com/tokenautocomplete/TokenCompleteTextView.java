// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Layout;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.QwertyKeyListener;
import android.text.style.ReplacementSpan;
import android.text.style.TextAppearanceSpan;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.Filter;
import android.widget.ListAdapter;
import android.widget.MultiAutoCompleteTextView;
import android.widget.TextView;
import java.io.PrintStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class TokenCompleteTextView extends MultiAutoCompleteTextView
    implements android.widget.TextView.OnEditorActionListener
{
    private class CountSpan extends ViewSpan
    {

        private int count;
        public String text;
        final TokenCompleteTextView this$0;

        public int getCount()
        {
            return count;
        }

        public void setCount(int i)
        {
            count = i;
            text = (new StringBuilder("+")).append(count).toString();
            ((TextView)view).setText(text);
        }

        public CountSpan(int i, Context context, int j, int k, int l)
        {
            this$0 = TokenCompleteTextView.this;
            super(new TextView(context));
            text = "";
            TextView textview = (TextView)view;
            textview.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
            textview.setTextColor(j);
            textview.setTextSize(0, k);
            textview.setMinimumWidth(l);
            setCount(i);
        }
    }

    public static class HintSpan extends TextAppearanceSpan
    {

        public HintSpan(String s, int i, int j, ColorStateList colorstatelist, ColorStateList colorstatelist1)
        {
            super(s, i, j, colorstatelist, colorstatelist1);
        }
    }

    private static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState createFromParcel(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public SavedState[] newArray(int i)
            {
                return new SavedState[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        boolean allowDuplicates;
        ArrayList baseObjects;
        String prefix;
        TokenClickStyle tokenClickStyle;
        TokenDeleteStyle tokenDeleteStyle;

        public String toString()
        {
            return (new StringBuilder(String.valueOf((new StringBuilder("TokenCompleteTextView.SavedState{")).append(Integer.toHexString(System.identityHashCode(this))).append(" tokens=").append(baseObjects).toString()))).append("}").toString();
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeString(prefix);
            int j;
            if (allowDuplicates)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            parcel.writeInt(j);
            parcel.writeInt(tokenClickStyle.ordinal());
            parcel.writeInt(tokenDeleteStyle.ordinal());
            parcel.writeSerializable(baseObjects);
        }


        SavedState(Parcel parcel)
        {
            super(parcel);
            prefix = parcel.readString();
            boolean flag;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            allowDuplicates = flag;
            tokenClickStyle = TokenClickStyle.values()[parcel.readInt()];
            tokenDeleteStyle = TokenDeleteStyle.values()[parcel.readInt()];
            baseObjects = (ArrayList)parcel.readSerializable();
        }

        SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

    public static final class TokenClickStyle extends Enum
    {

        public static final TokenClickStyle Delete;
        private static final TokenClickStyle ENUM$VALUES[];
        public static final TokenClickStyle None;
        public static final TokenClickStyle Select;
        public static final TokenClickStyle SelectDeselect;
        private boolean mIsSelectable;

        public static TokenClickStyle valueOf(String s)
        {
            return (TokenClickStyle)Enum.valueOf(com/tokenautocomplete/TokenCompleteTextView$TokenClickStyle, s);
        }

        public static TokenClickStyle[] values()
        {
            TokenClickStyle atokenclickstyle[] = ENUM$VALUES;
            int i = atokenclickstyle.length;
            TokenClickStyle atokenclickstyle1[] = new TokenClickStyle[i];
            System.arraycopy(atokenclickstyle, 0, atokenclickstyle1, 0, i);
            return atokenclickstyle1;
        }

        public boolean isSelectable()
        {
            return mIsSelectable;
        }

        static 
        {
            None = new TokenClickStyle("None", 0, false);
            Delete = new TokenClickStyle("Delete", 1, false);
            Select = new TokenClickStyle("Select", 2, true);
            SelectDeselect = new TokenClickStyle("SelectDeselect", 3, true);
            TokenClickStyle atokenclickstyle[] = new TokenClickStyle[4];
            atokenclickstyle[0] = None;
            atokenclickstyle[1] = Delete;
            atokenclickstyle[2] = Select;
            atokenclickstyle[3] = SelectDeselect;
            ENUM$VALUES = atokenclickstyle;
        }

        private TokenClickStyle(String s, int i, boolean flag)
        {
            super(s, i);
            mIsSelectable = false;
            mIsSelectable = flag;
        }
    }

    public static final class TokenDeleteStyle extends Enum
    {

        public static final TokenDeleteStyle Clear;
        private static final TokenDeleteStyle ENUM$VALUES[];
        public static final TokenDeleteStyle PartialCompletion;
        public static final TokenDeleteStyle ToString;
        public static final TokenDeleteStyle _Parent;

        public static TokenDeleteStyle valueOf(String s)
        {
            return (TokenDeleteStyle)Enum.valueOf(com/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle, s);
        }

        public static TokenDeleteStyle[] values()
        {
            TokenDeleteStyle atokendeletestyle[] = ENUM$VALUES;
            int i = atokendeletestyle.length;
            TokenDeleteStyle atokendeletestyle1[] = new TokenDeleteStyle[i];
            System.arraycopy(atokendeletestyle, 0, atokendeletestyle1, 0, i);
            return atokendeletestyle1;
        }

        static 
        {
            _Parent = new TokenDeleteStyle("_Parent", 0);
            Clear = new TokenDeleteStyle("Clear", 1);
            PartialCompletion = new TokenDeleteStyle("PartialCompletion", 2);
            ToString = new TokenDeleteStyle("ToString", 3);
            TokenDeleteStyle atokendeletestyle[] = new TokenDeleteStyle[4];
            atokendeletestyle[0] = _Parent;
            atokendeletestyle[1] = Clear;
            atokendeletestyle[2] = PartialCompletion;
            atokendeletestyle[3] = ToString;
            ENUM$VALUES = atokendeletestyle;
        }

        private TokenDeleteStyle(String s, int i)
        {
            super(s, i);
        }
    }

    protected class TokenImageSpan extends ViewSpan
    {

        private static int $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle[];
        final TokenCompleteTextView this$0;
        private Object token;

        static int[] $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle()
        {
            int ai[] = $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle;
            if (ai != null)
            {
                return ai;
            }
            int ai1[] = new int[TokenClickStyle.values().length];
            try
            {
                ai1[TokenClickStyle.Delete.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                ai1[TokenClickStyle.None.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                ai1[TokenClickStyle.Select.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                ai1[TokenClickStyle.SelectDeselect.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle = ai1;
            return ai1;
        }

        public Object getToken()
        {
            return token;
        }

        public void onClick()
        {
            Editable editable = getText();
            if (editable != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            switch ($SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle()[tokenClickStyle.ordinal()])
            {
            default:
                if (getSelectionStart() != 1 + editable.getSpanEnd(this))
                {
                    setSelection(1 + editable.getSpanEnd(this));
                    return;
                }
                break;

            case 3: // '\003'
            case 4: // '\004'
                if (!view.isSelected())
                {
                    clearSelections();
                    view.setSelected(true);
                    return;
                }
                if (tokenClickStyle == TokenClickStyle.SelectDeselect)
                {
                    view.setSelected(false);
                    invalidate();
                    return;
                }
                // fall through

            case 2: // '\002'
                removeSpan(this);
                return;
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

        public TokenImageSpan(View view, Object obj)
        {
            this$0 = TokenCompleteTextView.this;
            super(view);
            token = obj;
        }
    }

    private class TokenInputConnection extends InputConnectionWrapper
    {

        final TokenCompleteTextView this$0;

        public boolean deleteSurroundingText(int i, int j)
        {
            System.out.println((new StringBuilder("before: ")).append(i).append(" after: ").append(j).toString());
            System.out.println((new StringBuilder("selection: ")).append(getSelectionStart()).append(" end: ").append(getSelectionEnd()).toString());
            if (getSelectionStart() <= prefix.length())
            {
                i = 0;
            }
            return deleteSelectedObject(false) || super.deleteSurroundingText(i, j);
        }

        public TokenInputConnection(InputConnection inputconnection, boolean flag)
        {
            this$0 = TokenCompleteTextView.this;
            super(inputconnection, flag);
        }
    }

    public static interface TokenListener
    {

        public abstract void onTokenAdded(Object obj);

        public abstract void onTokenRemoved(Object obj);
    }

    private class TokenSpanWatcher
        implements SpanWatcher
    {

        final TokenCompleteTextView this$0;

        private void updateCountSpan(int i)
        {
            final Editable text = getText();
            CountSpan acountspan[];
            if (text != null && lastLayout != null)
            {
                if ((acountspan = (CountSpan[])text.getSpans(0, text.length(), com/tokenautocomplete/TokenCompleteTextView$CountSpan)).length == 1)
                {
                    final CountSpan span = acountspan[0];
                    post(i. new Runnable() {

                        final TokenSpanWatcher this$1;
                        private final int val$change;
                        private final CountSpan val$span;
                        private final Editable val$text;

                        public void run()
                        {
                            int i = text.getSpanStart(span);
                            int j = text.getSpanEnd(span);
                            span.setCount(span.getCount() + change);
                            if (span.getCount() > 0)
                            {
                                text.replace(i, j, span.text);
                                return;
                            } else
                            {
                                text.delete(i, j);
                                text.removeSpan(span);
                                return;
                            }
                        }

            
            {
                this$1 = final_tokenspanwatcher;
                text = editable;
                span = countspan;
                change = I.this;
                super();
            }
                    });
                    return;
                }
            }
        }

        public void onSpanAdded(Spannable spannable, Object obj, int i, int j)
        {
            if ((obj instanceof TokenImageSpan) && !savingState)
            {
                TokenImageSpan tokenimagespan = (TokenImageSpan)obj;
                objects.add(tokenimagespan.getToken());
                updateCountSpan(1);
                if (listener != null)
                {
                    listener.onTokenAdded(tokenimagespan.getToken());
                }
            }
        }

        public void onSpanChanged(Spannable spannable, Object obj, int i, int j, int k, int l)
        {
        }

        public void onSpanRemoved(Spannable spannable, Object obj, int i, int j)
        {
            if ((obj instanceof TokenImageSpan) && !savingState)
            {
                TokenImageSpan tokenimagespan = (TokenImageSpan)obj;
                if (objects.contains(tokenimagespan.getToken()))
                {
                    objects.remove(tokenimagespan.getToken());
                    updateCountSpan(-1);
                }
                if (listener != null)
                {
                    listener.onTokenRemoved(tokenimagespan.getToken());
                }
            }
        }

        private TokenSpanWatcher()
        {
            this$0 = TokenCompleteTextView.this;
            super();
        }

        TokenSpanWatcher(TokenSpanWatcher tokenspanwatcher)
        {
            this();
        }
    }

    private class TokenTextWatcher
        implements TextWatcher
    {

        final TokenCompleteTextView this$0;

        public void afterTextChanged(Editable editable)
        {
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
            System.out.println((new StringBuilder("changing text: ")).append(charsequence).toString());
            Editable editable = getText();
            if (editable != null)
            {
                clearSelections();
                updateHint();
                TokenImageSpan atokenimagespan[] = (TokenImageSpan[])editable.getSpans(i - j, k + (i - j), com/tokenautocomplete/TokenCompleteTextView$TokenImageSpan);
                int l = atokenimagespan.length;
                int i1 = 0;
                while (i1 < l) 
                {
                    TokenImageSpan tokenimagespan = atokenimagespan[i1];
                    int j1 = i + k;
                    if (editable.getSpanStart(tokenimagespan) < j1 && j1 <= editable.getSpanEnd(tokenimagespan))
                    {
                        int k1 = editable.getSpanStart(tokenimagespan);
                        int l1 = editable.getSpanEnd(tokenimagespan);
                        removeToken(tokenimagespan, editable);
                        int i2 = l1 - 1;
                        if (i2 >= 0 && editable.charAt(i2) == ',')
                        {
                            editable.delete(i2, i2 + 1);
                        }
                        if (k1 > 0 && editable.charAt(k1) == ',')
                        {
                            editable.delete(k1, k1 + 1);
                        }
                    }
                    i1++;
                }
            }
        }

        protected void removeToken(TokenImageSpan tokenimagespan, Editable editable)
        {
            editable.removeSpan(tokenimagespan);
        }

        private TokenTextWatcher()
        {
            this$0 = TokenCompleteTextView.this;
            super();
        }

        TokenTextWatcher(TokenTextWatcher tokentextwatcher)
        {
            this();
        }
    }

    private class ViewSpan extends ReplacementSpan
    {

        final TokenCompleteTextView this$0;
        protected View view;

        private void prepView()
        {
            int i = android.view.View.MeasureSpec.makeMeasureSpec((int)maxTextWidth(), 0x80000000);
            int j = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            view.measure(i, j);
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        }

        public void draw(Canvas canvas, CharSequence charsequence, int i, int j, float f, int k, int l, 
                int i1, Paint paint)
        {
            prepView();
            canvas.save();
            int j1 = (i1 - k - view.getBottom()) / 2;
            canvas.translate(f, i1 - view.getBottom() - j1);
            view.draw(canvas);
            canvas.restore();
        }

        public int getSize(Paint paint, CharSequence charsequence, int i, int j, android.graphics.Paint.FontMetricsInt fontmetricsint)
        {
            prepView();
            if (fontmetricsint != null)
            {
                int k = view.getMeasuredHeight() - (fontmetricsint.descent - fontmetricsint.ascent);
                if (k > 0)
                {
                    int l = k / 2;
                    fontmetricsint.descent = fontmetricsint.descent + (k - l);
                    fontmetricsint.ascent = fontmetricsint.ascent - l;
                    fontmetricsint.bottom = fontmetricsint.bottom + (k - l);
                    fontmetricsint.top = fontmetricsint.top - k / 2;
                }
            }
            return view.getRight();
        }

        public ViewSpan(View view1)
        {
            this$0 = TokenCompleteTextView.this;
            super();
            view = view1;
        }
    }


    private static int $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle[];
    static final boolean $assertionsDisabled;
    private boolean allowCollapse;
    private boolean allowDuplicates;
    private TokenDeleteStyle deletionStyle;
    private boolean hintVisible;
    boolean inInvalidate;
    private boolean initialized;
    private Layout lastLayout;
    private TokenListener listener;
    private ArrayList objects;
    private String prefix;
    private boolean savingState;
    private Object selectedObject;
    private boolean shouldFocusNext;
    private TokenSpanWatcher spanWatcher;
    private TokenClickStyle tokenClickStyle;
    private android.widget.MultiAutoCompleteTextView.Tokenizer tokenizer;

    static int[] $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle()
    {
        int ai[] = $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[TokenDeleteStyle.values().length];
        try
        {
            ai1[TokenDeleteStyle.Clear.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[TokenDeleteStyle.PartialCompletion.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[TokenDeleteStyle.ToString.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[TokenDeleteStyle._Parent.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        $SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle = ai1;
        return ai1;
    }

    public TokenCompleteTextView(Context context)
    {
        super(context);
        deletionStyle = TokenDeleteStyle._Parent;
        tokenClickStyle = TokenClickStyle.None;
        prefix = "";
        hintVisible = false;
        lastLayout = null;
        allowDuplicates = true;
        initialized = false;
        savingState = false;
        shouldFocusNext = false;
        allowCollapse = true;
        inInvalidate = false;
        init();
    }

    public TokenCompleteTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        deletionStyle = TokenDeleteStyle._Parent;
        tokenClickStyle = TokenClickStyle.None;
        prefix = "";
        hintVisible = false;
        lastLayout = null;
        allowDuplicates = true;
        initialized = false;
        savingState = false;
        shouldFocusNext = false;
        allowCollapse = true;
        inInvalidate = false;
        init();
    }

    public TokenCompleteTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        deletionStyle = TokenDeleteStyle._Parent;
        tokenClickStyle = TokenClickStyle.None;
        prefix = "";
        hintVisible = false;
        lastLayout = null;
        allowDuplicates = true;
        initialized = false;
        savingState = false;
        shouldFocusNext = false;
        allowCollapse = true;
        inInvalidate = false;
        init();
    }

    private void api16Invalidate()
    {
        if (initialized && !inInvalidate)
        {
            inInvalidate = true;
            setShadowLayer(getShadowRadius(), getShadowDx(), getShadowDy(), getShadowColor());
            inInvalidate = false;
        }
    }

    private SpannableStringBuilder buildSpannableForText(CharSequence charsequence)
    {
        return new SpannableStringBuilder((new StringBuilder(",")).append(tokenizer.terminateToken(charsequence)).toString());
    }

    private void clearSelections()
    {
        Editable editable;
        if (tokenClickStyle != null && tokenClickStyle.isSelectable())
        {
            if ((editable = getText()) != null)
            {
                TokenImageSpan atokenimagespan[] = (TokenImageSpan[])editable.getSpans(0, editable.length(), com/tokenautocomplete/TokenCompleteTextView$TokenImageSpan);
                int i = atokenimagespan.length;
                int j = 0;
                do
                {
                    if (j >= i)
                    {
                        invalidate();
                        return;
                    }
                    atokenimagespan[j].view.setSelected(false);
                    j++;
                } while (true);
            }
        }
    }

    private boolean deleteSelectedObject(boolean flag)
    {
        int i = 0;
        if (tokenClickStyle == null || !tokenClickStyle.isSelectable()) goto _L2; else goto _L1
_L1:
        TokenImageSpan atokenimagespan[];
        int j;
        Editable editable = getText();
        if (editable == null)
        {
            return flag;
        }
        atokenimagespan = (TokenImageSpan[])editable.getSpans(0, editable.length(), com/tokenautocomplete/TokenCompleteTextView$TokenImageSpan);
        j = atokenimagespan.length;
_L6:
        if (i < j) goto _L3; else goto _L2
_L2:
        return flag;
_L3:
        TokenImageSpan tokenimagespan = atokenimagespan[i];
        if (!tokenimagespan.view.isSelected())
        {
            break; /* Loop/switch isn't completed */
        }
        removeSpan(tokenimagespan);
        flag = true;
        if (true) goto _L2; else goto _L4
_L4:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void handleDone()
    {
        if (enoughToFilter())
        {
            performCompletion();
        } else
        {
            View view = focusSearch(130);
            if (view != null)
            {
                view.requestFocus();
                return;
            }
        }
    }

    private void init()
    {
        setTokenizer(new android.widget.MultiAutoCompleteTextView.CommaTokenizer());
        objects = new ArrayList();
        Editable editable = getText();
        if (!$assertionsDisabled && editable == null)
        {
            throw new AssertionError();
        } else
        {
            spanWatcher = new TokenSpanWatcher(null);
            resetListeners();
            setTextIsSelectable(false);
            setLongClickable(false);
            setInputType(0x90000);
            setOnEditorActionListener(this);
            InputFilter ainputfilter[] = new InputFilter[1];
            ainputfilter[0] = new InputFilter() {

                final TokenCompleteTextView this$0;

                public CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
                {
                    if (charsequence.length() == 1 && charsequence.charAt(0) == ',')
                    {
                        performCompletion();
                        return "";
                    }
                    if (k < prefix.length() && l == prefix.length())
                    {
                        return prefix.substring(k, l);
                    } else
                    {
                        return null;
                    }
                }

            
            {
                this$0 = TokenCompleteTextView.this;
                super();
            }
            };
            setFilters(ainputfilter);
            setDeletionStyle(TokenDeleteStyle.Clear);
            initialized = true;
            return;
        }
    }

    private float maxTextWidth()
    {
        return (float)(getWidth() - getPaddingLeft() - getPaddingRight());
    }

    private void removeSpan(TokenImageSpan tokenimagespan)
    {
        Editable editable = getText();
        if (editable == null)
        {
            return;
        }
        if (((TokenSpanWatcher[])editable.getSpans(0, editable.length(), com/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher)).length == 0)
        {
            spanWatcher.onSpanRemoved(editable, tokenimagespan, editable.getSpanStart(tokenimagespan), editable.getSpanEnd(tokenimagespan));
        }
        editable.delete(editable.getSpanStart(tokenimagespan), 1 + editable.getSpanEnd(tokenimagespan));
    }

    private void resetListeners()
    {
        Editable editable = getText();
        if (editable != null)
        {
            editable.setSpan(spanWatcher, 0, editable.length(), 18);
            addTextChangedListener(new TokenTextWatcher(null));
        }
    }

    private void updateHint()
    {
        Editable editable;
        CharSequence charsequence;
        editable = getText();
        charsequence = getHint();
        break MISSING_BLOCK_LABEL_10;
        HintSpan hintspan;
label0:
        while (hintspan == null) 
        {
            do
            {
                do
                {
                    return;
                } while (editable == null || charsequence == null || prefix.length() <= 0);
                HintSpan ahintspan[] = (HintSpan[])editable.getSpans(0, editable.length(), com/tokenautocomplete/TokenCompleteTextView$HintSpan);
                int i = prefix.length();
                int j = ahintspan.length;
                hintspan = null;
                if (j > 0)
                {
                    hintspan = ahintspan[0];
                    i += editable.getSpanEnd(hintspan) - editable.getSpanStart(hintspan);
                }
                if (editable.length() != i)
                {
                    continue label0;
                }
                hintVisible = true;
            } while (hintspan != null);
            Typeface typeface = getTypeface();
            int i1 = 0;
            if (typeface != null)
            {
                i1 = typeface.getStyle();
            }
            ColorStateList colorstatelist = getHintTextColors();
            HintSpan hintspan1 = new HintSpan(null, i1, (int)getTextSize(), colorstatelist, colorstatelist);
            editable.insert(prefix.length(), charsequence);
            editable.setSpan(hintspan1, prefix.length(), prefix.length() + getHint().length(), 33);
            setSelection(prefix.length());
            return;
        }
        int k = editable.getSpanStart(hintspan);
        int l = editable.getSpanEnd(hintspan);
        editable.removeSpan(hintspan);
        editable.replace(k, l, "");
        hintVisible = false;
        return;
    }

    public void addObject(Object obj)
    {
        addObject(obj, "");
    }

    public void addObject(final Object object, final CharSequence sourceText)
    {
        post(new Runnable() {

            final TokenCompleteTextView this$0;
            private final Object val$object;
            private final CharSequence val$sourceText;

            public void run()
            {
                if (object != null && (allowDuplicates || !objects.contains(object)))
                {
                    SpannableStringBuilder spannablestringbuilder = buildSpannableForText(sourceText);
                    TokenImageSpan tokenimagespan = buildSpanForObject(object);
                    Editable editable = getText();
                    if (editable != null)
                    {
                        int i = editable.length();
                        if (hintVisible)
                        {
                            i = prefix.length();
                            editable.insert(i, spannablestringbuilder);
                        } else
                        {
                            editable.append(spannablestringbuilder);
                        }
                        editable.setSpan(tokenimagespan, i, -1 + (i + spannablestringbuilder.length()), 33);
                        if (!objects.contains(object))
                        {
                            spanWatcher.onSpanAdded(editable, tokenimagespan, i, -1 + (i + spannablestringbuilder.length()));
                        }
                        setSelection(editable.length());
                        return;
                    }
                }
            }

            
            {
                this$0 = TokenCompleteTextView.this;
                object = obj;
                sourceText = charsequence;
                super();
            }
        });
    }

    public void allowCollapse(boolean flag)
    {
        allowCollapse = flag;
    }

    public void allowDuplicates(boolean flag)
    {
        allowDuplicates = flag;
    }

    protected TokenImageSpan buildSpanForObject(Object obj)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            return new TokenImageSpan(getViewForObject(obj), obj);
        }
    }

    protected CharSequence convertSelectionToString(Object obj)
    {
        selectedObject = obj;
        switch ($SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle()[deletionStyle.ordinal()])
        {
        default:
            return super.convertSelectionToString(obj);

        case 2: // '\002'
            return "";

        case 3: // '\003'
            return currentCompletionText();

        case 4: // '\004'
            return obj.toString();
        }
    }

    protected ArrayList convertSerializableArrayToObjectArray(ArrayList arraylist)
    {
        return arraylist;
    }

    protected String currentCompletionText()
    {
        if (hintVisible)
        {
            return "";
        }
        Editable editable = getText();
        int i = getSelectionEnd();
        int j = tokenizer.findTokenStart(editable, i);
        if (j < prefix.length())
        {
            j = prefix.length();
        }
        return TextUtils.substring(editable, j, i);
    }

    protected abstract Object defaultObject(String s);

    public boolean enoughToFilter()
    {
        Editable editable = getText();
        int i = getSelectionEnd();
        if (i >= 0 && tokenizer != null)
        {
            int j = tokenizer.findTokenStart(editable, i);
            if (j < prefix.length())
            {
                j = prefix.length();
            }
            if (i - j >= getThreshold())
            {
                return true;
            }
        }
        return false;
    }

    public List getObjects()
    {
        return objects;
    }

    protected ArrayList getSerializableObjects()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = getObjects().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                if (arraylist.size() != objects.size())
                {
                    System.out.println("You should make your objects Serializable or override");
                    System.out.println("getSerializableObjects and convertSerializableArrayToObjectArray");
                }
                return arraylist;
            }
            Object obj = iterator.next();
            if (obj instanceof Serializable)
            {
                arraylist.add((Serializable)obj);
            } else
            {
                System.out.println((new StringBuilder("Unable to save '")).append(obj).append("'").toString());
            }
        } while (true);
    }

    protected abstract View getViewForObject(Object obj);

    protected void handleFocus(boolean flag)
    {
        if (flag || !allowCollapse) goto _L2; else goto _L1
_L1:
        setSingleLine(true);
        Editable editable1 = getText();
        if (editable1 != null && lastLayout != null)
        {
            int k = lastLayout.getLineVisibleEnd(0);
            TokenImageSpan atokenimagespan[] = (TokenImageSpan[])editable1.getSpans(0, k, com/tokenautocomplete/TokenCompleteTextView$TokenImageSpan);
            int l = objects.size() - atokenimagespan.length;
            if (l > 0)
            {
                int i1 = k + 1;
                CountSpan countspan1 = new CountSpan(l, getContext(), getCurrentTextColor(), (int)getTextSize(), (int)maxTextWidth());
                editable1.insert(i1, countspan1.text);
                if (Layout.getDesiredWidth(editable1, 0, i1 + countspan1.text.length(), lastLayout.getPaint()) > maxTextWidth())
                {
                    editable1.delete(i1, i1 + countspan1.text.length());
                    if (atokenimagespan.length > 0)
                    {
                        i1 = editable1.getSpanStart(atokenimagespan[-1 + atokenimagespan.length]);
                        countspan1.setCount(l + 1);
                    } else
                    {
                        i1 = prefix.length();
                    }
                    editable1.insert(i1, countspan1.text);
                }
                editable1.setSpan(countspan1, i1, i1 + countspan1.text.length(), 33);
            }
        }
_L6:
        return;
_L2:
        Editable editable;
        setSingleLine(false);
        editable = getText();
        if (editable == null) goto _L4; else goto _L3
_L3:
        CountSpan acountspan[];
        int i;
        int j;
        acountspan = (CountSpan[])editable.getSpans(0, editable.length(), com/tokenautocomplete/TokenCompleteTextView$CountSpan);
        i = acountspan.length;
        j = 0;
_L7:
label0:
        {
            if (j < i)
            {
                break label0;
            }
            CountSpan countspan;
            if (hintVisible)
            {
                setSelection(prefix.length());
            } else
            {
                setSelection(editable.length());
            }
            if (((TokenSpanWatcher[])getText().getSpans(0, getText().length(), com/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher)).length == 0)
            {
                editable.setSpan(spanWatcher, 0, editable.length(), 18);
                return;
            }
        }
_L4:
        if (true) goto _L6; else goto _L5
_L5:
        countspan = acountspan[j];
        editable.delete(editable.getSpanStart(countspan), editable.getSpanEnd(countspan));
        editable.removeSpan(countspan);
        j++;
          goto _L7
    }

    public void invalidate()
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            api16Invalidate();
        }
        super.invalidate();
    }

    public InputConnection onCreateInputConnection(EditorInfo editorinfo)
    {
        TokenInputConnection tokeninputconnection = new TokenInputConnection(super.onCreateInputConnection(editorinfo), true);
        int i = 0xff & editorinfo.imeOptions;
        if ((i & 6) != 0)
        {
            editorinfo.imeOptions = i ^ editorinfo.imeOptions;
            editorinfo.imeOptions = 6 | editorinfo.imeOptions;
        }
        if ((0x40000000 & editorinfo.imeOptions) != 0)
        {
            editorinfo.imeOptions = 0xbfffffff & editorinfo.imeOptions;
        }
        return tokeninputconnection;
    }

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 6)
        {
            handleDone();
            return true;
        } else
        {
            return false;
        }
    }

    public void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
        handleFocus(flag);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag = false;
        i;
        JVM INSTR lookupswitch 4: default 44
    //                   23: 59
    //                   61: 59
    //                   66: 59
    //                   67: 82;
           goto _L1 _L2 _L2 _L2 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_82;
_L4:
        boolean flag1;
        return flag || super.onKeyDown(i, keyevent);
_L2:
        flag1 = keyevent.hasNoModifiers();
        flag = false;
        if (flag1)
        {
            shouldFocusNext = true;
            flag = true;
        }
          goto _L4
        flag = deleteSelectedObject(false);
          goto _L4
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        boolean flag = super.onKeyUp(i, keyevent);
        if (shouldFocusNext)
        {
            shouldFocusNext = false;
            handleDone();
        }
        return flag;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        lastLayout = getLayout();
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!(parcelable instanceof SavedState))
        {
            super.onRestoreInstanceState(parcelable);
        } else
        {
label0:
            {
                SavedState savedstate = (SavedState)parcelable;
                super.onRestoreInstanceState(savedstate.getSuperState());
                setText(savedstate.prefix);
                prefix = savedstate.prefix;
                updateHint();
                allowDuplicates = savedstate.allowDuplicates;
                tokenClickStyle = savedstate.tokenClickStyle;
                deletionStyle = savedstate.tokenDeleteStyle;
                resetListeners();
                for (Iterator iterator = convertSerializableArrayToObjectArray(savedstate.baseObjects).iterator(); iterator.hasNext(); addObject(iterator.next()))
                {
                    break label0;
                }

                if (!isFocused())
                {
                    post(new Runnable() {

                        final TokenCompleteTextView this$0;

                        public void run()
                        {
                            handleFocus(isFocused());
                        }

            
            {
                this$0 = TokenCompleteTextView.this;
                super();
            }
                    });
                    return;
                }
            }
        }
    }

    public Parcelable onSaveInstanceState()
    {
        ArrayList arraylist = getSerializableObjects();
        savingState = true;
        Parcelable parcelable = super.onSaveInstanceState();
        savingState = false;
        SavedState savedstate = new SavedState(parcelable);
        savedstate.prefix = prefix;
        savedstate.allowDuplicates = allowDuplicates;
        savedstate.tokenClickStyle = tokenClickStyle;
        savedstate.tokenDeleteStyle = deletionStyle;
        savedstate.baseObjects = arraylist;
        return savedstate;
    }

    protected void onSelectionChanged(int i, int j)
    {
        int k;
        Editable editable;
        if (hintVisible)
        {
            i = 0;
        }
        k = i;
        if (tokenClickStyle != null && tokenClickStyle.isSelectable() && getText() != null)
        {
            clearSelections();
        }
        if (prefix != null && (i < prefix.length() || k < prefix.length()))
        {
            setSelection(prefix.length());
            return;
        }
        editable = getText();
        if (editable == null) goto _L2; else goto _L1
_L1:
        TokenImageSpan atokenimagespan[];
        int l;
        int i1;
        atokenimagespan = (TokenImageSpan[])editable.getSpans(i, k, com/tokenautocomplete/TokenCompleteTextView$TokenImageSpan);
        l = atokenimagespan.length;
        i1 = 0;
_L5:
        if (i1 < l) goto _L3; else goto _L2
_L2:
        super.onSelectionChanged(i, k);
        return;
_L3:
        TokenImageSpan tokenimagespan = atokenimagespan[i1];
        int j1 = editable.getSpanEnd(tokenimagespan);
        if (i <= j1 && editable.getSpanStart(tokenimagespan) < i)
        {
            if (j1 == editable.length())
            {
                setSelection(j1);
                return;
            } else
            {
                setSelection(j1 + 1);
                return;
            }
        }
        i1++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i = motionevent.getActionMasked();
        Editable editable = getText();
        TokenClickStyle tokenclickstyle = tokenClickStyle;
        TokenClickStyle tokenclickstyle1 = TokenClickStyle.None;
        boolean flag = false;
        if (tokenclickstyle == tokenclickstyle1)
        {
            flag = super.onTouchEvent(motionevent);
        }
        if (isFocused() && editable != null && lastLayout != null && i == 1)
        {
            int j = getOffsetForPosition(motionevent.getX(), motionevent.getY());
            if (j != -1)
            {
                TokenImageSpan atokenimagespan[] = (TokenImageSpan[])editable.getSpans(j, j, com/tokenautocomplete/TokenCompleteTextView$TokenImageSpan);
                if (atokenimagespan.length > 0)
                {
                    atokenimagespan[0].onClick();
                    flag = true;
                }
            }
        }
        if (!flag && tokenClickStyle != TokenClickStyle.None)
        {
            flag = super.onTouchEvent(motionevent);
        }
        return flag;
    }

    public void performCompletion()
    {
        if (getListSelection() == -1)
        {
            Object obj;
            if (getAdapter().getCount() > 0)
            {
                obj = getAdapter().getItem(0);
            } else
            {
                obj = defaultObject(currentCompletionText());
            }
            replaceText(convertSelectionToString(obj));
            return;
        } else
        {
            super.performCompletion();
            return;
        }
    }

    protected void performFiltering(CharSequence charsequence, int i, int j, int k)
    {
        if (i < prefix.length())
        {
            i = prefix.length();
        }
        Filter filter = getFilter();
        if (filter != null)
        {
            filter.filter(charsequence.subSequence(i, j), this);
        }
    }

    public void removeObject(final Object object)
    {
        post(new Runnable() {

            final TokenCompleteTextView this$0;
            private final Object val$object;

            public void run()
            {
                int i = 0;
                Editable editable = getText();
                if (editable != null)
                {
                    TokenImageSpan atokenimagespan[] = (TokenImageSpan[])editable.getSpans(0, editable.length(), com/tokenautocomplete/TokenCompleteTextView$TokenImageSpan);
                    int j = atokenimagespan.length;
                    while (i < j) 
                    {
                        TokenImageSpan tokenimagespan = atokenimagespan[i];
                        if (tokenimagespan.getToken().equals(object))
                        {
                            removeSpan(tokenimagespan);
                        }
                        i++;
                    }
                }
            }

            
            {
                this$0 = TokenCompleteTextView.this;
                object = obj;
                super();
            }
        });
    }

    protected void replaceText(CharSequence charsequence)
    {
        SpannableStringBuilder spannablestringbuilder;
        TokenImageSpan tokenimagespan;
        Editable editable;
        int i;
        int j;
        String s;
label0:
        {
            clearComposingText();
            spannablestringbuilder = buildSpannableForText(charsequence);
            tokenimagespan = buildSpanForObject(selectedObject);
            editable = getText();
            i = getSelectionEnd();
            j = tokenizer.findTokenStart(editable, i);
            if (j < prefix.length())
            {
                j = prefix.length();
            }
            s = TextUtils.substring(editable, j, i);
            if (editable != null)
            {
                if (tokenimagespan != null)
                {
                    break label0;
                }
                editable.replace(j, i, " ");
            }
            return;
        }
        if (!allowDuplicates && objects.contains(tokenimagespan.getToken()))
        {
            editable.replace(j, i, " ");
            return;
        } else
        {
            QwertyKeyListener.markAsReplaced(editable, j, i, s);
            editable.replace(j, i, spannablestringbuilder);
            editable.setSpan(tokenimagespan, j, -1 + (j + spannablestringbuilder.length()), 33);
            return;
        }
    }

    public void setDeletionStyle(TokenDeleteStyle tokendeletestyle)
    {
        deletionStyle = tokendeletestyle;
    }

    public void setPrefix(String s)
    {
        prefix = "";
        Editable editable = getText();
        if (editable != null)
        {
            editable.insert(0, s);
        }
        prefix = s;
        updateHint();
    }

    public void setTokenClickStyle(TokenClickStyle tokenclickstyle)
    {
        tokenClickStyle = tokenclickstyle;
    }

    public void setTokenListener(TokenListener tokenlistener)
    {
        listener = tokenlistener;
    }

    public void setTokenizer(android.widget.MultiAutoCompleteTextView.Tokenizer tokenizer1)
    {
        super.setTokenizer(tokenizer1);
        tokenizer = tokenizer1;
    }

    static 
    {
        boolean flag;
        if (!com/tokenautocomplete/TokenCompleteTextView.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }















}
