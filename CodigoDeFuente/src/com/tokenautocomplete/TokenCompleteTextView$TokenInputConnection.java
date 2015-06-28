// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import java.io.PrintStream;

// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

private class this._cls0 extends InputConnectionWrapper
{

    final TokenCompleteTextView this$0;

    public boolean deleteSurroundingText(int i, int j)
    {
        System.out.println((new StringBuilder("before: ")).append(i).append(" after: ").append(j).toString());
        System.out.println((new StringBuilder("selection: ")).append(getSelectionStart()).append(" end: ").append(getSelectionEnd()).toString());
        if (getSelectionStart() <= TokenCompleteTextView.access$9(TokenCompleteTextView.this).length())
        {
            i = 0;
        }
        return TokenCompleteTextView.access$10(TokenCompleteTextView.this, false) || super.deleteSurroundingText(i, j);
    }

    public (InputConnection inputconnection, boolean flag)
    {
        this$0 = TokenCompleteTextView.this;
        super(inputconnection, flag);
    }
}
