// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.utils.ImageRepository;

// Referenced classes of package com.waze:
//            NativeManager

class val.ImagePath
    implements Runnable
{

    final NativeManager this$0;
    private final String val$ImagePath;

    public void run()
    {
        ImageRepository.instance.getImage(val$ImagePath, true, null);
    }

    tory()
    {
        this$0 = final_nativemanager;
        val$ImagePath = String.this;
        super();
    }
}
