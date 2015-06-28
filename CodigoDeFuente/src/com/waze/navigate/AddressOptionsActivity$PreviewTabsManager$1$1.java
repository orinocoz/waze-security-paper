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

class this._cls2
    implements android.view.._cls1._cls1
{

    final is._cls1 this$2;

    public void onGlobalLayout()
    {
        android.widget.  = new android.widget.(AddressOptionsActivity.access$3(ss._mth1(_fld1)).getMeasuredWidth(), AddressOptionsActivity.access$3(ss._mth1(_fld1)).getMeasuredHeight());
        ._fld1 = AddressOptionsActivity.access$3(ss._mth1(_fld1)).getTop();
        ._fld1 = AddressOptionsActivity.access$3(ss._mth1(_fld1)).getLeft();
        AddressOptionsActivity.access$4(ss._mth1(_fld1)).setLayoutParams();
        AddressOptionsActivity.access$3(ss._mth1(_fld1)).getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    is._cls1()
    {
        this$2 = this._cls2.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1

/* anonymous class */
    class AddressOptionsActivity.PreviewTabsManager._cls1
        implements com.waze.view.tabs.TabBar.IOnTabClickListener
    {

        final AddressOptionsActivity.PreviewTabsManager this$1;

        public void onClick(int i)
        {
            if (i == AddressOptionsActivity.PreviewTabsManager.access$0(AddressOptionsActivity.PreviewTabsManager.this))
            {
                return;
            }
            View view = null;
            if (i == 0)
            {
                AddressOptionsActivity.access$2(AddressOptionsActivity.PreviewTabsManager.access$1(AddressOptionsActivity.PreviewTabsManager.this), "ADS_PREVIEW_SHOWN");
                view = AddressOptionsActivity.PreviewTabsManager.access$1(AddressOptionsActivity.PreviewTabsManager.this).findViewById(0x7f0900e6);
                AddressOptionsActivity.access$3(AddressOptionsActivity.PreviewTabsManager.access$1(AddressOptionsActivity.PreviewTabsManager.this)).getViewTreeObserver().addOnGlobalLayoutListener(new AddressOptionsActivity.PreviewTabsManager._cls1._cls1());
            }
            if (i == 1)
            {
                view = AddressOptionsActivity.PreviewTabsManager.access$1(AddressOptionsActivity.PreviewTabsManager.this).findViewById(0x7f0900e7);
                WzWebView wzwebview1 = (WzWebView)view.findViewById(0x7f0900e8);
                wzwebview1.setUrlOverride(AddressOptionsActivity.PreviewTabsManager.access$2(AddressOptionsActivity.PreviewTabsManager.this));
                AddressOptionsActivity.access$2(AddressOptionsActivity.PreviewTabsManager.access$1(AddressOptionsActivity.PreviewTabsManager.this), "ADS_INFO_SHOWN");
                wzwebview1.loadUrl(AddressOptionsActivity.access$1(AddressOptionsActivity.PreviewTabsManager.access$1(AddressOptionsActivity.PreviewTabsManager.this)).getUrl());
            }
            if (i == 2)
            {
                view = AddressOptionsActivity.PreviewTabsManager.access$1(AddressOptionsActivity.PreviewTabsManager.this).findViewById(0x7f0900e9);
                WzWebView wzwebview = (WzWebView)view.findViewById(0x7f0900ea);
                wzwebview.setUrlOverride(AddressOptionsActivity.PreviewTabsManager.access$3(AddressOptionsActivity.PreviewTabsManager.this));
                AddressOptionsActivity.access$2(AddressOptionsActivity.PreviewTabsManager.access$1(AddressOptionsActivity.PreviewTabsManager.this), "ADS_SPECIAL_SHOWN");
                wzwebview.loadUrl(AddressOptionsActivity.access$1(AddressOptionsActivity.PreviewTabsManager.access$1(AddressOptionsActivity.PreviewTabsManager.this)).getSpecialUrl());
            }
            AddressOptionsActivity.PreviewTabsManager.access$4(AddressOptionsActivity.PreviewTabsManager.this, i);
            AddressOptionsActivity.PreviewTabsManager.access$5(AddressOptionsActivity.PreviewTabsManager.this).setVisibility(8);
            view.setVisibility(0);
            AddressOptionsActivity.PreviewTabsManager.access$6(AddressOptionsActivity.PreviewTabsManager.this, view);
        }


            
            {
                this$1 = AddressOptionsActivity.PreviewTabsManager.this;
                super();
            }
    }

}
