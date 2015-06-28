// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.val
    implements Runnable
{

    final NativeManager this$0;
    private final int val$index;
    private final int val$type;
    private final int val$val;

    public void run()
    {
        PopupShownNTV(val$type, val$index, val$val);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$type = i;
        val$index = j;
        val$val = I.this;
        super();
    }
}
