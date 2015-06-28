// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.view.View;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls0
    implements android.view.
{

    final NavigationResult this$0;

    public void onClick(View view)
    {
        Analytics.log("CANCEL_ETA");
        Analytics.logAdsContextNav("ADS_NAVIGATE_CANCEL_ETA");
        if (NavigationResult.access$19(NavigationResult.this))
        {
            NativeManager.Post(new Runnable() {

                final NavigationResult._cls12 this$1;

                public void run()
                {
                    AppService.getNativeManager().stopTripServerNavigationNTV();
                }

            
            {
                this$1 = NavigationResult._cls12.this;
                super();
            }
            });
        } else
        {
            NativeManager.Post(new Runnable() {

                final NavigationResult._cls12 this$1;

                public void run()
                {
                    AppService.getNativeManager().stopNavigationNTV();
                }

            
            {
                this$1 = NavigationResult._cls12.this;
                super();
            }
            });
        }
        NavigationResult.access$7(NavigationResult.this);
        if (NavigationResult.access$8(NavigationResult.this) == null)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        dismissNavigationResultDialogNoAnimation();
        return;
        Exception exception;
        exception;
        NavigationResult.access$18(NavigationResult.this, null);
        return;
    }

    _cls2.this._cls1()
    {
        this$0 = NavigationResult.this;
        super();
    }
}
