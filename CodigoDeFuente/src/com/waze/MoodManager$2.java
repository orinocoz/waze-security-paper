// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            MoodManager

class 
    implements Runnable
{

    final MoodManager this$0;
    private final String val$mood;

    public void run()
    {
        MoodManager.access$6(MoodManager.this, val$mood);
    }

    ()
    {
        this$0 = final_moodmanager;
        val$mood = String.this;
        super();
    }
}
