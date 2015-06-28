// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import com.waze.AppService;
import com.waze.NativeManager;
import java.lang.ref.WeakReference;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity

class val.intent
    implements Runnable
{

    final val.intent this$2;
    private final Intent val$intent;

    public void run()
    {
        ((AddressOptionsActivity)AddressOptionsActivity.access$6().get()).startActivity(val$intent);
    }

    is._cls1()
    {
        this$2 = final__pcls1;
        val$intent = Intent.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/AddressOptionsActivity$PreviewTabsManager$3

/* anonymous class */
    class AddressOptionsActivity.PreviewTabsManager._cls3
        implements com.waze.WzWebView.WebViewUrlOverride
    {

        final AddressOptionsActivity.PreviewTabsManager this$1;

        public boolean onUrlOverride(WebView webview, String s)
        {
            if (s != null)
            {
                if (s.startsWith("tel:"))
                {
                    AddressOptionsActivity.access$2(AddressOptionsActivity.PreviewTabsManager.access$1(AddressOptionsActivity.PreviewTabsManager.this), "ADS_SPECIAL_PHONE_CLICKED");
                    Intent intent1 = new Intent("android.intent.action.DIAL", Uri.parse(s.substring(s.indexOf("tel:"), s.length())));
                    ((AddressOptionsActivity)AddressOptionsActivity.access$6().get()).runOnUiThread(intent1. new AddressOptionsActivity.PreviewTabsManager._cls3._cls1());
                    return true;
                }
                if (s.startsWith("waze://"))
                {
                    NativeManager nativemanager = AppService.getNativeManager();
                    String s1 = Uri.decode(s.toString());
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
                this$1 = AddressOptionsActivity.PreviewTabsManager.this;
                super();
            }
    }

}
