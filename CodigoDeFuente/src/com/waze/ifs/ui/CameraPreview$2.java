// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.hardware.Camera;
import com.waze.Logger;

// Referenced classes of package com.waze.ifs.ui:
//            CameraPreview

class this._cls0
    implements android.hardware.Callback
{

    final CameraPreview this$0;

    public void onAutoFocus(boolean flag, Camera camera)
    {
        try
        {
            Logger.v_("capture", (new StringBuilder("autoFocus done, success=")).append(flag).toString());
            CameraPreview.access$11(CameraPreview.this).takePicture(null, null, new ptureCallback(CameraPreview.this, null));
            return;
        }
        catch (Exception exception)
        {
            Logger.e("onAutoFocus", exception);
        }
        CameraPreview.access$8(CameraPreview.this, 3);
        CameraPreview.access$10(CameraPreview.this, false);
    }

    ptureCallback()
    {
        this$0 = CameraPreview.this;
        super();
    }
}
