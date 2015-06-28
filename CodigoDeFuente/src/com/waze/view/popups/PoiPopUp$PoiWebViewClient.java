// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.view.map.ProgressAnimation;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

// Referenced classes of package com.waze.view.popups:
//            PoiPopUp

private final class <init> extends WebViewClient
{

    final PoiPopUp this$0;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        PoiPopUp.access$11(PoiPopUp.this).stop();
        PoiPopUp.access$11(PoiPopUp.this).setVisibility(8);
        PoiPopUp.access$12(PoiPopUp.this).setVisibility(0);
        PoiPopUp.access$12(PoiPopUp.this).loadUrl((new StringBuilder("javascript:window.W.evalJsForAndroid(")).append(PoiPopUp.access$0(PoiPopUp.this)).append(",'window.W.getVoiceActions()')").toString());
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        if (!PoiPopUp.access$10(PoiPopUp.this))
        {
            PoiPopUp.access$11(PoiPopUp.this).start();
            PoiPopUp.access$11(PoiPopUp.this).setVisibility(0);
        } else
        {
            PoiPopUp.access$12(PoiPopUp.this).setVisibility(0);
        }
        super.onPageStarted(webview, s, bitmap);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        PoiPopUp.access$6().SetPopUpInterrupt(true);
        if (s.contains("tel:"))
        {
            Analytics.logAdsContext("ADS_POPUP_PHONE_CLICKED");
            final Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s.substring(s.indexOf("tel:"), s.length())));
            final com.waze.MainActivity activity = AppService.getMainActivity();
            activity.runOnUiThread(new Runnable() {

                final PoiPopUp.PoiWebViewClient this$1;
                private final Activity val$activity;
                private final Intent val$intent;

                public void run()
                {
                    PoiPopUp.access$7(this$0, false);
                    PoiPopUp.access$6().callCloseAllPopups(1);
                    activity.startActivity(intent);
                }

            
            {
                this$1 = PoiPopUp.PoiWebViewClient.this;
                activity = activity1;
                intent = intent1;
                super();
            }
            });
        } else
        {
            if (s.contains("external_poi_nav"))
            {
                AppService.getMainActivity().runOnUiThread(new Runnable() {

                    final PoiPopUp.PoiWebViewClient this$1;

                    public void run()
                    {
                        PoiPopUp.access$8(this$0);
                    }

            
            {
                this$1 = PoiPopUp.PoiWebViewClient.this;
                super();
            }
                });
                return true;
            }
            if (s.contains("external_poi_info"))
            {
                AppService.getMainActivity().runOnUiThread(new Runnable() {

                    final PoiPopUp.PoiWebViewClient this$1;

                    public void run()
                    {
                        PoiPopUp.access$9(this$0);
                    }

            
            {
                this$1 = PoiPopUp.PoiWebViewClient.this;
                super();
            }
                });
                return true;
            }
            NativeManager nativemanager = AppService.getNativeManager();
            String s1;
            try
            {
                s1 = URLDecoder.decode(s.toString(), "UTF-8");
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                return true;
            }
            if (!nativemanager.UrlHandler(s1))
            {
                webview.loadUrl(s1);
                return true;
            }
        }
        return true;
    }


    private _cls3.this._cls1()
    {
        this$0 = PoiPopUp.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
