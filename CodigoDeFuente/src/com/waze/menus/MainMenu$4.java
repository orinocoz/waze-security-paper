// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import com.waze.ConfigItem;
import java.util.List;

// Referenced classes of package com.waze.menus:
//            MainMenu

class this._cls0
    implements com.waze.er.IConfigUpdater
{

    final MainMenu this$0;

    public void updateConfigItems(List list)
    {
        if (!((ConfigItem)list.get(0)).getValue().equalsIgnoreCase("yes"))
        {
            shouldDisplayTip = true;
        }
    }

    nfigUpdater()
    {
        this$0 = MainMenu.this;
        super();
    }
}
