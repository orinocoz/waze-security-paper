// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            MsgBox

class init>
    implements Runnable
{

    final MsgBox this$0;
    private final long val$aCbContext;
    private final byte val$aLabelCancel[];
    private final byte val$aLabelOk[];
    private final byte val$aMessage[];
    private final byte val$aTitle[];

    public void run()
    {
        MsgBox.access$3(MsgBox.this, val$aTitle, val$aMessage, val$aLabelOk, val$aLabelCancel, val$aCbContext);
    }

    ()
    {
        this$0 = final_msgbox;
        val$aTitle = abyte0;
        val$aMessage = abyte1;
        val$aLabelOk = abyte2;
        val$aLabelCancel = abyte3;
        val$aCbContext = J.this;
        super();
    }
}
