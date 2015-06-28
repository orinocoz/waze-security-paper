// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Intent;
import android.view.View;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.rtalerts.RTAlertsMenu;

// Referenced classes of package com.waze.reports:
//            ReportMenu

class this._cls0
    implements android.view.stener
{

    final ReportMenu this$0;

    public void onClick(View view)
    {
        NativeManager.Post(new Runnable() {

            final ReportMenu._cls16 this$1;

            public void run()
            {
                AppService.Post(new Runnable() {

                    final _cls1 this$2;

                    public void run()
                    {
                        Analytics.log("MAIN_MENU_CLICK", "VAUE", "REPORTS");
                        Intent intent = new Intent(getContext(), com/waze/rtalerts/RTAlertsMenu);
                        if (AppService.getMainActivity() != null)
                        {
                            AppService.getMainActivity().startActivityForResult(intent, 32773);
                        }
                    }

            
            {
                this$2 = _cls1.this;
                super();
            }
                });
            }


            
            {
                this$1 = ReportMenu._cls16.this;
                super();
            }
        });
    }


    _cls1.this._cls1()
    {
        this$0 = ReportMenu.this;
        super();
    }
}
