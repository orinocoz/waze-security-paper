// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;


// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

class this._cls0
    implements Runnable
{

    final TokenCompleteTextView this$0;

    public void run()
    {
        handleFocus(isFocused());
    }

    ()
    {
        this$0 = TokenCompleteTextView.this;
        super();
    }
}
