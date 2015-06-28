// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import com.waze.WzWebView;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity, AddressItem

class this._cls1
    implements com.waze.view.tabs.his._cls1
{

    final this._cls1 this$1;

    public void onClick(int i)
    {
        if (i == cess._mth0(this._cls1.this))
        {
            return;
        }
        View view = null;
        if (i == 0)
        {
            AddressOptionsActivity.access$2(cess._mth1(this._cls1.this), "ADS_PREVIEW_SHOWN");
            view = cess._mth1(this._cls1.this).findViewById(0x7f0900e6);
            AddressOptionsActivity.access$3(cess._mth1(this._cls1.this)).getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                final AddressOptionsActivity.PreviewTabsManager._cls1 this$2;

                public void onGlobalLayout()
                {
                    android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(AddressOptionsActivity.access$3(AddressOptionsActivity.PreviewTabsManager.access$1(this$1)).getMeasuredWidth(), AddressOptionsActivity.access$3(AddressOptionsActivity.PreviewTabsManager.access$1(this$1)).getMeasuredHeight());
                    layoutparams.topMargin = AddressOptionsActivity.access$3(AddressOptionsActivity.PreviewTabsManager.access$1(this$1)).getTop();
                    layoutparams.leftMargin = AddressOptionsActivity.access$3(AddressOptionsActivity.PreviewTabsManager.access$1(this$1)).getLeft();
                    AddressOptionsActivity.access$4(AddressOptionsActivity.PreviewTabsManager.access$1(this$1)).setLayoutParams(layoutparams);
                    AddressOptionsActivity.access$3(AddressOptionsActivity.PreviewTabsManager.access$1(this$1)).getViewTreeObserver().removeGlobalOnLayoutListener(this);
                }

            
            {
                this$2 = AddressOptionsActivity.PreviewTabsManager._cls1.this;
                super();
            }
            });
        }
        if (i == 1)
        {
            view = cess._mth1(this._cls1.this).findViewById(0x7f0900e7);
            WzWebView wzwebview1 = (WzWebView)view.findViewById(0x7f0900e8);
            wzwebview1.setUrlOverride(cess._mth2(this._cls1.this));
            AddressOptionsActivity.access$2(cess._mth1(this._cls1.this), "ADS_INFO_SHOWN");
            wzwebview1.loadUrl(AddressOptionsActivity.access$1(cess._mth1(this._cls1.this)).getUrl());
        }
        if (i == 2)
        {
            view = cess._mth1(this._cls1.this).findViewById(0x7f0900e9);
            WzWebView wzwebview = (WzWebView)view.findViewById(0x7f0900ea);
            wzwebview.setUrlOverride(cess._mth3(this._cls1.this));
            AddressOptionsActivity.access$2(cess._mth1(this._cls1.this), "ADS_SPECIAL_SHOWN");
            wzwebview.loadUrl(AddressOptionsActivity.access$1(cess._mth1(this._cls1.this)).getSpecialUrl());
        }
        cess._mth4(this._cls1.this, i);
        cess._mth5(this._cls1.this).setVisibility(8);
        view.setVisibility(0);
        cess._mth6(this._cls1.this, view);
    }


    _cls1.this._cls2()
    {
        this$1 = this._cls1.this;
        super();
    }
}
