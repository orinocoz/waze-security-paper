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
    private final long val$callback;
    private final long val$context;
    private final boolean val$defaultYes;
    private final int val$seconds;
    private final String val$text;
    private final String val$textNo;
    private final String val$textYes;
    private final String val$title;

    public void run()
    {
        MsgBox.access$5(MsgBox.this, val$title, val$text, val$defaultYes, val$callback, val$context, val$textYes, val$textNo, val$seconds);
    }

    ()
    {
        this$0 = final_msgbox;
        val$title = s;
        val$text = s1;
        val$defaultYes = flag;
        val$callback = l;
        val$context = l1;
        val$textYes = s2;
        val$textNo = s3;
        val$seconds = I.this;
        super();
    }
}
