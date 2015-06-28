// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import com.waze.mywaze.MyWazeNativeManager;
import com.waze.settings.SwitchCheckedCallback;

// Referenced classes of package com.waze.mywaze.social:
//            SocialActivity

class this._cls0
    implements SwitchCheckedCallback
{

    final SocialActivity this$0;

    public void OnCallback(boolean flag)
    {
        MyWazeNativeManager.getInstance().SetallowPM(flag);
        MyWazeNativeManager.getInstance().OnSettingChange_SetVisibilty();
    }

    ()
    {
        this$0 = SocialActivity.this;
        super();
    }
}
