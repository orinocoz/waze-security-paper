// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.DialogInterface;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0
    implements android.content.issListener
{

    final ShareDriveActivity this$0;

    public void onDismiss(DialogInterface dialoginterface)
    {
        SendMeeting();
    }

    er()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}