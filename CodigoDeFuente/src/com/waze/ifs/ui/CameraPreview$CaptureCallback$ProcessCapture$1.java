// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;


// Referenced classes of package com.waze.ifs.ui:
//            CameraPreview

class this._cls2
    implements Runnable
{

    final this._cls2 this$2;

    public void run()
    {
        CameraPreview camerapreview = this._mth2(cess._mth1(this._cls2.this));
        boolean flag;
        if (CameraPreview.access$9(this._mth2(cess._mth1(this._cls2.this))) == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        CameraPreview.access$10(camerapreview, flag);
    }

    ()
    {
        this$2 = this._cls2.this;
        super();
    }
}
