// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import com.waze.inbox.InboxMessage;

// Referenced classes of package com.waze.menus:
//            MainMenu

class this._cls0
    implements com.waze.inbox.Manager.InboxDataListener
{

    final MainMenu this$0;

    public void onData(InboxMessage ainboxmessage[], int i, int j, boolean flag)
    {
        MainMenu.access$0(MainMenu.this, i);
    }

    e()
    {
        this$0 = MainMenu.this;
        super();
    }
}
