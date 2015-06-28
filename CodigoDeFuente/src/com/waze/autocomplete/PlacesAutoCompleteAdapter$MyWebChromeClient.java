// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.autocomplete;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.waze.AppService;

// Referenced classes of package com.waze.autocomplete:
//            PlacesAutoCompleteAdapter

final class this._cls0 extends WebChromeClient
{

    final PlacesAutoCompleteAdapter this$0;

    public boolean onJsConfirm(WebView webview, String s, String s1, final JsResult result)
    {
        (new android.app.omeClient(AppService.getActiveActivity())).omeClient("").omeClient(s1).omeClient(0x104000a, new android.content.DialogInterface.OnClickListener() {

            final PlacesAutoCompleteAdapter.MyWebChromeClient this$1;
            private final JsResult val$result;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                result.confirm();
            }

            
            {
                this$1 = PlacesAutoCompleteAdapter.MyWebChromeClient.this;
                result = jsresult;
                super();
            }
        }).omeClient(0x1040000, new android.content.DialogInterface.OnClickListener() {

            final PlacesAutoCompleteAdapter.MyWebChromeClient this$1;
            private final JsResult val$result;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                result.cancel();
            }

            
            {
                this$1 = PlacesAutoCompleteAdapter.MyWebChromeClient.this;
                result = jsresult;
                super();
            }
        }).omeClient().show();
        return true;
    }

    _cls2.val.result()
    {
        this$0 = PlacesAutoCompleteAdapter.this;
        super();
    }
}
