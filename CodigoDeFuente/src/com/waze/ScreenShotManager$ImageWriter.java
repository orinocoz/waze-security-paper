// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.graphics.Bitmap;
import java.io.File;
import java.io.FileOutputStream;

// Referenced classes of package com.waze:
//            ScreenShotManager, ResManager, Logger

private final class <init> extends Thread
{

    final ScreenShotManager this$0;

    public void run()
    {
        String s;
        File file;
        if (ScreenShotManager.access$0(ScreenShotManager.this) == null)
        {
            break MISSING_BLOCK_LABEL_142;
        }
        ScreenShotManager.access$2(1 + ScreenShotManager.access$1());
        s = (new StringBuilder("screenshot_")).append(String.valueOf(ScreenShotManager.access$1())).append(".jpg").toString();
        file = new File((new StringBuilder(String.valueOf(ResManager.mSDCardResDir))).append("screenshots/").append(s).toString());
        file.getParentFile().mkdirs();
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        ScreenShotManager.access$0(ScreenShotManager.this).compress(android.graphics., 50, fileoutputstream);
        fileoutputstream.flush();
        fileoutputstream.close();
        ScreenShotManager.access$0(ScreenShotManager.this).recycle();
        ScreenShotManager.access$3(ScreenShotManager.this, null);
        return;
        Exception exception;
        exception;
        Logger.w((new StringBuilder("ScreenShot: File writing error for ")).append(s).toString(), exception);
        exception.printStackTrace();
        return;
    }

    private ()
    {
        this$0 = ScreenShotManager.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
