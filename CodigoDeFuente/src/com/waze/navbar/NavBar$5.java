// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navbar;

import android.view.View;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.navbar:
//            NavBar

class this._cls0
    implements android.view.ickListener
{

    final NavBar this$0;

    public void onClick(View view)
    {
        com.waze.navigate.tiveManager.AddressItemAppData addressitemappdata;
        boolean flag;
        if (NavBar.access$18(NavBar.this).bNearingMinimized)
        {
            restoreNearingPanel();
        } else
        {
            minimizeNearingPanel();
        }
        addressitemappdata = NavBar.access$18(NavBar.this);
        if (NavBar.access$18(NavBar.this).bNearingMinimized)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        addressitemappdata.bNearingMinimized = flag;
        NavBar.access$0(NavBar.this).updateAddressItemAppData(NavBar.access$0(NavBar.this).getDestinationIdNTV(), NavBar.access$18(NavBar.this));
    }

    NativeManager()
    {
        this$0 = NavBar.this;
        super();
    }
}
