// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;


// Referenced classes of package com.waze.rtalerts:
//            RTAlertsMenu, RTAlertsMenuData

class this._cls0
    implements anager.IAlertsMenuDataHandler
{

    final RTAlertsMenu this$0;

    public void handler(String s, RTAlertsMenuData artalertsmenudata[])
    {
        updateMenu(s, artalertsmenudata);
    }

    a()
    {
        this$0 = RTAlertsMenu.this;
        super();
    }
}
