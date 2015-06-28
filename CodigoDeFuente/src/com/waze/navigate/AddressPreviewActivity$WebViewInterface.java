// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.Logger;
import com.waze.WzWebView;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity

private class <init>
{

    final AddressPreviewActivity this$0;

    public void onError(String s)
    {
        Logger.e((new StringBuilder("callJavaScript - onError(")).append(s).append(")").toString());
    }

    public void onLogAnalyticsAds(String s)
    {
        AddressPreviewActivity.access$2(AddressPreviewActivity.this, s);
    }

    public void onResponse(int i, final int res)
    {
        Logger.d((new StringBuilder("callJavaScript - onResponse(")).append(i).append(", ").append(res).append(")").toString());
        if (i == 1)
        {
            post(new Runnable() {

                final AddressPreviewActivity.WebViewInterface this$1;
                private final int val$res;

                public void run()
                {
                    android.view.ViewGroup.LayoutParams layoutparams = AddressPreviewActivity.access$3(this$0).getLayoutParams();
                    layoutparams.height = (int)((float)res * AddressPreviewActivity.access$4(this$0));
                    AddressPreviewActivity.access$3(this$0).setLayoutParams(layoutparams);
                    AddressPreviewActivity.access$3(this$0).requestLayout();
                }

            
            {
                this$1 = AddressPreviewActivity.WebViewInterface.this;
                res = i;
                super();
            }
            });
        }
    }


    private _cls1.val.res()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
