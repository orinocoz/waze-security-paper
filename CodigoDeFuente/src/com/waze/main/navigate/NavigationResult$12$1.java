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

class this._cls1
    implements Runnable
{

    final onNTV this$1;

    public void run()
    {
        AppService.getNativeManager().stopTripServerNavigationNTV();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/main/navigate/NavigationResult$12

/* anonymous class */
    class NavigationResult._cls12
        implements android.view.View.OnClickListener
    {

        final NavigationResult this$0;

        public void onClick(View view)
        {
            Analytics.log("CANCEL_ETA");
            Analytics.logAdsContextNav("ADS_NAVIGATE_CANCEL_ETA");
            if (NavigationResult.access$19(NavigationResult.this))
            {
                NativeManager.Post(new NavigationResult._cls12._cls1());
            } else
            {
                NativeManager.Post(new NavigationResult._cls12._cls2());
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

            
            {
                this$0 = NavigationResult.this;
                super();
            }

        // Unreferenced inner class com/waze/main/navigate/NavigationResult$12$2

/* anonymous class */
        class NavigationResult._cls12._cls2
            implements Runnable
        {

            final NavigationResult._cls12 this$1;

            public void run()
            {
                AppService.getNativeManager().stopNavigationNTV();
            }

                    
                    {
                        this$1 = NavigationResult._cls12.this;
                        super();
                    }
        }

    }

}
