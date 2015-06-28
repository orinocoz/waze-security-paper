// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.animation.ValueAnimator;
import android.content.Intent;
import android.net.Uri;
import android.view.animation.DecelerateInterpolator;
import android.webkit.WebView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.WzWebView;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity

class this._cls1
    implements android.animation.eListener
{

    final is._cls0 this$1;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        int i = ((Integer)valueanimator.getAnimatedValue()).intValue();
        android.view.  = AddressPreviewActivity.access$3(_fld0).getLayoutParams();
        .ht = i;
        AddressPreviewActivity.access$3(_fld0).setLayoutParams();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/AddressPreviewActivity$3

/* anonymous class */
    class AddressPreviewActivity._cls3
        implements com.waze.WzWebView.WebViewUrlOverride
    {

        final AddressPreviewActivity this$0;

        public boolean onUrlOverride(WebView webview, String s)
        {
            if (s != null)
            {
                if (s.startsWith("tel:"))
                {
                    AddressPreviewActivity.access$2(AddressPreviewActivity.this, "ADS_SPECIAL_PHONE_CLICKED");
                    final Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s.substring(s.indexOf("tel:"), s.length())));
                    runOnUiThread(new AddressPreviewActivity._cls3._cls1());
                    return true;
                }
                if (s.startsWith("waze://?open_url"))
                {
                    AddressPreviewActivity.access$2(AddressPreviewActivity.this, "ADS_PREVIEW_OFFER_URL_CLICKED");
                } else
                if (s.startsWith("waze://"))
                {
                    NativeManager nativemanager = AppService.getNativeManager();
                    String s1;
                    String s2;
                    try
                    {
                        s1 = URLDecoder.decode(s.toString(), "UTF-8");
                    }
                    catch (UnsupportedEncodingException unsupportedencodingexception)
                    {
                        return true;
                    }
                    s2 = Uri.parse(s1).getQueryParameter("change_info_height");
                    if (s2 != null)
                    {
                        int i = Integer.parseInt(s2);
                        android.view.ViewGroup.LayoutParams layoutparams = AddressPreviewActivity.access$3(AddressPreviewActivity.this).getLayoutParams();
                        int ai[] = new int[2];
                        ai[0] = layoutparams.height;
                        ai[1] = (int)((float)i * AddressPreviewActivity.access$4(AddressPreviewActivity.this));
                        ValueAnimator valueanimator = ValueAnimator.ofInt(ai);
                        valueanimator.addUpdateListener(new AddressPreviewActivity._cls3._cls2());
                        valueanimator.setDuration(300L);
                        valueanimator.setInterpolator(new DecelerateInterpolator());
                        valueanimator.start();
                        return true;
                    }
                    if (!nativemanager.UrlHandler(s1))
                    {
                        webview.loadUrl(s1);
                    }
                    return true;
                }
            }
            return false;
        }


            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }

        // Unreferenced inner class com/waze/navigate/AddressPreviewActivity$3$1

/* anonymous class */
        class AddressPreviewActivity._cls3._cls1
            implements Runnable
        {

            final AddressPreviewActivity._cls3 this$1;
            private final Intent val$intent;

            public void run()
            {
                startActivity(intent);
            }

                    
                    {
                        this$1 = AddressPreviewActivity._cls3.this;
                        intent = intent1;
                        super();
                    }
        }

    }

}
