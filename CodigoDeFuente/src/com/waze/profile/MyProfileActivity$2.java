// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import com.waze.NativeManager;
import com.waze.settings.SwitchCheckedCallback;

// Referenced classes of package com.waze.profile:
//            MyProfileActivity

class this._cls0
    implements SwitchCheckedCallback
{

    final MyProfileActivity this$0;

    public void OnCallback(boolean flag)
    {
        NativeManager.getInstance().AllowSendmails(flag);
    }

    ck()
    {
        this$0 = MyProfileActivity.this;
        super();
    }
}
