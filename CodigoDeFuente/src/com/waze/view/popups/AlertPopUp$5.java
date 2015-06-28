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

class this._cls0
    implements android.view.istener
{

    final AlertPopUp this$0;

    public void onClick(View view)
    {
        RTAlertsAlertData rtalertsalertdata = AlertPopUp.access$1(AlertPopUp.this);
        rtalertsalertdata.mNumThumbsUp = 1 + rtalertsalertdata.mNumThumbsUp;
        AlertPopUp.access$2(AlertPopUp.this, AlertPopUp.access$1(AlertPopUp.this).mNumThumbsUp, false);
        NativeManager.Post(new Runnable() {

            final AlertPopUp._cls5 this$1;

            public void run()
            {
                AppService.getNativeManager().sendThumbsUpNTV(AlertPopUp.access$1(this$0).mID);
            }

            
            {
                this$1 = AlertPopUp._cls5.this;
                super();
            }
        });
    }


    _cls1.this._cls1()
    {
        this$0 = AlertPopUp.this;
        super();
    }
}
