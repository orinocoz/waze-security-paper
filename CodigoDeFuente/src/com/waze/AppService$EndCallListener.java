// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import android.telephony.PhoneStateListener;

// Referenced classes of package com.waze:
//            NativeManager, AppService, FreeMapAppActivity

private class <init> extends PhoneStateListener
{

    final AppService this$0;

    public void onCallStateChanged(int i, String s)
    {
        if (2 == i)
        {
            NativeManager nativemanager = NativeManager.getInstance();
            if (nativemanager.getInitializedStatus() && nativemanager.isNavigatingNTV())
            {
                int j = nativemanager.getReturnToWazeFromPhoneTimeoutNTV();
                if (j >= 0)
                {
                    AppService.access$2().postDelayed(new Runnable() {

                        final AppService.EndCallListener this$1;

                        public void run()
                        {
                            Intent intent = new Intent(AppService.getAppContext(), com/waze/FreeMapAppActivity);
                            intent.setAction("android.intent.action.MAIN");
                            intent.addCategory("android.intent.category.LAUNCHER");
                            intent.setFlags(0x10000000);
                            startActivity(intent);
                        }

            
            {
                this$1 = AppService.EndCallListener.this;
                super();
            }
                    }, j * 1000);
                }
            }
        }
    }


    private _cls1.this._cls1()
    {
        this$0 = AppService.this;
        super();
    }

    ( )
    {
        this();
    }
}
