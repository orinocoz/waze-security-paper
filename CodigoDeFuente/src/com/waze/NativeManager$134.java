// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.dupId
    implements Runnable
{

    final NativeManager this$0;
    private final String val$comment;
    private final String val$dupId;
    private final int val$type;
    private final String val$venueId;

    public void run()
    {
        NativeManager.access$83(NativeManager.this, val$venueId, val$type, val$comment, val$dupId);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$venueId = s;
        val$type = i;
        val$comment = s1;
        val$dupId = String.this;
        super();
    }
}
