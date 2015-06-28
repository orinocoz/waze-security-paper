// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.user;


// Referenced classes of package com.waze.user:
//            UserData

public class FriendUserData extends UserData
{

    private static final long serialVersionUID = 1L;
    public String arrivedShareText;
    public String arrivedText;
    public String arrivedTime;
    public boolean isOnline;
    public boolean mAllowBeepBeep;
    public int mContactID;
    public boolean mIsFriend;
    public boolean mIsPendingFriend;
    public boolean mIsPendingMy;
    public String mMeetingIdSharedByMe;
    public String mMeetingIdSharedWithMe;
    public boolean mShowETA;
    public String name;
    public String pictureUrl;
    public String sharestatusLine;
    public String statusLine;

    public FriendUserData()
    {
    }

    public String getImage()
    {
        return pictureUrl;
    }

    public boolean getIsOnWaze()
    {
        return true;
    }

    public String getName()
    {
        return name;
    }

    public void setImage(String s)
    {
        pictureUrl = s;
        super.setImage(s);
    }
}
