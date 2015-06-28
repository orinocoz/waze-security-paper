// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.text.Editable;

// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

class val.object
    implements Runnable
{

    final TokenCompleteTextView this$0;
    private final Object val$object;

    public void run()
    {
        int i = 0;
        Editable editable = getText();
        if (editable != null)
        {
            kenImageSpan akenimagespan[] = (kenImageSpan[])editable.getSpans(0, editable.length(), com/tokenautocomplete/TokenCompleteTextView$TokenImageSpan);
            int j = akenimagespan.length;
            while (i < j) 
            {
                kenImageSpan kenimagespan = akenimagespan[i];
                if (kenimagespan.getToken().equals(val$object))
                {
                    TokenCompleteTextView.access$3(TokenCompleteTextView.this, kenimagespan);
                }
                i++;
            }
        }
    }

    kenImageSpan()
    {
        this$0 = final_tokencompletetextview;
        val$object = Object.this;
        super();
    }
}
