// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.View;
import com.waze.AppService;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.phone:
//            PhoneRequestAccessDialog

class this._cls0
    implements android.view._cls1
{

    final PhoneRequestAccessDialog this$0;

    public void onClick(View view)
    {
        AppService.OpenBrowser(MyWazeNativeManager.getInstance().getLearnMorePrivacyUrlNTV());
    }

    ()
    {
        this$0 = PhoneRequestAccessDialog.this;
        super();
    }
}
