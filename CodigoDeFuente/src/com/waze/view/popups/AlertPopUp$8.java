// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.view.View;
import com.waze.AppService;
import com.waze.rtalerts.RTAlertsAlertData;
import com.waze.rtalerts.RTAlertsComments;
import com.waze.rtalerts.RTAlertsNativeManager;

// Referenced classes of package com.waze.view.popups:
//            AlertPopUp

class this._cls0
    implements android.view.istener
{

    final AlertPopUp this$0;

    public void onClick(View view)
    {
        if (AlertPopUp.access$1(AlertPopUp.this).mNumComments > 0)
        {
            RTAlertsComments.show(AppService.getMainActivity(), AlertPopUp.access$1(AlertPopUp.this));
            return;
        } else
        {
            RTAlertsNativeManager.getInstance().postCommentValidate(AppService.getMainActivity(), AlertPopUp.access$1(AlertPopUp.this).mID);
            return;
        }
    }

    nager()
    {
        this$0 = AlertPopUp.this;
        super();
    }
}
