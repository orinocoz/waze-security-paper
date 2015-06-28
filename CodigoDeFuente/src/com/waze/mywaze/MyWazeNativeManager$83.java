// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.app.backup.BackupManager;
import com.waze.AppService;
import com.waze.WazeBackupAgent;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.token
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final String val$phoneNumber;
    private final String val$token;

    public void run()
    {
        Object obj = AppService.getMainActivity();
        if (obj == null)
        {
            obj = AppService.getAppContext();
        }
        WazeBackupAgent.putString(((android.content.Context) (obj)), (new StringBuilder("socialContactsPhoneRecovery_")).append(val$phoneNumber).toString(), val$token);
        WazeBackupAgent.putString(((android.content.Context) (obj)), "socialContactsLastPhoneUsed", val$phoneNumber);
        (new BackupManager(((android.content.Context) (obj)))).dataChanged();
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$phoneNumber = s;
        val$token = String.this;
        super();
    }
}
