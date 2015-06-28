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
        Data.mRank = getSocialRankNTV();
        Data.mPts = getSocialPointsNTV();
        Data.mUserName = MyWazeNativeManager.access$14(MyWazeNativeManager.this);
        Data.mJoinedStr = MyWazeNativeManager.access$15(MyWazeNativeManager.this);
        Data.mMood = MyWazeNativeManager.access$11(MyWazeNativeManager.this);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$mywaze = ActivityBase.this;
        super();
    }
}
