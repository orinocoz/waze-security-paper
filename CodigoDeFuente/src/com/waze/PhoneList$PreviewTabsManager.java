// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.view.View;
import com.waze.view.tabs.TabBar;

// Referenced classes of package com.waze:
//            NativeManager, PhoneList

private static class mHolder
{

    private boolean isNavigate;
    private PhoneList mHolder;
    private int mSelectedTab;
    private View mSelectedTabView;
    private TabBar mTabBar;
    private final com.waze.view.tabs.Click mTabClickListener = new com.waze.view.tabs.TabBar.IOnTabClickListener() {

        final PhoneList.PreviewTabsManager this$1;

        public void onClick(int i)
        {
            if (i == mSelectedTab)
            {
                return;
            }
            View view = null;
            if (i == 0)
            {
                view = mHolder.findViewById(0x7f0904eb);
            }
            if (i == 1)
            {
                view = mHolder.findViewById(0x7f0904e7);
            }
            mSelectedTab = i;
            mSelectedTabView.setVisibility(8);
            view.setVisibility(0);
            mSelectedTabView = view;
        }

            
            {
                this$1 = PhoneList.PreviewTabsManager.this;
                super();
            }
    };

    public void initTabs()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        mTabBar = (TabBar)mHolder.findViewById(0x7f0900e5);
        mTabBar.setListener(mTabClickListener);
        mTabBar.setText(0, nativemanager.getLanguageString("Facebook friends"));
        mTabBar.setText(1, nativemanager.getLanguageString("Phone contacts"));
        mTabBar.setSelected(0);
        mSelectedTabView = mHolder.findViewById(0x7f0904eb);
        if (mSelectedTab >= 0)
        {
            setSelectedTab(mSelectedTab);
        }
    }

    public void setSelectedTab(int i)
    {
        mTabBar.setSelected(i);
        mTabClickListener.Click(i);
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






    public _cls1.this._cls1(PhoneList phonelist)
    {
        mSelectedTab = -1;
        mSelectedTabView = null;
        mHolder = null;
        mTabBar = null;
        isNavigate = true;
        mHolder = phonelist;
    }
}
