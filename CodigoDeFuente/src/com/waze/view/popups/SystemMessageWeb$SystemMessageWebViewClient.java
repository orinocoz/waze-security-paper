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
import com.waze.NativeManager;
import com.waze.view.map.ProgressAnimation;

// Referenced classes of package com.waze.view.popups:
//            SystemMessageWeb

private final class <init> extends WebViewClient
{

    final SystemMessageWeb this$0;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        SystemMessageWeb.access$0(SystemMessageWeb.this).stop();
        SystemMessageWeb.access$0(SystemMessageWeb.this).setVisibility(8);
        SystemMessageWeb.access$1(SystemMessageWeb.this).setVisibility(0);
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        SystemMessageWeb.access$0(SystemMessageWeb.this).start();
        SystemMessageWeb.access$0(SystemMessageWeb.this).setVisibility(0);
        super.onPageStarted(webview, s, bitmap);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (s.startsWith("tel:"))
        {
            final Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s));
            final com.waze.MainActivity activity = AppService.getMainActivity();
            activity.runOnUiThread(new Runnable() {

                final SystemMessageWeb.SystemMessageWebViewClient this$1;
                private final Activity val$activity;
                private final Intent val$intent;

                public void run()
                {
                    activity.startActivity(intent);
                }

            
            {
                this$1 = SystemMessageWeb.SystemMessageWebViewClient.this;
                activity = activity1;
                intent = intent1;
                super();
            }
            });
        } else
        if (!AppService.getNativeManager().UrlHandler(s))
        {
            webview.loadUrl(s);
            return true;
        }
        return true;
    }

    private _cls1.val.intent()
    {
        this$0 = SystemMessageWeb.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
