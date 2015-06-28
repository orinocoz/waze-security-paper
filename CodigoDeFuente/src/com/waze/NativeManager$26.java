// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.position
    implements Runnable
{

    final NativeManager this$0;
    private final String val$Text;
    private final String val$Venue;
    private final int val$position;

    public void run()
    {
        NativeManager.access$43(NativeManager.this, val$Venue, val$Text, val$position);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$Venue = s;
        val$Text = s1;
        val$position = I.this;
        super();
    }
}
