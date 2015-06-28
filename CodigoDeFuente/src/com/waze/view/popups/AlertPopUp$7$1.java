// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.view.View;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.rtalerts.RTAlertsAlertData;

// Referenced classes of package com.waze.view.popups:
//            AlertPopUp

class this._cls1
    implements Runnable
{

    final mID this$1;

    public void run()
    {
        AppService.getNativeManager().sendThumbsUpNTV(AlertPopUp.access$1(_fld0).mID);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/view/popups/AlertPopUp$7

/* anonymous class */
    class AlertPopUp._cls7
        implements android.view.View.OnClickListener
    {

        final AlertPopUp this$0;

        public void onClick(View view)
        {
            RTAlertsAlertData rtalertsalertdata = AlertPopUp.access$1(AlertPopUp.this);
            rtalertsalertdata.mNumThumbsUp = 1 + rtalertsalertdata.mNumThumbsUp;
            AlertPopUp.access$2(AlertPopUp.this, AlertPopUp.access$1(AlertPopUp.this).mNumThumbsUp, false);
            NativeManager.Post(new AlertPopUp._cls7._cls1());
        }


            
            {
                this$0 = AlertPopUp.this;
                super();
            }
    }

}
