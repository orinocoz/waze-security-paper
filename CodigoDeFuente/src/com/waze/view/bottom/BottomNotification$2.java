// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.bottom;

import android.content.Intent;
import android.view.View;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.rtalerts.RTAlertsMenu;

// Referenced classes of package com.waze.view.bottom:
//            BottomNotification

class this._cls0
    implements android.view.ation._cls2
{

    final BottomNotification this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(getContext(), com/waze/rtalerts/RTAlertsMenu);
        if (AppService.getMainActivity() != null)
        {
            AppService.getMainActivity().startActivityForResult(intent, 32773);
        }
    }

    ()
    {
        this$0 = BottomNotification.this;
        super();
    }
}
