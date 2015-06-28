// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.waze.ifs.ui.ProgressBarDialog;

// Referenced classes of package com.waze:
//            WzWebView, AppService, NativeManager

private final class <init> extends WebViewClient
{

    final WzWebView this$0;

    private void InitProgressDlg()
    {
        WzWebView.access$4(WzWebView.this, new ProgressBarDialog(WzWebView.access$5(WzWebView.this)));
        WzWebView.access$2(WzWebView.this).setCancelable(true);
    }

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        if (WzWebView.access$2(WzWebView.this) != null)
        {
            WzWebView.access$2(WzWebView.this).dismiss();
            WzWebView.access$4(WzWebView.this, null);
        }
        clearCache(false);
        if (WzWebView.access$3(WzWebView.this) != null)
        {
            WzWebView.access$3(WzWebView.this).onWebViewPageFinished();
        }
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        if ((0x10000 & WzWebView.access$1(WzWebView.this)) == 0 && (WzWebView.access$2(WzWebView.this) == null || !WzWebView.access$2(WzWebView.this).isShowing()))
        {
            InitProgressDlg();
            WzWebView.access$2(WzWebView.this).show();
        }
        if (WzWebView.access$3(WzWebView.this) != null)
        {
            WzWebView.access$3(WzWebView.this).onWebViewPageStarted();
        }
        super.onPageStarted(webview, s, bitmap);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (WzWebView.access$0(WzWebView.this) == null || !WzWebView.access$0(WzWebView.this).onUrlOverride(webview, s))
        {
            if (s.startsWith("tel:"))
            {
                final Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s));
                final MainActivity activity = AppService.getMainActivity();
                activity.runOnUiThread(new Runnable() {

                    final WzWebView.WazeWebViewClient this$1;
                    private final Activity val$activity;
                    private final Intent val$intent;

                    public void run()
                    {
                        activity.startActivity(intent);
                    }

            
            {
                this$1 = WzWebView.WazeWebViewClient.this;
                activity = activity1;
                intent = intent1;
                super();
            }
                });
                return true;
            }
            if (!AppService.getNativeManager().UrlHandler(s))
            {
                webview.loadUrl(s);
                return true;
            }
        }
        return true;
    }

    private _cls1.val.intent()
    {
        this$0 = WzWebView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
