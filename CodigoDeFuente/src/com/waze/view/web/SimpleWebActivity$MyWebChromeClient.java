// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.web;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

// Referenced classes of package com.waze.view.web:
//            SimpleWebActivity

final class this._cls0 extends WebChromeClient
{

    final SimpleWebActivity this$0;

    public boolean onJsConfirm(WebView webview, String s, String s1, final JsResult result)
    {
        (new android.app.lient(SimpleWebActivity.this))._mth0("")._mth0(s1).n(0x104000a, new android.content.DialogInterface.OnClickListener() {

            final SimpleWebActivity.MyWebChromeClient this$1;
            private final JsResult val$result;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                result.confirm();
            }

            
            {
                this$1 = SimpleWebActivity.MyWebChromeClient.this;
                result = jsresult;
                super();
            }
        }).n(0x1040000, new android.content.DialogInterface.OnClickListener() {

            final SimpleWebActivity.MyWebChromeClient this$1;
            private final JsResult val$result;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                result.cancel();
            }

            
            {
                this$1 = SimpleWebActivity.MyWebChromeClient.this;
                result = jsresult;
                super();
            }
        }).lient().show();
        return true;
    }

    _cls2.val.result()
    {
        this$0 = SimpleWebActivity.this;
        super();
    }
}
