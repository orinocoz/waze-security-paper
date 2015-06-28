// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.graphics.Bitmap;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.waze.view.popups:
//            PoiPopUp

private final class <init> extends WebViewClient
{

    final PoiPopUp this$0;

    public void onPageFinished(WebView webview, String s)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Boolean.valueOf(PoiPopUp.access$3(PoiPopUp.this));
        aobj[1] = Boolean.valueOf(PoiPopUp.access$4(PoiPopUp.this));
        Log.d("WAZE", String.format("external_poi_preload:: onPageFinished:  mHadError: %s, mIsLoaded: %s", aobj));
        if (!PoiPopUp.access$3(PoiPopUp.this))
        {
            PoiPopUp.access$2(PoiPopUp.this, true);
            super.onPageFinished(webview, s);
        }
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        PoiPopUp.access$2(PoiPopUp.this, false);
        super.onPageStarted(webview, s, bitmap);
        Log.d("WAZE", "external_poi_preload:: onPageStarted: statring pre-loading");
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        PoiPopUp.access$2(PoiPopUp.this, false);
        PoiPopUp.access$5(PoiPopUp.this, true);
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = s;
        Log.w("WAZE", String.format("external_poi_preload:: failed pre-loading url: errorCode: %d description: %s", aobj));
        super.onReceivedError(webview, i, s, s1);
    }

    private ()
    {
        this$0 = PoiPopUp.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
