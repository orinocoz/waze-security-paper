// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.util.SparseIntArray;
import com.waze.user.FriendUserData;

public class AddFriendsData
{

    public FriendUserData SuggestionFriends[];
    public SparseIntArray SuggestionFriendsUids;
    public FriendUserData WaitingForApprovalFriends[];
    public SparseIntArray WaitingForApprovalFriendsUids;
    public boolean contactLoggedIn;
    public boolean facebookLoggedIn;

    public AddFriendsData()
    {
    }
}
