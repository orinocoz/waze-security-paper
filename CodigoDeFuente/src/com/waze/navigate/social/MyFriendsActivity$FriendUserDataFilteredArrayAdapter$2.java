// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.user.PersonBase;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity

class val.pr
    implements android.view.ayAdapter._cls2
{

    final val.pr this$1;
    private final PersonBase val$pr;

    public void onClick(View view)
    {
        int ai[] = new int[1];
        ai[0] = val$pr.getID();
        String as[] = new String[1];
        as[0] = val$pr.getPhone();
        if (val$pr.getIsOnWaze())
        {
            String s2 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_ADDED);
            Object aobj1[] = new Object[1];
            aobj1[0] = val$pr.getName();
            String s3 = String.format(s2, aobj1);
            MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s3);
            return;
        } else
        {
            String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_INVITED);
            Object aobj[] = new Object[1];
            aobj[0] = val$pr.getName();
            String s1 = String.format(s, aobj);
            MyWazeNativeManager.getInstance().sendSocialInviteFriends(ai, as, s1);
            return;
        }
    }

    ()
    {
        this$1 = final_;
        val$pr = PersonBase.this;
        super();
    }
}
