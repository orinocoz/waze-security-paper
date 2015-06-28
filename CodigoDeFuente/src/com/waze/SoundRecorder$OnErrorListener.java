// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.media.MediaRecorder;

// Referenced classes of package com.waze:
//            Logger, SoundRecorder

private static class <init>
    implements android.media.>
{

    public void onError(MediaRecorder mediarecorder, int i, int j)
    {
        Logger.e((new StringBuilder("Error: ")).append(i).append(" in recording process. Extra ").append(j).toString());
    }

    private ener()
    {
    }

    ener(ener ener)
    {
        this();
    }
}
