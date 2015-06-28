// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            MsgBox

class nit>
    implements Runnable
{

    final MsgBox this$0;
    private final long val$callback;
    private final int val$cancelValue;
    private final long val$context;
    private final int val$defaultOption;
    private final boolean val$isCancellable;
    private final int val$seconds;
    private final String val$text;
    private final String val$textOne;
    private final String val$textTwo;
    private final String val$title;
    private final int val$valueOne;
    private final int val$valueTwo;

    public void run()
    {
        MsgBox.access$6(MsgBox.this, val$title, val$text, val$isCancellable, val$defaultOption, val$cancelValue, val$callback, val$context, val$textOne, val$valueOne, val$textTwo, val$valueTwo, val$seconds);
    }

    ()
    {
        this$0 = final_msgbox;
        val$title = s;
        val$text = s1;
        val$isCancellable = flag;
        val$defaultOption = i;
        val$cancelValue = j;
        val$callback = l;
        val$context = l1;
        val$textOne = s2;
        val$valueOne = k;
        val$textTwo = s3;
        val$valueTwo = i1;
        val$seconds = I.this;
        super();
    }
}
