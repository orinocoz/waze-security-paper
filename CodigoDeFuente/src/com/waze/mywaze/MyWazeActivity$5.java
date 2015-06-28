// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Intent;
import android.view.View;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.mywaze:
//            MyWazeActivity, ScoreboardActivity

class this._cls0
    implements android.view.ner
{

    final MyWazeActivity this$0;

    public void onClick(View view)
    {
        if (!AppService.isNetworkAvailable())
        {
            MsgBox.openMessageBox(MyWazeActivity.access$1(MyWazeActivity.this).getLanguageString(DisplayStrings.DS_NO_NETWORK_CONNECTION), MyWazeActivity.access$1(MyWazeActivity.this).getLanguageString(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER), false);
            return;
        } else
        {
            Intent intent = new Intent(MyWazeActivity.this, com/waze/mywaze/ScoreboardActivity);
            startActivityForResult(intent, 0);
            return;
        }
    }

    y()
    {
        this$0 = MyWazeActivity.this;
        super();
    }
}
