// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.web;

import android.content.DialogInterface;
import android.webkit.JsResult;

// Referenced classes of package com.waze.view.web:
//            SimpleWebActivity

class val.result
    implements android.content._cls1
{

    final val.result this$1;
    private final JsResult val$result;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        val$result.confirm();
    }

    ()
    {
        this$1 = final_;
        val$result = JsResult.this;
        super();
    }
}
