// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.voice.WazeSpeechRecognizer;

// Referenced classes of package com.waze:
//            NativeManager

class val.Lang
    implements Runnable
{

    final NativeManager this$0;
    private final String val$Lang;
    private final long val$callback;

    public void run()
    {
        WazeSpeechRecognizer.start(val$callback, val$Lang);
    }

    ecognizer()
    {
        this$0 = final_nativemanager;
        val$callback = l;
        val$Lang = String.this;
        super();
    }
}
