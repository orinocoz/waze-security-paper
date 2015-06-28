// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;
import com.waze.NativeManager;
import com.waze.autocomplete.Person;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.AddressBook;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;

// Referenced classes of package com.waze.navigate.social:
//            MyShareDriveActivity

class val.fud
    implements android.view.eActivity._cls5
{

    final MyShareDriveActivity this$0;
    private final FriendUserData val$fud;
    private final PersonBase val$p;

    public void onClick(View view)
    {
        if (val$p.getID() != -1)
        {
            int ai1[] = new int[1];
            ai1[0] = val$p.getID();
            String s2 = MyShareDriveActivity.access$11(MyShareDriveActivity.this).getLanguageString(DisplayStrings.DS_PS_ADDED);
            Object aobj1[] = new Object[1];
            aobj1[0] = val$p.getName();
            String s3 = String.format(s2, aobj1);
            MyWazeNativeManager.getInstance().sendSocialAddFriends(ai1, s3);
        } else
        if (val$fud.mContactID >= 0)
        {
            Person person = AddressBook.GetPersonFromID(val$fud.mContactID);
            if (person != null)
            {
                int ai[] = new int[1];
                String as[] = new String[1];
                ai[0] = person.getID();
                as[0] = person.getPhone();
                String s = MyShareDriveActivity.access$11(MyShareDriveActivity.this).getLanguageString(DisplayStrings.DS_PS_INVITED);
                Object aobj[] = new Object[1];
                aobj[0] = person.getName();
                String s1 = String.format(s, aobj);
                MyWazeNativeManager.getInstance().sendSocialInviteFriends(ai, as, s1);
                return;
            }
        }
    }

    ()
    {
        this$0 = final_mysharedriveactivity;
        val$p = personbase;
        val$fud = FriendUserData.this;
        super();
    }
}
