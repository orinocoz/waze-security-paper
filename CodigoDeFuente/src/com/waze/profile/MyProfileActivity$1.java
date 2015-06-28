// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.profile:
//            MyProfileActivity

class this._cls0
    implements android.view.
{

    final MyProfileActivity this$0;

    public void onClick(View view)
    {
        if (MyProfileActivity.access$0(MyProfileActivity.this) && MyWazeNativeManager.getInstance().isRandomUserNTV() && !MyProfileActivity.access$1(MyProfileActivity.this))
        {
            MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ENTER_USERNAME_FIRST), false);
            return;
        } else
        {
            setResult(-1);
            finish();
            return;
        }
    }

    ()
    {
        this$0 = MyProfileActivity.this;
        super();
    }
}
