// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.NativeManager;
import com.waze.view.map.ProgressAnimation;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class SystemMessageWeb extends PopUp
{
    private final class SystemMessageWebViewClient extends WebViewClient
    {

        final SystemMessageWeb this$0;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            mProgressAnimation.stop();
            mProgressAnimation.setVisibility(8);
            mWebView.setVisibility(0);
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            mProgressAnimation.start();
            mProgressAnimation.setVisibility(0);
            super.onPageStarted(webview, s, bitmap);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            if (s.startsWith("tel:"))
            {
                Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s));
                final com.waze.MainActivity activity = AppService.getMainActivity();
                activity.runOnUiThread(intent. new Runnable() {

                    final SystemMessageWebViewClient this$1;
                    private final Activity val$activity;
                    private final Intent val$intent;

                    public void run()
                    {
                        activity.startActivity(intent);
                    }

            
            {
                this$1 = final_systemmessagewebviewclient;
                activity = activity1;
                intent = Intent.this;
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

        private SystemMessageWebViewClient()
        {
            this$0 = SystemMessageWeb.this;
            super();
        }

        SystemMessageWebViewClient(SystemMessageWebViewClient systemmessagewebviewclient)
        {
            this();
        }
    }


    private static SystemMessageWeb mInstance;
    private static boolean mIsShown = false;
    private static LayoutManager mLayoutManager;
    private ProgressAnimation mProgressAnimation;
    private WebView mWebView;

    private SystemMessageWeb(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mProgressAnimation = null;
        mWebView = null;
        mLayoutManager = layoutmanager;
        init();
    }

    public static SystemMessageWeb getInstance(Context context, LayoutManager layoutmanager)
    {
        if (mInstance == null)
        {
            mInstance = new SystemMessageWeb(context, layoutmanager);
        }
        return mInstance;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030113, this);
        setUpButtonsTxt();
    }

    public void hide()
    {
        mIsShown = false;
        mLayoutManager.dismiss(mInstance);
    }

    public void onBackPressed()
    {
        hide();
    }

    public void setUpButtonsTxt()
    {
    }

    public void show(String s)
    {
        if (mIsShown)
        {
            mInstance.hide();
        }
        mIsShown = true;
        findViewById(0x7f090032).setOnClickListener(new android.view.View.OnClickListener() {

            final SystemMessageWeb this$0;

            public void onClick(View view)
            {
                hide();
            }

            
            {
                this$0 = SystemMessageWeb.this;
                super();
            }
        });
        mWebView = (WebView)findViewById(0x7f090710);
        mLayoutManager.addView(this);
        mProgressAnimation = (ProgressAnimation)findViewById(0x7f0901c4);
        mWebView.clearCache(true);
        mWebView.loadUrl(s);
        mWebView.setVisibility(8);
        mWebView.setWebViewClient(new SystemMessageWebViewClient(null));
    }



}
