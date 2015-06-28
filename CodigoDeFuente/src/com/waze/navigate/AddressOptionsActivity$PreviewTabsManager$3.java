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

class this._cls1
    implements com.waze.anager._cls3
{

    final _cls1.val.intent this$1;

    public boolean onUrlOverride(WebView webview, String s)
    {
        if (s != null)
        {
            if (s.startsWith("tel:"))
            {
                AddressOptionsActivity.access$2(cess._mth1(this._cls1.this), "ADS_SPECIAL_PHONE_CLICKED");
                final Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s.substring(s.indexOf("tel:"), s.length())));
                ((AddressOptionsActivity)AddressOptionsActivity.access$6().get()).runOnUiThread(new Runnable() {

                    final AddressOptionsActivity.PreviewTabsManager._cls3 this$2;
                    private final Intent val$intent;

                    public void run()
                    {
                        ((AddressOptionsActivity)AddressOptionsActivity.access$6().get()).startActivity(intent);
                    }

            
            {
                this$2 = AddressOptionsActivity.PreviewTabsManager._cls3.this;
                intent = intent1;
                super();
            }
                });
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

    _cls1.val.intent()
    {
        this$1 = this._cls1.this;
        super();
    }
}
