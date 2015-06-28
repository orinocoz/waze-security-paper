// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            MsgBox, AppService, MainActivity

class nit>
    implements Runnable
{

    final MsgBox this$0;
    private final long val$callback;
    private final long val$context;
    private final int val$seconds;
    private final String val$text;
    private final String val$title;
    private final int val$type;

    public void run()
    {
        if (AppService.getActiveActivity() != null && (AppService.getActiveActivity() instanceof MainActivity))
        {
            MsgBox.access$7(MsgBox.this, val$title, val$type, val$text, val$callback, val$context, val$seconds);
        }
    }

    ty()
    {
        this$0 = final_msgbox;
        val$title = s;
        val$type = i;
        val$text = s1;
        val$callback = l;
        val$context = l1;
        val$seconds = I.this;
        super();
    }
}
