// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.main.navigate.NavigationItem;
import com.waze.navbar.NavBar;

// Referenced classes of package com.waze:
//            NativeManager, AppService, LayoutManager

public class NavBarManager
{
    public static interface NavigationListListener
    {

        public abstract void onComplete(NavigationItem anavigationitem[]);
    }


    private static NavBar navBar;
    private boolean bIsAlertNavBar;
    private String bottomDist;
    private String bottomEta;
    private String bottomTime;
    private int currExit;
    private int currFollowers;
    private int currInst;
    private String distUnit;
    private String distance;
    private LayoutManager layoutManager;
    private boolean mDriveOnLeft;
    private boolean mNightSkin;
    private int maxFollowers;
    private int mode;
    private String nextDist;
    private int nextExit;
    private int nextInst;
    private String street;

    public NavBarManager(LayoutManager layoutmanager)
    {
        bIsAlertNavBar = false;
        layoutManager = layoutmanager;
        InitNavBarManagerNTV();
    }

    private native void InitNavBarManagerNTV();

    private native NavigationItem[] getNavigationItemsNTV();

    private boolean isBottomBarReady()
    {
        return navBar != null && navBar.bottomBar() != null;
    }

    public static void showNavBar()
    {
        if (navBar != null)
        {
            navBar.show();
        }
    }

    private native void showNavigationResultNTV();

    public void AlertNavBar()
    {
    }

    public boolean getDriveOnLeft()
    {
        return mDriveOnLeft;
    }

    public NavBar getNavBar()
    {
        return navBar;
    }

    public void getNavigationItems(final NavigationListListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private NavigationItem items[];
            final NavBarManager this$0;
            private final NavigationListListener val$listener;

            public void callback()
            {
                listener.onComplete(items);
            }

            public void event()
            {
                try
                {
                    items = getNavigationItemsNTV();
                    return;
                }
                catch (Exception exception)
                {
                    items = null;
                }
            }

            
            {
                this$0 = NavBarManager.this;
                listener = navigationlistlistener;
                super();
            }
        });
    }

    public void hideNearingDestination()
    {
        AppService.Post(new Runnable() {

            final NavBarManager this$0;

            public void run()
            {
                if (NavBarManager.navBar != null)
                {
                    NavBarManager.navBar.hideNearingDestination(true);
                }
            }

            
            {
                this$0 = NavBarManager.this;
                super();
            }
        });
    }

    public void initialize(int i, int j)
    {
        boolean flag = true;
        boolean flag1;
        if (i != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        mDriveOnLeft = flag1;
        if (j == 0)
        {
            flag = false;
        }
        mNightSkin = flag;
        bottomTime = null;
        bottomEta = null;
        bottomDist = null;
        street = null;
        nextDist = null;
        distance = null;
        distUnit = null;
        nextExit = -1;
        currExit = -1;
        nextInst = -1;
        currInst = -1;
        currFollowers = -1;
        maxFollowers = -1;
    }

    public void onOrientationChanged(int i)
    {
        if (navBar != null)
        {
            navBar.adjustImages();
        }
    }

    public void restore(LayoutManager layoutmanager)
    {
        layoutManager = layoutmanager;
        navBar = null;
        if (mode != 0)
        {
            navBar = layoutmanager.createNavBar();
            navBar.setDrivingDirection(mDriveOnLeft);
            navBar.setSkin(mNightSkin);
            navBar.clear();
            if (currInst != -1)
            {
                navBar.setInstruction(currInst);
            }
            if (nextInst != -1)
            {
                navBar.setNextInstruction(nextInst);
            }
            if (currExit != -1)
            {
                navBar.setExit(currExit);
            }
            if (nextExit != -1)
            {
                navBar.setNextExit(nextExit);
            }
            navBar.setDistance(distance, distUnit);
            navBar.setNextDistance(nextDist);
            navBar.setStreet(street);
            navBar.setDistStr(bottomDist);
            navBar.setTimeStr(bottomTime);
            navBar.setEtaStr(bottomEta);
            navBar.setFollowersNum(currFollowers, maxFollowers);
            show();
        }
    }

    protected void setFriendsNum(final int num)
    {
        AppService.Post(new Runnable() {

            final NavBarManager this$0;
            private final int val$num;

            public void run()
            {
                if (isBottomBarReady())
                {
                    NavBarManager.navBar.setFriendsNum(num);
                }
            }

            
            {
                this$0 = NavBarManager.this;
                num = i;
                super();
            }
        });
    }

    public void setWaypoint(final boolean value)
    {
        AppService.Post(new Runnable() {

            final NavBarManager this$0;
            private final boolean val$value;

            public void run()
            {
                if (NavBarManager.navBar != null)
                {
                    NavBarManager.navBar.setWaypoint(value);
                }
            }

            
            {
                this$0 = NavBarManager.this;
                value = flag;
                super();
            }
        });
    }

    public void set_dist_str(final String str)
    {
        if (!str.equals(bottomDist))
        {
            AppService.Post(new Runnable() {

                final NavBarManager this$0;
                private final String val$str;

                public void run()
                {
                    if (NavBarManager.navBar != null && NavBarManager.navBar.setDistStr(str))
                    {
                        bottomDist = str;
                    }
                }

            
            {
                this$0 = NavBarManager.this;
                str = s;
                super();
            }
            });
        }
    }

    public void set_distance(final String dist, final String unit)
    {
        if (!dist.equals(distance) || !unit.equals(distUnit))
        {
            distance = dist;
            distUnit = unit;
            AppService.Post(new Runnable() {

                final NavBarManager this$0;
                private final String val$dist;
                private final String val$unit;

                public void run()
                {
                    if (NavBarManager.navBar != null)
                    {
                        NavBarManager.navBar.setDistance(dist, unit);
                    }
                }

            
            {
                this$0 = NavBarManager.this;
                dist = s;
                unit = s1;
                super();
            }
            });
        }
    }

    public void set_eta_str(final String str)
    {
        if (!str.equals(bottomTime))
        {
            AppService.Post(new Runnable() {

                final NavBarManager this$0;
                private final String val$str;

                public void run()
                {
                    if (NavBarManager.navBar != null && NavBarManager.navBar.setTimeStr(str))
                    {
                        bottomTime = str;
                    }
                }

            
            {
                this$0 = NavBarManager.this;
                str = s;
                super();
            }
            });
        }
    }

    public void set_exit(final int exit)
    {
        if (currExit != exit)
        {
            currExit = exit;
            AppService.Post(new Runnable() {

                final NavBarManager this$0;
                private final int val$exit;

                public void run()
                {
                    if (NavBarManager.navBar != null)
                    {
                        NavBarManager.navBar.setExit(exit);
                    }
                }

            
            {
                this$0 = NavBarManager.this;
                exit = i;
                super();
            }
            });
        }
    }

    public void set_followers_num(final int num, final int maxNum)
    {
        if (maxFollowers != maxNum)
        {
            AppService.Post(new Runnable() {

                final NavBarManager this$0;
                private final int val$maxNum;
                private final int val$num;

                public void run()
                {
                    if (NavBarManager.navBar != null && NavBarManager.navBar.setFollowersNum(num, maxNum))
                    {
                        currFollowers = num;
                        maxFollowers = maxNum;
                    }
                }

            
            {
                this$0 = NavBarManager.this;
                num = i;
                maxNum = j;
                super();
            }
            });
        }
    }

    public void set_instruction(final int instruction)
    {
        if (currInst != instruction)
        {
            currInst = instruction;
            AppService.Post(new Runnable() {

                final NavBarManager this$0;
                private final int val$instruction;

                public void run()
                {
                    if (NavBarManager.navBar != null)
                    {
                        NavBarManager.navBar.setInstruction(instruction);
                    }
                }

            
            {
                this$0 = NavBarManager.this;
                instruction = i;
                super();
            }
            });
        }
    }

    public void set_mode(final int mode)
    {
        this.mode = mode;
        AppService.Post(new Runnable() {

            final NavBarManager this$0;
            private final int val$mode;

            public void run()
            {
                if (mode != 0)
                {
                    if (NavBarManager.navBar == null)
                    {
                        NavBarManager.navBar = layoutManager.createNavBar();
                        NavBarManager.navBar.setDrivingDirection(mDriveOnLeft);
                        NavBarManager.navBar.setSkin(mNightSkin);
                    }
                    NavBarManager.navBar.clear();
                } else
                if (NavBarManager.navBar != null)
                {
                    NavBarManager.navBar.hide();
                    return;
                }
            }

            
            {
                this$0 = NavBarManager.this;
                mode = i;
                super();
            }
        });
    }

    public void set_next_distance(final String str)
    {
        if (!str.equals(nextDist))
        {
            nextDist = str;
            AppService.Post(new Runnable() {

                final NavBarManager this$0;
                private final String val$str;

                public void run()
                {
                    if (NavBarManager.navBar != null)
                    {
                        NavBarManager.navBar.setNextDistance(str);
                    }
                }

            
            {
                this$0 = NavBarManager.this;
                str = s;
                super();
            }
            });
        }
    }

    public void set_next_exit(final int exit)
    {
        if (nextExit != exit)
        {
            nextExit = exit;
            AppService.Post(new Runnable() {

                final NavBarManager this$0;
                private final int val$exit;

                public void run()
                {
                    if (NavBarManager.navBar != null)
                    {
                        NavBarManager.navBar.setNextExit(exit);
                    }
                }

            
            {
                this$0 = NavBarManager.this;
                exit = i;
                super();
            }
            });
        }
    }

    public void set_next_instruction(final int instruction)
    {
        if (nextInst != instruction)
        {
            nextInst = instruction;
            AppService.Post(new Runnable() {

                final NavBarManager this$0;
                private final int val$instruction;

                public void run()
                {
                    if (NavBarManager.navBar != null)
                    {
                        NavBarManager.navBar.setNextInstruction(instruction);
                    }
                }

            
            {
                this$0 = NavBarManager.this;
                instruction = i;
                super();
            }
            });
        }
    }

    public void set_skin(int i)
    {
        boolean flag;
        if (i != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mNightSkin = flag;
        AppService.Post(new Runnable() {

            final NavBarManager this$0;

            public void run()
            {
                if (NavBarManager.navBar != null)
                {
                    NavBarManager.navBar.setSkin(mNightSkin);
                }
            }

            
            {
                this$0 = NavBarManager.this;
                super();
            }
        });
    }

    public void set_street(final String str)
    {
        if (!str.equals(street))
        {
            street = str;
            AppService.Post(new Runnable() {

                final NavBarManager this$0;
                private final String val$str;

                public void run()
                {
                    if (NavBarManager.navBar != null)
                    {
                        NavBarManager.navBar.setStreet(str);
                    }
                }

            
            {
                this$0 = NavBarManager.this;
                str = s;
                super();
            }
            });
        }
    }

    public void set_time_str(final String str)
    {
        if (!str.equals(bottomEta))
        {
            AppService.Post(new Runnable() {

                final NavBarManager this$0;
                private final String val$str;

                public void run()
                {
                    if (NavBarManager.navBar != null && NavBarManager.navBar.setEtaStr(str))
                    {
                        bottomEta = str;
                    }
                }

            
            {
                this$0 = NavBarManager.this;
                str = s;
                super();
            }
            });
        }
    }

    public void show()
    {
        AppService.Post(new Runnable() {

            final NavBarManager this$0;

            public void run()
            {
                NavBarManager.showNavBar();
            }

            
            {
                this$0 = NavBarManager.this;
                super();
            }
        });
    }

    public void showNavigationResult()
    {
        NativeManager.Post(new Runnable() {

            final NavBarManager this$0;

            public void run()
            {
                showNavigationResultNTV();
            }

            
            {
                this$0 = NavBarManager.this;
                super();
            }
        });
    }

    public void showNearingDestination()
    {
        AppService.Post(new Runnable() {

            final NavBarManager this$0;

            public void run()
            {
                if (NavBarManager.navBar != null)
                {
                    NavBarManager.navBar.showNearingDestination();
                }
            }

            
            {
                this$0 = NavBarManager.this;
                super();
            }
        });
    }













}
