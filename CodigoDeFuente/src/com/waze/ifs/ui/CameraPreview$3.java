// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.hardware.Camera;
import com.waze.Logger;

// Referenced classes of package com.waze.ifs.ui:
//            CameraPreview

class this._cls0
    implements Runnable
{

    final CameraPreview this$0;

    public void run()
    {
        if (CameraPreview.access$9(CameraPreview.this) != 1)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        Logger.w("capture() - autoFocus timed out");
        CameraPreview.access$11(CameraPreview.this).cancelAutoFocus();
        CameraPreview.access$11(CameraPreview.this).takePicture(null, null, new ptureCallback(CameraPreview.this, null));
        return;
        Exception exception;
        exception;
        Logger.e("autoFocus timeout", exception);
        CameraPreview.access$8(CameraPreview.this, 3);
        CameraPreview.access$10(CameraPreview.this, false);
        return;
    }

    ptureCallback()
    {
        this$0 = CameraPreview.this;
        super();
    }
}
