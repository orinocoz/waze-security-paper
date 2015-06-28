// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.main.navigate.NavigationItem;

// Referenced classes of package com.waze:
//            NavBarManager

class leUICallback extends RunnableUICallback
{

    private NavigationItem items[];
    final NavBarManager this$0;
    private final vigationListListener val$listener;

    public void callback()
    {
        val$listener.onComplete(items);
    }

    public void event()
    {
        try
        {
            items = NavBarManager.access$1(NavBarManager.this);
            return;
        }
        catch (Exception exception)
        {
            items = null;
        }
    }

    vigationListListener()
    {
        this$0 = final_navbarmanager;
        val$listener = vigationListListener.this;
        super();
    }
}
