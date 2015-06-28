// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.app.Dialog;
import android.view.View;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.NavBarManager;
import com.waze.analytics.Analytics;
import com.waze.share.ShareNativeManager;
import com.waze.view.timer.TimerView;
import java.util.ArrayList;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls1
    implements Runnable
{

    final NTV this$1;

    public void run()
    {
        AppService.getNativeManager().navigateMainPlayStartNTV();
        AppService.getNativeManager().navigateMainGetCouponNTV();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/main/navigate/NavigationResult$9

/* anonymous class */
    class NavigationResult._cls9
        implements android.view.View.OnClickListener
    {

        final NavigationResult this$0;

        public void onClick(View view)
        {
            if (!NavigationResult.access$10(NavigationResult.this))
            {
                boolean flag = ((TimerView)NavigationResult.access$8(NavigationResult.this).findViewById(0x7f0904b6)).hasExpired();
                boolean flag1 = nm.isMovingNTV();
                int i;
                if (NavigationResult.access$6(NavigationResult.this) != null)
                {
                    i = NavigationResult.access$6(NavigationResult.this).size();
                } else
                {
                    i = 0;
                }
                if (i == 0)
                {
                    NavigationResult.access$11(NavigationResult.this, ShareNativeManager.getInstance().getReceivedLocationSender());
                    if (NavigationResult.access$12(NavigationResult.this) != null)
                    {
                        NavigationResult.access$13(NavigationResult.this, true);
                    }
                }
                if (!flag && NavigationResult.access$14(NavigationResult.this) && !NavigationResult.access$15(NavigationResult.this) && i == 0 && !NavigationResult.access$16(NavigationResult.this) && !flag1 || NavigationResult.mForceShowTooltipEta)
                {
                    NavigationResult.access$7(NavigationResult.this);
                    showTooltipEta();
                } else
                {
                    SendMeeting();
                    if (NavigationResult.access$15(NavigationResult.this))
                    {
                        if (NavigationResult.access$8(NavigationResult.this) != null)
                        {
                            try
                            {
                                NavigationResult.access$17(NavigationResult.this);
                                return;
                            }
                            catch (Exception exception1)
                            {
                                NavigationResult.access$18(NavigationResult.this, null);
                            }
                            return;
                        }
                    } else
                    {
                        Analytics.log("GO_ETA");
                        if (!NavigationResult.access$19(NavigationResult.this))
                        {
                            NativeManager.Post(new NavigationResult._cls9._cls1());
                        }
                        NativeManager.Post(new NavigationResult._cls9._cls2());
                        if (NavigationResult.access$8(NavigationResult.this) != null)
                        {
                            NavigationResult.access$7(NavigationResult.this);
                            try
                            {
                                NavigationResult.access$17(NavigationResult.this);
                            }
                            catch (Exception exception)
                            {
                                NavigationResult.access$18(NavigationResult.this, null);
                            }
                        }
                        NavBarManager.showNavBar();
                        return;
                    }
                }
            }
        }

            
            {
                this$0 = NavigationResult.this;
                super();
            }

        // Unreferenced inner class com/waze/main/navigate/NavigationResult$9$2

/* anonymous class */
        class NavigationResult._cls9._cls2
            implements Runnable
        {

            final NavigationResult._cls9 this$1;

            public void run()
            {
                AppService.getNativeManager().startTripServerNavigationNTV();
            }

                    
                    {
                        this$1 = NavigationResult._cls9.this;
                        super();
                    }
        }

    }

}
