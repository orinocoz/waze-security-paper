// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.internal.Utility;

// Referenced classes of package com.facebook.widget:
//            WebDialog

private class <init> extends WebViewClient
{

    final WebDialog this$0;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        if (!WebDialog.access$1(WebDialog.this))
        {
            WebDialog.access$2(WebDialog.this).dismiss();
        }
        WebDialog.access$3(WebDialog.this).setBackgroundColor(0);
        WebDialog.access$4(WebDialog.this).setVisibility(0);
        WebDialog.access$5(WebDialog.this).setVisibility(0);
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        Utility.logd("FacebookSDK.WebDialog", (new StringBuilder("Webview loading URL: ")).append(s).toString());
        super.onPageStarted(webview, s, bitmap);
        if (!WebDialog.access$1(WebDialog.this))
        {
            WebDialog.access$2(WebDialog.this).show();
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        sendErrorToListener(new FacebookDialogException(s, i, s1));
    }

    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        super.onReceivedSslError(webview, sslerrorhandler, sslerror);
        sslerrorhandler.cancel();
        sendErrorToListener(new FacebookDialogException(null, -11, null));
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Bundle bundle;
        String s1;
        String s2;
        String s3;
        int i;
        Utility.logd("FacebookSDK.WebDialog", (new StringBuilder("Redirect URL: ")).append(s).toString());
        if (!s.startsWith(WebDialog.access$0(WebDialog.this)))
        {
            break MISSING_BLOCK_LABEL_242;
        }
        bundle = parseResponseUri(s);
        s1 = bundle.getString("error");
        if (s1 == null)
        {
            s1 = bundle.getString("error_type");
        }
        s2 = bundle.getString("error_msg");
        if (s2 == null)
        {
            s2 = bundle.getString("error_description");
        }
        s3 = bundle.getString("error_code");
        i = -1;
        if (Utility.isNullOrEmpty(s3))
        {
            break MISSING_BLOCK_LABEL_116;
        }
        int j = Integer.parseInt(s3);
        i = j;
_L2:
        if (Utility.isNullOrEmpty(s1) && Utility.isNullOrEmpty(s2) && i == -1)
        {
            sendSuccessToListener(bundle);
            return true;
        }
        break; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        i = -1;
        if (true) goto _L2; else goto _L1
_L1:
        if (s1 != null && (s1.equals("access_denied") || s1.equals("OAuthAccessDeniedException")))
        {
            sendCancelToListener();
            return true;
        }
        if (i == 4201)
        {
            sendCancelToListener();
            return true;
        } else
        {
            FacebookRequestError facebookrequesterror = new FacebookRequestError(i, s1, s2);
            sendErrorToListener(new FacebookServiceException(facebookrequesterror, s2));
            return true;
        }
        if (s.startsWith("fbconnect://cancel"))
        {
            sendCancelToListener();
            return true;
        }
        if (s.contains("touch"))
        {
            return false;
        } else
        {
            getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
            return true;
        }
    }

    private ()
    {
        this$0 = WebDialog.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
