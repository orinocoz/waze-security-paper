// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;
import com.waze.NativeManager;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsActivity, AddFriendsData

class this._cls0
    implements com.waze.navigate.AddFriendsListener
{

    final AddFriendsActivity this$0;

    public void onComplete(AddFriendsData addfriendsdata)
    {
        mAddFriendsData = addfriendsdata;
        boolean flag = false;
        if (mAddFriendsData == null || mAddFriendsData.SuggestionFriends.length == 0)
        {
            findViewById(0x7f090079).setVisibility(8);
            findViewById(0x7f09007a).setVisibility(8);
        } else
        {
            findViewById(0x7f090079).setVisibility(0);
            findViewById(0x7f09007a).setVisibility(0);
            ((SettingsTitleText)findViewById(0x7f090079)).setText(AddFriendsActivity.access$0(AddFriendsActivity.this).getLanguageString(DisplayStrings.DS_FRIENDS_SUGGESTIONS));
            flag = true;
        }
        findViewById(0x7f090076).setVisibility(8);
        findViewById(0x7f090077).setVisibility(8);
        findViewById(0x7f090078).setVisibility(8);
        if (flag)
        {
            AddFriendsActivity.access$1(AddFriendsActivity.this);
        }
    }

    ndsListener()
    {
        this$0 = AddFriendsActivity.this;
        super();
    }
}
