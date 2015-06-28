// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.hardware.Camera;
import com.waze.AppService;
import com.waze.utils.ImageUtils;
import java.io.IOException;

// Referenced classes of package com.waze.ifs.ui:
//            CameraPreview

private final class <init>
    implements android.hardware.init>
{
    private final class ProcessCapture
        implements Runnable
    {

        private final byte aData[];
        final CameraPreview.CaptureCallback this$1;

        public void run()
        {
            int i = CameraPreview.Exif.getOrientation(aData);
            Bitmap bitmap = BitmapFactory.decodeByteArray(aData, 0, aData.length);
            if (bitmap != null)
            {
                Bitmap bitmap1;
                if (CameraPreview.access$4(this$0) == 0.0F)
                {
                    bitmap1 = Bitmap.createScaledBitmap(bitmap, CameraPreview.CaptureParams.access$0(CameraPreview.access$0()), CameraPreview.CaptureParams.access$1(CameraPreview.access$0()), true);
                    if (bitmap1 != bitmap)
                    {
                        bitmap.recycle();
                    }
                } else
                {
                    bitmap1 = bitmap;
                }
                if (CameraPreview.CaptureParams.access$0(CameraPreview.access$0()) > CameraPreview.CaptureParams.access$1(CameraPreview.access$0()) && bitmap1.getHeight() < bitmap1.getWidth() || CameraPreview.CaptureParams.access$0(CameraPreview.access$0()) < CameraPreview.CaptureParams.access$1(CameraPreview.access$0()) && bitmap1.getHeight() > bitmap1.getWidth())
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
                if (CameraPreview.access$4(this$0) > 0.0F)
                {
                    CameraPreview.access$5(this$0, Bitmap.createBitmap(bitmap1, (int)((float)bitmap1.getWidth() * CameraPreview.access$1(this$0)), (int)((float)bitmap1.getHeight() * CameraPreview.access$2(this$0)), (int)((float)bitmap1.getWidth() * CameraPreview.access$3(this$0)), (int)((float)bitmap1.getHeight() * CameraPreview.access$4(this$0))));
                    bitmap1.recycle();
                } else
                {
                    CameraPreview.access$5(this$0, bitmap1);
                }
                CameraPreview.access$7(this$0, CameraPreview.access$6(this$0), android.graphics.Bitmap.CompressFormat.JPEG);
                CameraPreview.access$8(this$0, 2);
            } else
            {
                CameraPreview.access$8(this$0, 3);
            }
            AppService.Post(new Runnable() {

                final ProcessCapture this$2;

                public void run()
                {
                    CameraPreview camerapreview = this$0;
                    boolean flag;
                    if (CameraPreview.access$9(this$0) == 2)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    CameraPreview.access$10(camerapreview, flag);
                }

            
            {
                this$2 = ProcessCapture.this;
                super();
            }
            });
        }


        private ProcessCapture(byte abyte0[])
        {
            this$1 = CameraPreview.CaptureCallback.this;
            super();
            aData = abyte0;
        }

        ProcessCapture(byte abyte0[], ProcessCapture processcapture)
        {
            this(abyte0);
        }
    }

    private final class ProcessCaptureFullSize
        implements Runnable
    {

        private final byte aData[];
        final CameraPreview.CaptureCallback this$1;

        public void run()
        {
            int i;
            android.graphics.BitmapFactory.Options options;
            i = CameraPreview.Exif.getOrientation(aData);
            options = new android.graphics.BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(aData, 0, aData.length, options);
            boolean flag;
            boolean flag1;
            Rect rect1;
            if (CameraPreview.CaptureParams.access$0(CameraPreview.access$0()) > CameraPreview.CaptureParams.access$1(CameraPreview.access$0()))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (options.outHeight > options.outWidth)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag != flag1) goto _L2; else goto _L1
_L1:
            rect1 = new Rect((int)((float)options.outWidth * CameraPreview.access$1(this$0)), (int)((float)options.outHeight * CameraPreview.access$2(this$0)), (int)((float)options.outWidth * (CameraPreview.access$1(this$0) + CameraPreview.access$3(this$0))), (int)((float)options.outHeight * (CameraPreview.access$2(this$0) + CameraPreview.access$4(this$0))));
            CameraPreview.access$5(this$0, BitmapRegionDecoder.newInstance(aData, 0, aData.length, true).decodeRegion(rect1, null));
            if (i == 0)
            {
                break MISSING_BLOCK_LABEL_232;
            }
            CameraPreview.access$5(this$0, ImageUtils.rotate(CameraPreview.access$6(this$0), i));
_L3:
            CameraPreview.access$7(this$0, CameraPreview.access$6(this$0), android.graphics.Bitmap.CompressFormat.JPEG);
_L4:
            Rect rect;
            IOException ioexception;
            if (CameraPreview.access$6(this$0) != null)
            {
                CameraPreview.access$8(this$0, 2);
            } else
            {
                CameraPreview.access$8(this$0, 3);
            }
            AppService.Post(new Runnable() {

                final ProcessCaptureFullSize this$2;

                public void run()
                {
                    CameraPreview camerapreview = this$0;
                    boolean flag;
                    if (CameraPreview.access$9(this$0) == 2)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    CameraPreview.access$10(camerapreview, flag);
                }

            
            {
                this$2 = ProcessCaptureFullSize.this;
                super();
            }
            });
            return;
_L2:
            rect = new Rect((int)((float)options.outWidth * CameraPreview.access$2(this$0)), (int)((float)options.outHeight * CameraPreview.access$1(this$0)), (int)((float)options.outWidth * (CameraPreview.access$2(this$0) + CameraPreview.access$4(this$0))), (int)((float)options.outHeight * (CameraPreview.access$1(this$0) + CameraPreview.access$3(this$0))));
            CameraPreview.access$5(this$0, BitmapRegionDecoder.newInstance(aData, 0, aData.length, true).decodeRegion(rect, null));
            if (i == 90 || i == 270)
            {
                i -= 90;
            }
            CameraPreview.access$5(this$0, ImageUtils.rotate(CameraPreview.access$6(this$0), i + 90));
              goto _L3
            ioexception;
            ioexception.printStackTrace();
              goto _L4
        }


        private ProcessCaptureFullSize(byte abyte0[])
        {
            this$1 = CameraPreview.CaptureCallback.this;
            super();
            aData = abyte0;
        }

        ProcessCaptureFullSize(byte abyte0[], ProcessCaptureFullSize processcapturefullsize)
        {
            this(abyte0);
        }
    }


    final CameraPreview this$0;

    public void onPictureTaken(byte abyte0[], Camera camera)
    {
        Thread thread;
        if (cess._mth2(CameraPreview.access$0()))
        {
            thread = new Thread(new ProcessCaptureFullSize(abyte0, null));
        } else
        {
            thread = new Thread(new ProcessCapture(abyte0, null));
        }
        thread.start();
        CameraPreview.access$11(CameraPreview.this).stopPreview();
    }


    private ProcessCaptureFullSize()
    {
        this$0 = CameraPreview.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
