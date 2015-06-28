// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager, MyWazeData

class <init> extends RunnableUICallback
{

    MyWazeData Data;
    final MyWazeNativeManager this$0;
    private final ActivityBase val$mywaze;

    public void callback()
    {
        Log.d("WAZE", "getFacebookSettings - callback");
        val$mywaze.SetMyWazeData(Data);
    }

    public void event()
    {
        Log.d("WAZE", "getFacebookSettings - event");
        Data = new MyWazeData();
        Data.mFaceBookLoggedIn = getFacebookLoggedInNTV();
        Data.mContactsLoggedIn = getContactLoggedInNTV();
        Data.mImageUrl = getUserImageUrlNTV();
        Data.mRank = getRankNTV();
        Data.mPts = getPointsNTV();
        Data.mUserName = MyWazeNativeManager.access$0(MyWazeNativeManager.this);
        Data.mNickName = MyWazeNativeManager.access$2(MyWazeNativeManager.this);
        Data.mFaceBookNickName = MyWazeNativeManager.access$6(MyWazeNativeManager.this);
        Data.mJoinedStr = MyWazeNativeManager.access$7(MyWazeNativeManager.this);
        Data.nFriendsOnline = MyWazeNativeManager.access$8(MyWazeNativeManager.this);
        Data.mFirstName = MyWazeNativeManager.access$9(MyWazeNativeManager.this);
        Data.mLastName = MyWazeNativeManager.access$10(MyWazeNativeManager.this);
        Data.mMood = MyWazeNativeManager.access$11(MyWazeNativeManager.this);
        Data.mPhoneNumber = MyWazeNativeManager.access$12(MyWazeNativeManager.this);
        Data.mPassword = MyWazeNativeManager.access$1(MyWazeNativeManager.this);
        Data.mEmail = MyWazeNativeManager.access$13(MyWazeNativeManager.this);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$mywaze = ActivityBase.this;
        super();
    }
}
