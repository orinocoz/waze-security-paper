// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class lback extends lback
{

    final NativeManager this$0;

    public void CallbackDone(int i, String s, long l)
    {
        NativeManager.access$90(NativeManager.this, i, s, l);
    }

    lback(long l)
    {
        this$0 = NativeManager.this;
        super(l);
    }
}
