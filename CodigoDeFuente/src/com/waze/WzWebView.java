// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.waze.ifs.ui.ProgressBarDialog;

// Referenced classes of package com.waze:
//            AppService, NativeManager

public final class WzWebView extends WebView
{
    private final class WazeWebViewClient extends WebViewClient
    {

        final WzWebView this$0;

        private void InitProgressDlg()
        {
            mProgressDlg = new ProgressBarDialog(mContext);
            mProgressDlg.setCancelable(true);
        }

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            if (mProgressDlg != null)
            {
                mProgressDlg.dismiss();
                mProgressDlg = null;
            }
            clearCache(false);
            if (mPageProgressCallback != null)
            {
                mPageProgressCallback.onWebViewPageFinished();
            }
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            if ((0x10000 & mFlags) == 0 && (mProgressDlg == null || !mProgressDlg.isShowing()))
            {
                InitProgressDlg();
                mProgressDlg.show();
            }
            if (mPageProgressCallback != null)
            {
                mPageProgressCallback.onWebViewPageStarted();
            }
            super.onPageStarted(webview, s, bitmap);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            if (mUrlOverride == null || !mUrlOverride.onUrlOverride(webview, s))
            {
                if (s.startsWith("tel:"))
                {
                    Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s));
                    final MainActivity activity = AppService.getMainActivity();
                    activity.runOnUiThread(intent. new Runnable() {

                        final WazeWebViewClient this$1;
                        private final Activity val$activity;
                        private final Intent val$intent;

                        public void run()
                        {
                            activity.startActivity(intent);
                        }

            
            {
                this$1 = final_wazewebviewclient;
                activity = activity1;
                intent = Intent.this;
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

        private WazeWebViewClient()
        {
            this$0 = WzWebView.this;
            super();
        }

        WazeWebViewClient(WazeWebViewClient wazewebviewclient)
        {
            this();
        }
    }

    public static interface WebViewBackCallback
    {

        public abstract boolean onBackEvent(KeyEvent keyevent);
    }

    public static interface WebViewPageProgressCallback
    {

        public abstract void onWebViewPageFinished();

        public abstract void onWebViewPageStarted();
    }

    public static interface WebViewSizeCallback
    {

        public abstract void onWebViewSize(int i, int j);
    }

    public static interface WebViewUrlOverride
    {

        public abstract boolean onUrlOverride(WebView webview, String s);
    }


    public static final int BROWSER_FLAG_NONE = 0;
    public static final int BROWSER_FLAG_NO_PROGRESS = 0x10000;
    public static final int BROWSER_FLAG_WINDOW_TYPE_NO_SCROLL = 64;
    public static final int BROWSER_FLAG_WINDOW_TYPE_TRANSPARENT = 32;
    private WebViewBackCallback mBackCallback;
    private Context mContext;
    private int mFlags;
    private WebViewPageProgressCallback mPageProgressCallback;
    private Dialog mProgressDlg;
    private WebViewSizeCallback mSizeCallback;
    private WebViewUrlOverride mUrlOverride;

    public WzWebView(Context context)
    {
        super(context);
        mBackCallback = null;
        mSizeCallback = null;
        mUrlOverride = null;
        mPageProgressCallback = null;
        mProgressDlg = null;
        mContext = null;
        Init(context, null, 0);
    }

    public WzWebView(Context context, int i)
    {
        super(context);
        mBackCallback = null;
        mSizeCallback = null;
        mUrlOverride = null;
        mPageProgressCallback = null;
        mProgressDlg = null;
        mContext = null;
        Init(context, null, i);
    }

    public WzWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mBackCallback = null;
        mSizeCallback = null;
        mUrlOverride = null;
        mPageProgressCallback = null;
        mProgressDlg = null;
        mContext = null;
        Init(context, null, 0);
    }

    private void Init(Context context, WebViewBackCallback webviewbackcallback, int i)
    {
        mContext = context;
        if (!isInEditMode())
        {
            WebSettings websettings = getSettings();
            websettings.setSavePassword(false);
            websettings.setSaveFormData(false);
            websettings.setJavaScriptEnabled(true);
            websettings.setSupportZoom(false);
            websettings.setSaveFormData(true);
            websettings.setDomStorageEnabled(true);
        }
        setFlags(i);
        setBackCallback(webviewbackcallback);
        setClickable(true);
        setFocusableInTouchMode(true);
        setWebViewClient(new WazeWebViewClient(null));
    }

    public boolean dispatchKeyEventPreIme(KeyEvent keyevent)
    {
        if (keyevent.getKeyCode() == 4 && mBackCallback != null && mBackCallback.onBackEvent(keyevent))
        {
            return true;
        } else
        {
            return super.dispatchKeyEventPreIme(keyevent);
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (mSizeCallback != null && i > 0 && j > 0)
        {
            mSizeCallback.onWebViewSize(i, j);
            mSizeCallback = null;
        }
    }

    public void setBackCallback(WebViewBackCallback webviewbackcallback)
    {
        mBackCallback = webviewbackcallback;
    }

    public void setFlags(int i)
    {
        mFlags = i;
        if ((0x40 & mFlags) > 0)
        {
            setHorizontalScrollBarEnabled(false);
            setVerticalScrollBarEnabled(false);
            setScrollContainer(false);
        }
        if ((0x20 & mFlags) > 0)
        {
            setBackgroundColor(0);
        }
    }

    public void setPageProgressCallback(WebViewPageProgressCallback webviewpageprogresscallback)
    {
        mPageProgressCallback = webviewpageprogresscallback;
    }

    public void setSizeCallback(WebViewSizeCallback webviewsizecallback)
    {
        mSizeCallback = webviewsizecallback;
    }

    public void setUrlOverride(WebViewUrlOverride webviewurloverride)
    {
        mUrlOverride = webviewurloverride;
    }






}
