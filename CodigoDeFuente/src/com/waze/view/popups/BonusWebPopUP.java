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
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.map.ProgressAnimation;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class BonusWebPopUP extends PopUp
{
    private final class BonusWebViewClient extends WebViewClient
    {

        final BonusWebPopUP this$0;

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

                    final BonusWebViewClient this$1;
                    private final Activity val$activity;
                    private final Intent val$intent;

                    public void run()
                    {
                        activity.startActivity(intent);
                    }

            
            {
                this$1 = final_bonuswebviewclient;
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

        private BonusWebViewClient()
        {
            this$0 = BonusWebPopUP.this;
            super();
        }

        BonusWebViewClient(BonusWebViewClient bonuswebviewclient)
        {
            this();
        }
    }


    private static int mId;
    private static BonusWebPopUP mInstance;
    private static boolean mIsShown = false;
    private static int mLat;
    private static LayoutManager mLayoutManager;
    private static int mLon;
    private ProgressAnimation mProgressAnimation;
    private WebView mWebView;

    private BonusWebPopUP(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mProgressAnimation = null;
        mWebView = null;
        mLayoutManager = layoutmanager;
        init();
    }

    public static BonusWebPopUP getInstance(Context context, LayoutManager layoutmanager)
    {
        if (mInstance == null)
        {
            mInstance = new BonusWebPopUP(context, layoutmanager);
        }
        return mInstance;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030025, this);
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
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLOSE);
        ((TextView)findViewById(0x7f090322)).setText(s);
        String s1 = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_NAVIGATE);
        ((TextView)findViewById(0x7f0901c3)).setText(s1);
    }

    public void show(int i, String s, int j, int k)
    {
        if (mIsShown)
        {
            mInstance.hide();
        }
        mIsShown = true;
        mId = i;
        mLat = j;
        mLon = k;
        findViewById(0x7f090032).setOnClickListener(new android.view.View.OnClickListener() {

            final BonusWebPopUP this$0;

            public void onClick(View view)
            {
                hide();
            }

            
            {
                this$0 = BonusWebPopUP.this;
                super();
            }
        });
        findViewById(0x7f0901c2).setOnClickListener(new android.view.View.OnClickListener() {

            final BonusWebPopUP this$0;

            public void onClick(View view)
            {
                hide();
                NativeManager.Post(new Runnable() {

                    final _cls2 this$1;

                    public void run()
                    {
                        AppService.getNativeManager().navigateToBonusPointNTV(BonusWebPopUP.mId, BonusWebPopUP.mLat, BonusWebPopUP.mLon);
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
            }

            
            {
                this$0 = BonusWebPopUP.this;
                super();
            }
        });
        mWebView = (WebView)findViewById(0x7f0901c0);
        mLayoutManager.addView(this);
        mProgressAnimation = (ProgressAnimation)findViewById(0x7f0901c4);
        mWebView.clearCache(true);
        mWebView.loadUrl(s);
        mWebView.setVisibility(8);
        mWebView.setWebViewClient(new BonusWebViewClient(null));
    }






}
