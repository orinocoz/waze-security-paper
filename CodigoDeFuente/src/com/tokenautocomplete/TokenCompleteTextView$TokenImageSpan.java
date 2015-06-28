// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.text.Editable;
import android.view.View;

// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

protected class token extends token
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
        int ai1[] = new int[.values().length];
        try
        {
            ai1[.Delete.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[.None.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[.Select.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[.SelectDeselect.ordinal()] = 4;
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
        switch ($SWITCH_TABLE$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle()[TokenCompleteTextView.access$1(TokenCompleteTextView.this).ordinal()])
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
                TokenCompleteTextView.access$2(TokenCompleteTextView.this);
                view.setSelected(true);
                return;
            }
            if (TokenCompleteTextView.access$1(TokenCompleteTextView.this) == .SelectDeselect)
            {
                view.setSelected(false);
                invalidate();
                return;
            }
            // fall through

        case 2: // '\002'
            TokenCompleteTextView.access$3(TokenCompleteTextView.this, this);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public (View view, Object obj)
    {
        this$0 = TokenCompleteTextView.this;
        super(TokenCompleteTextView.this, view);
        token = obj;
    }
}
