// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.waze.AppService;
import com.waze.utils.ImageUtils;

// Referenced classes of package com.waze.ifs.ui:
//            CameraPreview

private final class <init>
    implements Runnable
{

    private final byte aData[];
    final this._cls1 this$1;

    public void run()
    {
        int i = <init>(aData);
        Bitmap bitmap = BitmapFactory.decodeByteArray(aData, 0, aData.length);
        if (bitmap != null)
        {
            Bitmap bitmap1;
            if (CameraPreview.access$4(aData(this._cls1.this)) == 0.0F)
            {
                bitmap1 = Bitmap.createScaledBitmap(bitmap, this._mth1(CameraPreview.access$0()), this._mth1(CameraPreview.access$0()), true);
                if (bitmap1 != bitmap)
                {
                    bitmap.recycle();
                }
            } else
            {
                bitmap1 = bitmap;
            }
            if (this._mth1(CameraPreview.access$0()) > this._mth1(CameraPreview.access$0()) && bitmap1.getHeight() < bitmap1.getWidth() || this._mth1(CameraPreview.access$0()) < this._mth1(CameraPreview.access$0()) && bitmap1.getHeight() > bitmap1.getWidth())
            {
                if (i == 90 || i == 270)
                {
                    i -= 90;
                }
                bitmap1 = ImageUtils.rotate(bitmap1, i + 90);
            } else
            if (i != 0)
            {
                bitmap1 = ImageUtils.rotate(bitmap1, i);
            }
            if (CameraPreview.access$4(this._mth1(this._cls1.this)) > 0.0F)
            {
                CameraPreview.access$5(this._mth1(this._cls1.this), Bitmap.createBitmap(bitmap1, (int)((float)bitmap1.getWidth() * CameraPreview.access$1(this._mth1(this._cls1.this))), (int)((float)bitmap1.getHeight() * CameraPreview.access$2(this._mth1(this._cls1.this))), (int)((float)bitmap1.getWidth() * CameraPreview.access$3(this._mth1(this._cls1.this))), (int)((float)bitmap1.getHeight() * CameraPreview.access$4(this._mth1(this._cls1.this)))));
                bitmap1.recycle();
            } else
            {
                CameraPreview.access$5(this._mth1(this._cls1.this), bitmap1);
            }
            CameraPreview.access$7(this._mth1(this._cls1.this), CameraPreview.access$6(this._mth1(this._cls1.this)), android.graphics.his._fld1);
            CameraPreview.access$8(this._mth1(this._cls1.this), 2);
        } else
        {
            CameraPreview.access$8(this._mth1(this._cls1.this), 3);
        }
        AppService.Post(new Runnable() {

            final CameraPreview.CaptureCallback.ProcessCapture this$2;

            public void run()
            {
                CameraPreview camerapreview = CameraPreview.CaptureCallback.access$1(this$1);
                boolean flag;
                if (CameraPreview.access$9(CameraPreview.CaptureCallback.access$1(this$1)) == 2)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                CameraPreview.access$10(camerapreview, flag);
            }

            
            {
                this$2 = CameraPreview.CaptureCallback.ProcessCapture.this;
                super();
            }
        });
    }


    private _cls1.this._cls2(byte abyte0[])
    {
        this$1 = this._cls1.this;
        super();
        aData = abyte0;
    }

    aData(byte abyte0[], aData adata1)
    {
        this(abyte0);
    }
}
