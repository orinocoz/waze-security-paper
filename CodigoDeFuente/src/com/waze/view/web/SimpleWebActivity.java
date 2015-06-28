// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.web;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.waze.WzWebView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.view.map.ProgressAnimation;
import com.waze.view.title.TitleBar;

public class SimpleWebActivity extends ActivityBase
    implements com.waze.WzWebView.WebViewSizeCallback
{
    final class MyWebChromeClient extends WebChromeClient
    {

        final SimpleWebActivity this$0;

        public boolean onJsConfirm(WebView webview, String s, String s1, JsResult jsresult)
        {
            (new android.app.AlertDialog.Builder(SimpleWebActivity.this)).setTitle("").setMessage(s1).setPositiveButton(0x104000a, jsresult. new android.content.DialogInterface.OnClickListener() {

                final MyWebChromeClient this$1;
                private final JsResult val$result;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    result.confirm();
                }

            
            {
                this$1 = final_mywebchromeclient;
                result = JsResult.this;
                super();
            }
            }).setNegativeButton(0x1040000, jsresult. new android.content.DialogInterface.OnClickListener() {

                final MyWebChromeClient this$1;
                private final JsResult val$result;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    result.cancel();
                }

            
            {
                this$1 = final_mywebchromeclient;
                result = JsResult.this;
                super();
            }
            }).create().show();
            return true;
        }

        MyWebChromeClient()
        {
            this$0 = SimpleWebActivity.this;
            super();
        }
    }


    protected final String WAZE_URL_CLOSE = "waze://browser_close";
    protected final String WAZE_URL_HIDE = "waze://dialog_hide_current";
    private TitleBar mTitleBar;
    private ProgressAnimation mWebViewLoadAnimation;
    private WzWebView webView;

    public SimpleWebActivity()
    {
    }

    protected boolean canGoBack()
    {
        return webView != null && webView.canGoBack();
    }

    protected WzWebView getWebView()
    {
        return webView;
    }

    protected void loadUrl(String s)
    {
        if (webView != null)
        {
            webView.loadUrl(s);
        }
    }

    public void onBackPressed()
    {
        if (passBackPresses() && webView != null && webView.canGoBack())
        {
            webView.goBack();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030135);
        mTitleBar = (TitleBar)findViewById(0x7f0907d0);
        mWebViewLoadAnimation = (ProgressAnimation)findViewById(0x7f0907d1);
        webView = (WzWebView)findViewById(0x7f0907d2);
        webView.setFlags(0x10000);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new MyWebChromeClient());
        webView.setBackCallback(new com.waze.WzWebView.WebViewBackCallback() {

            final SimpleWebActivity this$0;

            public boolean onBackEvent(KeyEvent keyevent)
            {
                return false;
            }

            
            {
                this$0 = SimpleWebActivity.this;
                super();
            }
        });
        webView.setUrlOverride(new com.waze.WzWebView.WebViewUrlOverride() {

            final SimpleWebActivity this$0;

            public boolean onUrlOverride(WebView webview, String s)
            {
                return SimpleWebActivity.this.onUrlOverride(s);
            }

            
            {
                this$0 = SimpleWebActivity.this;
                super();
            }
        });
        webView.setPageProgressCallback(new com.waze.WzWebView.WebViewPageProgressCallback() {

            final SimpleWebActivity this$0;

            public void onWebViewPageFinished()
            {
                mWebViewLoadAnimation.stop();
                mWebViewLoadAnimation.setVisibility(8);
                mTitleBar.findViewById(0x7f090740).setVisibility(0);
            }

            public void onWebViewPageStarted()
            {
                mTitleBar.findViewById(0x7f090740).setVisibility(4);
                mWebViewLoadAnimation.setVisibility(0);
                mWebViewLoadAnimation.start();
            }

            
            {
                this$0 = SimpleWebActivity.this;
                super();
            }
        });
        webView.setSizeCallback(this);
    }

    protected void onDestroy()
    {
        if (webView != null)
        {
            webView = null;
        }
        super.onDestroy();
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        if (webView != null)
        {
            webView.restoreState(bundle);
        }
        super.onRestoreInstanceState(bundle);
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (webView != null)
        {
            webView.saveState(bundle);
        }
    }

    protected boolean onUrlOverride(String s)
    {
        return false;
    }

    public void onWebViewSize(int i, int j)
    {
    }

    protected boolean passBackPresses()
    {
        return true;
    }

    protected void setTitleStr(String s)
    {
        mTitleBar.init(this, s);
    }

    protected void setTitleText(int i)
    {
        setTitleText(i, true);
    }

    protected void setTitleText(int i, boolean flag)
    {
        if (flag)
        {
            mTitleBar.init(this, getString(i));
            return;
        } else
        {
            mTitleBar.init(this, getString(i), flag);
            return;
        }
    }

    public void setWebViewFlags(int i)
    {
        if (webView != null)
        {
            webView.setFlags(i);
        }
    }


}
