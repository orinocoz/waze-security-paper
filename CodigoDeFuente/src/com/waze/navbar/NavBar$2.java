// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navbar;

import android.view.View;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.NavBarManager;

// Referenced classes of package com.waze.navbar:
//            NavBar

class this._cls0
    implements android.view.ickListener
{

    final NavBar this$0;

    public void onClick(View view)
    {
        NavBar.access$10(NavBar.this).getNavBarManager().showNavigationResult();
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            LayoutManager layoutmanager = mainactivity.getLayoutMgr();
            if (layoutmanager != null)
            {
                layoutmanager.closeShareTooltip();
            }
        }
    }

    Listener()
    {
        this$0 = NavBar.this;
        super();
    }
}
