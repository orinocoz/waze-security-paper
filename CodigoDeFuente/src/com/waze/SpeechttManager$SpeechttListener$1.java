// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            Logger, SpeechttManager

class val.eventType_
    implements Runnable
{

    final val.eventType_ this$1;
    private final int val$eventType_;

    public void run()
    {
        Logger.w((new StringBuilder("Speech to text event: ")).append(val$eventType_).toString());
    }

    ()
    {
        this$1 = final_;
        val$eventType_ = I.this;
        super();
    }
}
