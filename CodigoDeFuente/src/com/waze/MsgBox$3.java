// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            MsgBox, AppService, MainActivity, LayoutManager

class init>
    implements Runnable
{

    final MsgBox this$0;

    public void run()
    {
        if (AppService.getMainActivity() == null)
        {
            return;
        } else
        {
            AppService.getMainActivity().getLayoutMgr().openVoicePopup();
            return;
        }
    }

    ager()
    {
        this$0 = MsgBox.this;
        super();
    }
}
