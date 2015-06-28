// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;


// Referenced classes of package com.waze.navigate.social:
//            FriendsDrivingActivity, EndDriveData

class this._cls0
    implements com.waze.navigate.riveListener
{

    final FriendsDrivingActivity this$0;

    public void onComplete(EndDriveData enddrivedata)
    {
        com.waze.user.FriendUserData afrienduserdata[] = enddrivedata.friends;
        int i = afrienduserdata.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            com.waze.user.FriendUserData frienduserdata = afrienduserdata[j];
            FriendsDrivingActivity.access$0(FriendsDrivingActivity.this, frienduserdata);
            j++;
        } while (true);
    }

    tener()
    {
        this$0 = FriendsDrivingActivity.this;
        super();
    }
}
