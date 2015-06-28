// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.duration
    implements Runnable
{

    final NativeManager this$0;
    private final String val$description;
    private final int val$direction;
    private final int val$duration;
    private final String val$filenameImage;
    private final String val$filenameVoice;
    private final String val$pathImage;
    private final String val$pathVoice;
    private final int val$subtype;
    private final int val$type;

    public void run()
    {
        NativeManager.access$60(NativeManager.this, val$pathImage, val$filenameImage, val$pathVoice, val$filenameVoice, val$description, val$direction, val$type, val$subtype, val$duration);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$pathImage = s;
        val$filenameImage = s1;
        val$pathVoice = s2;
        val$filenameVoice = s3;
        val$description = s4;
        val$direction = i;
        val$type = j;
        val$subtype = k;
        val$duration = I.this;
        super();
    }
}
