// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity

class val.fud
    implements android.view.ayAdapter._cls2
{

    final this._cls1 this$1;
    private final FriendUserData val$fud;

    public void onClick(View view)
    {
        int ai[] = new int[1];
        ai[0] = val$fud.getID();
        String s = MyFriendsActivity.access$2(cess._mth0(this._cls1.this)).getLanguageString(DisplayStrings.DS_PS_ADDED);
        Object aobj[] = new Object[1];
        aobj[0] = val$fud.getName();
        String s1 = String.format(s, aobj);
        if (val$fud.mIsPendingMy && MyFriendsActivity.access$3())
        {
            MyFriendsActivity.access$4(cess._mth0(this._cls1.this));
            s1 = null;
        }
        MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s1);
    }

    ()
    {
        this$1 = final_;
        val$fud = FriendUserData.this;
        super();
    }
}
