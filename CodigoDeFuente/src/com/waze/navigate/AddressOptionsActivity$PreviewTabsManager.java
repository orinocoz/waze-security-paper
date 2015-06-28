// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.WzWebView;
import com.waze.strings.DisplayStrings;
import com.waze.view.tabs.TabBar;
import java.lang.ref.WeakReference;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity, AddressItem

private static class isNavigate
{

    private boolean isNavigate;
    private AddressOptionsActivity mHolder;
    private final com.waze.sManager.mTabBar mInfoUrlOverride = new com.waze.WzWebView.WebViewUrlOverride() {

        final AddressOptionsActivity.PreviewTabsManager this$1;

        public boolean onUrlOverride(WebView webview, String s)
        {
            int _tmp = AddressOptionsActivity.access$5(mHolder);
            if (s != null)
            {
                if (s.contains("tel:"))
                {
                    AddressOptionsActivity.access$2(mHolder, "ADS_INFO_PHONE_CLICKED");
                    Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s.substring(s.indexOf("tel:"), s.length())));
                    ((AddressOptionsActivity)AddressOptionsActivity.access$6().get()).runOnUiThread(intent. new Runnable() {

                        final _cls2 this$2;
                        private final Intent val$intent;

                        public void run()
                        {
                            ((AddressOptionsActivity)AddressOptionsActivity.access$6().get()).startActivity(intent);
                        }

            
            {
                this$2 = final__pcls2;
                intent = Intent.this;
                super();
            }
                    });
                    return true;
                }
                if (s.startsWith("waze://?open_url"))
                {
                    AddressOptionsActivity.access$2(mHolder, "ADS_INFO_URL_CLICKED");
                } else
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
    };
    private int mSelectedTab;
    private View mSelectedTabView;
    private final com.waze.sManager mSpecialUrlOverride = new com.waze.WzWebView.WebViewUrlOverride() {

        final AddressOptionsActivity.PreviewTabsManager this$1;

        public boolean onUrlOverride(WebView webview, String s)
        {
            if (s != null)
            {
                if (s.startsWith("tel:"))
                {
                    AddressOptionsActivity.access$2(mHolder, "ADS_SPECIAL_PHONE_CLICKED");
                    Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s.substring(s.indexOf("tel:"), s.length())));
                    ((AddressOptionsActivity)AddressOptionsActivity.access$6().get()).runOnUiThread(intent. new Runnable() {

                        final _cls3 this$2;
                        private final Intent val$intent;

                        public void run()
                        {
                            ((AddressOptionsActivity)AddressOptionsActivity.access$6().get()).startActivity(intent);
                        }

            
            {
                this$2 = final__pcls3;
                intent = Intent.this;
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

            
            {
                this$1 = AddressOptionsActivity.PreviewTabsManager.this;
                super();
            }
    };
    private TabBar mTabBar;
    private final com.waze.view.tabs. mTabClickListener = new com.waze.view.tabs.TabBar.IOnTabClickListener() {

        final AddressOptionsActivity.PreviewTabsManager this$1;

        public void onClick(int i)
        {
            if (i == mSelectedTab)
            {
                return;
            }
            View view = null;
            if (i == 0)
            {
                AddressOptionsActivity.access$2(mHolder, "ADS_PREVIEW_SHOWN");
                view = mHolder.findViewById(0x7f0900e6);
                AddressOptionsActivity.access$3(mHolder).getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final _cls1 this$2;

                    public void onGlobalLayout()
                    {
                        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(AddressOptionsActivity.access$3(mHolder).getMeasuredWidth(), AddressOptionsActivity.access$3(mHolder).getMeasuredHeight());
                        layoutparams.topMargin = AddressOptionsActivity.access$3(mHolder).getTop();
                        layoutparams.leftMargin = AddressOptionsActivity.access$3(mHolder).getLeft();
                        AddressOptionsActivity.access$4(mHolder).setLayoutParams(layoutparams);
                        AddressOptionsActivity.access$3(mHolder).getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }

            
            {
                this$2 = _cls1.this;
                super();
            }
                });
            }
            if (i == 1)
            {
                view = mHolder.findViewById(0x7f0900e7);
                WzWebView wzwebview1 = (WzWebView)view.findViewById(0x7f0900e8);
                wzwebview1.setUrlOverride(mInfoUrlOverride);
                AddressOptionsActivity.access$2(mHolder, "ADS_INFO_SHOWN");
                wzwebview1.loadUrl(AddressOptionsActivity.access$1(mHolder).getUrl());
            }
            if (i == 2)
            {
                view = mHolder.findViewById(0x7f0900e9);
                WzWebView wzwebview = (WzWebView)view.findViewById(0x7f0900ea);
                wzwebview.setUrlOverride(mSpecialUrlOverride);
                AddressOptionsActivity.access$2(mHolder, "ADS_SPECIAL_SHOWN");
                wzwebview.loadUrl(AddressOptionsActivity.access$1(mHolder).getSpecialUrl());
            }
            mSelectedTab = i;
            mSelectedTabView.setVisibility(8);
            view.setVisibility(0);
            mSelectedTabView = view;
        }


            
            {
                this$1 = AddressOptionsActivity.PreviewTabsManager.this;
                super();
            }
    };

    public void initTabs()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        mTabBar = (TabBar)mHolder.findViewById(0x7f0900e5);
        mTabBar.setListener(mTabClickListener);
        mTabBar.setText(0, nativemanager.getLanguageString(DisplayStrings.DS_LOCATION));
        mTabBar.setText(1, nativemanager.getLanguageString(DisplayStrings.DS_INFO));
        mTabBar.setText(2, nativemanager.getLanguageString(DisplayStrings.DS_SPECIALS));
        mTabBar.setSelected(0);
        mSelectedTabView = mHolder.findViewById(0x7f0900e6);
        String s = AddressOptionsActivity.access$1(mHolder).getUrl();
        String s1 = AddressOptionsActivity.access$1(mHolder).getSpecialUrl();
        if (s == null || s.length() == 0)
        {
            mTabBar.setEnabled(1, false);
        }
        if (s1 == null || s1.length() == 0)
        {
            mTabBar.setEnabled(2, false);
        }
        if (!isNavigate)
        {
            mTabBar.setEnabled(0, false);
        }
        if (mSelectedTab >= 0)
        {
            setSelectedTab(mSelectedTab);
        }
    }

    public void setSelectedTab(int i)
    {
        mTabBar.setSelected(i);
        mTabClickListener.TabClickListener(i);
    }

    public void setVisible(boolean flag)
    {
        if (flag)
        {
            mTabBar.setVisibility(0);
            return;
        } else
        {
            mTabBar.setVisibility(8);
            return;
        }
    }








    public _cls3.this._cls1(AddressOptionsActivity addressoptionsactivity, Boolean boolean1)
    {
        mSelectedTab = -1;
        mSelectedTabView = null;
        mHolder = null;
        mTabBar = null;
        isNavigate = true;
        mHolder = addressoptionsactivity;
        isNavigate = boolean1.booleanValue();
    }
}
