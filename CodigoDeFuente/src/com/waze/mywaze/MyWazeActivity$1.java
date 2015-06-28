// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Intent;
import android.view.View;
import com.waze.profile.MyProfileActivity;
import com.waze.profile.TempUserProfileActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeActivity, MyWazeNativeManager

class this._cls0
    implements android.view.ner
{

    final MyWazeActivity this$0;

    public void onClick(View view)
    {
        if (MyWazeNativeManager.getInstance().isRandomUserNTV())
        {
            Intent intent = new Intent(MyWazeActivity.this, com/waze/profile/TempUserProfileActivity);
            startActivityForResult(intent, 0);
            return;
        } else
        {
            Intent intent1 = new Intent(MyWazeActivity.this, com/waze/profile/MyProfileActivity);
            startActivityForResult(intent1, 0);
            return;
        }
    }

    y()
    {
        this$0 = MyWazeActivity.this;
        super();
    }
}
