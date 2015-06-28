// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.view.View;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.NavBarManager;
import com.waze.analytics.Analytics;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls0
    implements android.view.
{

    final NavigationResult this$0;

    public void onClick(View view)
    {
        if (!NavigationResult.access$10(NavigationResult.this))
        {
            Analytics.log("ROUTES_ETA");
            DriveToNativeManager.getInstance().requestRoute(NavigationResult.access$19(NavigationResult.this));
            NativeManager.Post(new Runnable() {

                final NavigationResult._cls10 this$1;

                public void run()
                {
                    AppService.getNativeManager().navigateMainGetCouponNTV();
                }

            
            {
                this$1 = NavigationResult._cls10.this;
                super();
            }
            });
            NavigationResult.access$7(NavigationResult.this);
            if (NavigationResult.access$8(NavigationResult.this) != null)
            {
                try
                {
                    dismissNavigationResultDialogNoAnimation();
                }
                catch (Exception exception)
                {
                    NavigationResult.access$18(NavigationResult.this, null);
                }
            }
            NavBarManager.showNavBar();
        }
    }

    _cls1.this._cls1()
    {
        this$0 = NavigationResult.this;
        super();
    }
}
