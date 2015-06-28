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
    private final int val$enabled;

    public void run()
    {
        if (AppService.getMainActivity() == null)
        {
            return;
        }
        LayoutManager layoutmanager = AppService.getMainActivity().getLayoutMgr();
        boolean flag;
        if (val$enabled == 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        layoutmanager.changeVoicePopupState(flag);
    }

    ager()
    {
        this$0 = final_msgbox;
        val$enabled = I.this;
        super();
    }
}
