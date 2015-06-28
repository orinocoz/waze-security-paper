// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import java.util.HashMap;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsPopup

class val.friend
    implements android.view.er
{

    final AddFriendsPopup this$0;
    private final FriendUserData val$friend;

    public void onClick(View view)
    {
        TextView textview;
        NativeManager nativemanager;
        DisplayStrings displaystrings;
        if (!((CheckBox)view.findViewById(0x7f09008f)).isChecked())
        {
            ((CheckBox)view.findViewById(0x7f09008f)).setChecked(true);
            AddFriendsPopup.access$5(AddFriendsPopup.this).put(Integer.valueOf(val$friend.getID()), val$friend);
        } else
        {
            ((CheckBox)view.findViewById(0x7f09008f)).setChecked(false);
            AddFriendsPopup.access$5(AddFriendsPopup.this).remove(Integer.valueOf(val$friend.getID()));
        }
        textview = AddFriendsPopup.access$6(AddFriendsPopup.this);
        nativemanager = AddFriendsPopup.access$7(AddFriendsPopup.this);
        if (AddFriendsPopup.access$5(AddFriendsPopup.this).size() > 0)
        {
            displaystrings = DisplayStrings.DS_ADD;
        } else
        {
            displaystrings = DisplayStrings.DS_NEXT;
        }
        textview.setText(nativemanager.getLanguageString(displaystrings));
    }

    ()
    {
        this$0 = final_addfriendspopup;
        val$friend = FriendUserData.this;
        super();
    }
}
