// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.hardware.Camera;
import android.util.AttributeSet;
import android.view.Display;
import android.view.KeyEvent;
import android.view.OrientationEventListener;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.WindowManager;
import com.waze.AppService;
import com.waze.Logger;
import com.waze.utils.ImageUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;

public class CameraPreview extends SurfaceView
    implements android.view.SurfaceHolder.Callback
{
    public static interface CameraCallbacks
    {

        public abstract void onCapture(boolean flag);

        public abstract void onError();

        public abstract void onSize(android.hardware.Camera.Size size);
    }

    private final class CaptureCallback
        implements android.hardware.Camera.PictureCallback
    {

        final CameraPreview this$0;

        public void onPictureTaken(byte abyte0[], Camera camera)
        {
            Thread thread;
            if (CameraPreview.mCaptureParams.mMaximizeCapture)
            {
                thread = new Thread(new ProcessCaptureFullSize(abyte0, null));
            } else
            {
                thread = new Thread(new ProcessCapture(abyte0, null));
            }
            thread.start();
            mCamera.stopPreview();
        }


        private CaptureCallback()
        {
            this$0 = CameraPreview.this;
            super();
        }

        CaptureCallback(CaptureCallback capturecallback)
        {
            this();
        }
    }

    private final class CaptureCallback.ProcessCapture
        implements Runnable
    {

        private final byte aData[];
        final CaptureCallback this$1;

        public void run()
        {
            int i = Exif.getOrientation(aData);
            Bitmap bitmap = BitmapFactory.decodeByteArray(aData, 0, aData.length);
            if (bitmap != null)
            {
                Bitmap bitmap1;
                if (mHeight == 0.0F)
                {
                    bitmap1 = Bitmap.createScaledBitmap(bitmap, CameraPreview.mCaptureParams.mImageHeight, CameraPreview.mCaptureParams.mImageWidth, true);
                    if (bitmap1 != bitmap)
                    {
                        bitmap.recycle();
                    }
                } else
                {
                    bitmap1 = bitmap;
                }
                if (CameraPreview.mCaptureParams.mImageHeight > CameraPreview.mCaptureParams.mImageWidth && bitmap1.getHeight() < bitmap1.getWidth() || CameraPreview.mCaptureParams.mImageHeight < CameraPreview.mCaptureParams.mImageWidth && bitmap1.getHeight() > bitmap1.getWidth())
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
                if (mHeight > 0.0F)
                {
                    mBitmapOut = Bitmap.createBitmap(bitmap1, (int)((float)bitmap1.getWidth() * mLeft), (int)((float)bitmap1.getHeight() * mTop), (int)((float)bitmap1.getWidth() * mWidth), (int)((float)bitmap1.getHeight() * mHeight));
                    bitmap1.recycle();
                } else
                {
                    mBitmapOut = bitmap1;
                }
                compressToBuffer(mBitmapOut, android.graphics.Bitmap.CompressFormat.JPEG);
                mCaptureStatus = 2;
            } else
            {
                mCaptureStatus = 3;
            }
            AppService.Post(new Runnable() {

                final CaptureCallback.ProcessCapture this$2;

                public void run()
                {
                    CameraPreview camerapreview = _fld0;
                    boolean flag;
                    if (mCaptureStatus == 2)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    camerapreview.callOnCaptureListener(flag);
                }

            
            {
                this$2 = CaptureCallback.ProcessCapture.this;
                super();
            }
            });
        }


        private CaptureCallback.ProcessCapture(byte abyte0[])
        {
            this$1 = CaptureCallback.this;
            super();
            aData = abyte0;
        }

        CaptureCallback.ProcessCapture(byte abyte0[], CaptureCallback.ProcessCapture processcapture)
        {
            this(abyte0);
        }
    }

    private final class CaptureCallback.ProcessCaptureFullSize
        implements Runnable
    {

        private final byte aData[];
        final CaptureCallback this$1;

        public void run()
        {
            int i;
            android.graphics.BitmapFactory.Options options;
            i = Exif.getOrientation(aData);
            options = new android.graphics.BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(aData, 0, aData.length, options);
            boolean flag;
            boolean flag1;
            Rect rect1;
            if (CameraPreview.mCaptureParams.mImageHeight > CameraPreview.mCaptureParams.mImageWidth)
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
            rect1 = new Rect((int)((float)options.outWidth * mLeft), (int)((float)options.outHeight * mTop), (int)((float)options.outWidth * (mLeft + mWidth)), (int)((float)options.outHeight * (mTop + mHeight)));
            mBitmapOut = BitmapRegionDecoder.newInstance(aData, 0, aData.length, true).decodeRegion(rect1, null);
            if (i == 0)
            {
                break MISSING_BLOCK_LABEL_232;
            }
            mBitmapOut = ImageUtils.rotate(mBitmapOut, i);
_L3:
            compressToBuffer(mBitmapOut, android.graphics.Bitmap.CompressFormat.JPEG);
_L4:
            Rect rect;
            IOException ioexception;
            if (mBitmapOut != null)
            {
                mCaptureStatus = 2;
            } else
            {
                mCaptureStatus = 3;
            }
            AppService.Post(new Runnable() {

                final CaptureCallback.ProcessCaptureFullSize this$2;

                public void run()
                {
                    CameraPreview camerapreview = _fld0;
                    boolean flag;
                    if (mCaptureStatus == 2)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    camerapreview.callOnCaptureListener(flag);
                }

            
            {
                this$2 = CaptureCallback.ProcessCaptureFullSize.this;
                super();
            }
            });
            return;
_L2:
            rect = new Rect((int)((float)options.outWidth * mTop), (int)((float)options.outHeight * mLeft), (int)((float)options.outWidth * (mTop + mHeight)), (int)((float)options.outHeight * (mLeft + mWidth)));
            mBitmapOut = BitmapRegionDecoder.newInstance(aData, 0, aData.length, true).decodeRegion(rect, null);
            if (i == 90 || i == 270)
            {
                i -= 90;
            }
            mBitmapOut = ImageUtils.rotate(mBitmapOut, i + 90);
              goto _L3
            ioexception;
            ioexception.printStackTrace();
              goto _L4
        }


        private CaptureCallback.ProcessCaptureFullSize(byte abyte0[])
        {
            this$1 = CaptureCallback.this;
            super();
            aData = abyte0;
        }

        CaptureCallback.ProcessCaptureFullSize(byte abyte0[], CaptureCallback.ProcessCaptureFullSize processcapturefullsize)
        {
            this(abyte0);
        }
    }

    public static class CaptureParams
    {

        private CameraCallbacks mCallback;
        private boolean mCaptureCallbackActive;
        private String mImageFile;
        private String mImageFolder;
        private int mImageHeight;
        private int mImageQuality;
        private int mImageWidth;
        private boolean mMaximizeCapture;

        public void setCallback(CameraCallbacks cameracallbacks)
        {
            mCallback = cameracallbacks;
        }

        public void setImageFile(String s)
        {
            mImageFile = s;
        }

        public void setImageFolder(String s)
        {
            mImageFolder = s;
        }

        public void setImageHeight(int i)
        {
            mImageHeight = i;
        }

        public void setImageQuality(int i)
        {
            mImageQuality = i;
        }

        public void setImageWidth(int i)
        {
            mImageWidth = i;
        }

        public void setMaximizeCapture(boolean flag)
        {
            mMaximizeCapture = flag;
        }










        public CaptureParams()
        {
            mImageWidth = 256;
            mImageHeight = 256;
            mImageQuality = 50;
            mImageFolder = "./";
            mImageFile = "temp.jpg";
            mCallback = null;
            mCaptureCallbackActive = true;
            mMaximizeCapture = false;
        }
    }

    private static final class CompatabilityWrapper
    {

        private static final int MAX_CAPTURE_SIZE = 0x800000;

        public static android.hardware.Camera.Size getBestFitSize(int i, int j, boolean flag, android.hardware.Camera.Parameters parameters)
        {
            List list;
            int k;
            float f;
            int l;
            list = parameters.getSupportedPictureSizes();
            k = -1;
            f = 3.402823E+38F;
            if (i < j)
            {
                int i1 = i;
                i = j;
                j = i1;
            }
            l = 0;
_L2:
            android.hardware.Camera.Size size;
            if (l >= list.size())
            {
                return (android.hardware.Camera.Size)list.get(k);
            }
            size = (android.hardware.Camera.Size)list.get(l);
            if (size.width >= i && size.height >= j)
            {
                break; /* Loop/switch isn't completed */
            }
_L4:
            l++;
            if (true) goto _L2; else goto _L1
_L1:
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_204;
            }
            if (size.width * size.height > 0x800000) goto _L4; else goto _L3
_L3:
            if (k < 0) goto _L6; else goto _L5
_L5:
            android.hardware.Camera.Size size1 = (android.hardware.Camera.Size)list.get(k);
            if (size.width < size1.width && size.height < size1.height) goto _L4; else goto _L6
_L6:
            float f1;
            float f2 = (float)size.width / (float)size.height;
            f1 = Math.abs((float)i / (float)j - f2);
_L7:
            if (f1 <= f)
            {
                k = l;
                f = f1;
            }
              goto _L4
            f1 = (float)(Math.sqrt((double)size.width - (double)i) + Math.sqrt((double)size.height - (double)j));
              goto _L7
        }

        public static android.hardware.Camera.Size getBestPreviewSize(int i, int j, android.hardware.Camera.Parameters parameters)
        {
            List list;
            int k;
            int l;
            int i1;
            list = parameters.getSupportedPreviewSizes();
            k = 0;
            l = 0x7fffffff;
            if (i < j)
            {
                int k1 = i;
                i = j;
                j = k1;
            }
            i1 = 0;
_L2:
            android.hardware.Camera.Size size;
            if (i1 >= list.size())
            {
                return (android.hardware.Camera.Size)list.get(k);
            }
            size = (android.hardware.Camera.Size)list.get(i1);
            if (size.width >= i && size.height >= j)
            {
                break; /* Loop/switch isn't completed */
            }
_L3:
            i1++;
            if (true) goto _L2; else goto _L1
_L1:
            int j1 = (int)(Math.sqrt((double)size.width - (double)i) + Math.sqrt((double)size.height - (double)j));
            if (j1 < l)
            {
                k = i1;
                l = j1;
            }
              goto _L3
            if (true) goto _L2; else goto _L4
_L4:
        }

        private CompatabilityWrapper()
        {
        }
    }

    public static class Exif
    {

        public static int getOrientation(byte abyte0[])
        {
            boolean flag = true;
            if (abyte0 != null) goto _L2; else goto _L1
_L1:
            return 0;
_L2:
            int i = 0;
_L9:
            int j;
            int k;
            int l;
            j = i + 3;
            k = abyte0.length;
            l = 0;
            if (j >= k) goto _L4; else goto _L3
_L3:
            int k2 = i + 1;
            if ((0xff & abyte0[i]) == 255) goto _L6; else goto _L5
_L5:
            i = k2;
              goto _L4
_L6:
label0:
            {
                l2 = 0xff & abyte0[k2];
                if (l2 != 255)
                {
                    break label0;
                }
                i = k2;
            }
            continue; /* Loop/switch isn't completed */
            for (i = k2 + 1; l2 == 216 || l2 == flag; i = k2 + 1)
            {
                continue; /* Loop/switch isn't completed */
            }

            l = 0;
            if (l2 != 217)
            {
                l = 0;
                if (l2 != 218)
                {
label1:
                    {
                        i3 = pack(abyte0, i, 2, false);
                        if (i3 < 2 || i + i3 > abyte0.length)
                        {
                            Logger.e("Invalid length");
                            return 0;
                        }
                        if (l2 != 225 || i3 < 8 || pack(abyte0, i + 2, 4, false) != 0x45786966 || pack(abyte0, i + 6, 2, false) != 0)
                        {
                            break label1;
                        }
                        i += 8;
                        l = i3 - 8;
                    }
                }
            }
            if (true) goto _L4; else goto _L7
_L7:
            break; /* Loop/switch isn't completed */
            i += i3;
            if (true) goto _L9; else goto _L8
_L4:
            int k1;
            int l1;
            int i2;
            if (l <= 8)
            {
                break; /* Loop/switch isn't completed */
            }
            int i1 = pack(abyte0, i, 4, false);
            int l2;
            int i3;
            if (i1 != 0x49492a00 && i1 != 0x4d4d002a)
            {
                Logger.e("Invalid byte order");
                return 0;
            }
            int j1;
            if (i1 != 0x49492a00)
            {
                flag = false;
            }
            j1 = 2 + pack(abyte0, i + 4, 4, flag);
            if (j1 < 10 || j1 > l)
            {
                Logger.e("Invalid offset");
                return 0;
            }
            k1 = i + j1;
            l1 = l - j1;
            i2 = pack(abyte0, k1 - 2, 2, flag);
_L11:
            int j2 = i2 - 1;
            if (i2 > 0 && l1 >= 12) goto _L10; else goto _L8
_L8:
            Logger.i("Orientation not found");
            return 0;
_L10:
label2:
            {
                if (pack(abyte0, k1, 2, flag) != 274)
                {
                    break label2;
                }
                switch (pack(abyte0, k1 + 8, 2, flag))
                {
                case 2: // '\002'
                case 4: // '\004'
                case 5: // '\005'
                case 7: // '\007'
                default:
                    Logger.i("Unsupported orientation");
                    return 0;

                case 3: // '\003'
                    return 180;

                case 6: // '\006'
                    return 90;

                case 8: // '\b'
                    return 270;

                case 1: // '\001'
                    break;
                }
            }
              goto _L1
            k1 += 12;
            l1 -= 12;
            i2 = j2;
              goto _L11
        }

        private static int pack(byte abyte0[], int i, int j, boolean flag)
        {
            byte byte0 = 1;
            if (flag)
            {
                i += j - 1;
                byte0 = -1;
            }
            int k = 0;
            int l = j;
            do
            {
                int i1 = l - 1;
                if (l <= 0)
                {
                    return k;
                }
                k = k << 8 | 0xff & abyte0[i];
                i += byte0;
                l = i1;
            } while (true);
        }

        public Exif()
        {
        }
    }

    public static final class FlashMode extends Enum
    {

        public static final FlashMode Auto;
        private static final FlashMode ENUM$VALUES[];
        public static final FlashMode Off;
        public static final FlashMode On;

        public static FlashMode valueOf(String s)
        {
            return (FlashMode)Enum.valueOf(com/waze/ifs/ui/CameraPreview$FlashMode, s);
        }

        public static FlashMode[] values()
        {
            FlashMode aflashmode[] = ENUM$VALUES;
            int i = aflashmode.length;
            FlashMode aflashmode1[] = new FlashMode[i];
            System.arraycopy(aflashmode, 0, aflashmode1, 0, i);
            return aflashmode1;
        }

        static 
        {
            Off = new FlashMode("Off", 0);
            On = new FlashMode("On", 1);
            Auto = new FlashMode("Auto", 2);
            FlashMode aflashmode[] = new FlashMode[3];
            aflashmode[0] = Off;
            aflashmode[1] = On;
            aflashmode[2] = Auto;
            ENUM$VALUES = aflashmode;
        }

        private FlashMode(String s, int i)
        {
            super(s, i);
        }
    }


    private static final int CAMERA_AUTO_FOCUS_TIMEOUT = 5000;
    private static final int CAMERA_CAPTURE_STATUS_FAILURE = 3;
    private static final int CAMERA_CAPTURE_STATUS_IN_PROCESS = 1;
    private static final int CAMERA_CAPTURE_STATUS_NONE = 0;
    private static final int CAMERA_CAPTURE_STATUS_SUCCESS = 2;
    private static final int CAMERA_PREVIEW_STATUS_ACTIVE = 2;
    private static final int CAMERA_PREVIEW_STATUS_NOT_READY = 0;
    private static final int CAMERA_PREVIEW_STATUS_PREPARED = 1;
    private static final boolean THUMBNAIL_FORMAT_BGRA = true;
    private static CaptureParams mCaptureParams = new CaptureParams();
    private Bitmap mBitmapOut;
    private ByteArrayOutputStream mBufOS;
    private Camera mCamera;
    private int mCaptureStatus;
    Context mContext;
    private String mFlashModeValue;
    private float mHeight;
    private SurfaceHolder mHolder;
    private android.hardware.Camera.CameraInfo mInfo;
    private float mLeft;
    private boolean mPreserveWholeImage;
    private int mPreviewStatus;
    private float mTop;
    private float mWidth;
    private OrientationEventListener orientationListener;

    public CameraPreview(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mPreviewStatus = 0;
        mCaptureStatus = 0;
        mPreserveWholeImage = false;
        mWidth = 1.0F;
        mHeight = 1.0F;
        mFlashModeValue = "auto";
        mContext = context;
        orientationListener = createOrientationListener();
        setFocusableInTouchMode(true);
        mHolder = getHolder();
        mHolder.addCallback(this);
        mHolder.setType(3);
    }

    public static void CaptureConfig(int i, int j, boolean flag, int k, String s, String s1, CameraCallbacks cameracallbacks)
    {
        mCaptureParams.setImageWidth(i);
        mCaptureParams.setImageHeight(j);
        mCaptureParams.setImageQuality(k);
        mCaptureParams.setImageFolder(s);
        mCaptureParams.setImageFile(s1);
        mCaptureParams.setCallback(cameracallbacks);
        mCaptureParams.setMaximizeCapture(flag);
    }

    private void callOnCaptureListener(boolean flag)
    {
        if (mCaptureParams.mCallback != null && mCaptureParams.mCaptureCallbackActive)
        {
            mCaptureParams.mCaptureCallbackActive = false;
            mCaptureParams.mCallback.onCapture(flag);
        }
    }

    private void compressToBuffer(Bitmap bitmap, android.graphics.Bitmap.CompressFormat compressformat)
    {
        synchronized (mBufOS)
        {
            mBufOS.reset();
            bitmap.compress(compressformat, mCaptureParams.mImageQuality, mBufOS);
        }
        return;
        exception;
        bytearrayoutputstream;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private OrientationEventListener createOrientationListener()
    {
        return new OrientationEventListener(mContext) {

            int lastOrintation;
            final CameraPreview this$0;

            public void onOrientationChanged(int i)
            {
                if (mCamera == null) goto _L2; else goto _L1
_L1:
                if (mInfo == null)
                {
                    return;
                }
                if (i == -1) goto _L2; else goto _L3
_L3:
                int j = 90 * ((i + 45) / 90);
                if (lastOrintation == j) goto _L2; else goto _L4
_L4:
                android.hardware.Camera.Parameters parameters;
                int k;
                lastOrintation = j;
                parameters = mCamera.getParameters();
                k = ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getRotation();
                if (k != 0) goto _L6; else goto _L5
_L5:
                int l;
                char c;
                l = 0;
                c = 'Z';
_L9:
                int i1;
                parameters.setRotation(c);
                if (mInfo.facing != 1)
                {
                    break MISSING_BLOCK_LABEL_172;
                }
                i1 = (360 - (l + mInfo.orientation) % 360) % 360;
_L7:
                mCamera.setDisplayOrientation(i1);
                mCamera.setParameters(parameters);
                return;
                try
                {
                    i1 = (360 + (mInfo.orientation - l)) % 360;
                }
                catch (Exception exception)
                {
                    return;
                }
                  goto _L7
_L2:
                return;
_L6:
                if (k == 1)
                {
                    l = 90;
                    c = '\0';
                } else
                if (k == 2)
                {
                    l = 180;
                    c = '\u010E';
                } else
                {
                    l = 0;
                    c = '\0';
                    if (k == 3)
                    {
                        l = 270;
                        c = '\264';
                    }
                }
                if (true) goto _L9; else goto _L8
_L8:
            }

            
            {
                this$0 = CameraPreview.this;
                super(context);
                lastOrintation = -1;
            }
        };
    }

    private void sizeCallback(android.hardware.Camera.Size size)
    {
        if (mCaptureParams.mCallback != null)
        {
            mCaptureParams.mCallback.onSize(size);
        }
    }

    public void capture()
    {
        try
        {
            mCaptureStatus = 1;
            mCamera.cancelAutoFocus();
            mCamera.autoFocus(new android.hardware.Camera.AutoFocusCallback() {

                final CameraPreview this$0;

                public void onAutoFocus(boolean flag, Camera camera)
                {
                    try
                    {
                        Logger.v_("capture", (new StringBuilder("autoFocus done, success=")).append(flag).toString());
                        mCamera.takePicture(null, null, new CaptureCallback(null));
                        return;
                    }
                    catch (Exception exception1)
                    {
                        Logger.e("onAutoFocus", exception1);
                    }
                    mCaptureStatus = 3;
                    callOnCaptureListener(false);
                }

            
            {
                this$0 = CameraPreview.this;
                super();
            }
            });
            postDelayed(new Runnable() {

                final CameraPreview this$0;

                public void run()
                {
                    if (mCaptureStatus != 1)
                    {
                        break MISSING_BLOCK_LABEL_50;
                    }
                    Logger.w("capture() - autoFocus timed out");
                    mCamera.cancelAutoFocus();
                    mCamera.takePicture(null, null, new CaptureCallback(null));
                    return;
                    Exception exception1;
                    exception1;
                    Logger.e("autoFocus timeout", exception1);
                    mCaptureStatus = 3;
                    callOnCaptureListener(false);
                    return;
                }

            
            {
                this$0 = CameraPreview.this;
                super();
            }
            }, 5000L);
            return;
        }
        catch (Exception exception)
        {
            Logger.e("Error in capturing the picture", exception);
        }
        mPreviewStatus = 0;
        mCaptureStatus = 0;
        callOnCaptureListener(false);
    }

    public void focus()
    {
        if (mCamera == null)
        {
            return;
        }
        mCamera.cancelAutoFocus();
        android.hardware.Camera.Parameters parameters = mCamera.getParameters();
        if (parameters.getMaxNumFocusAreas() > 0)
        {
            parameters.setFocusAreas(null);
        }
        try
        {
            mCamera.autoFocus(null);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void focus(float f, float f1)
    {
        if (mCamera == null)
        {
            return;
        }
        mCamera.cancelAutoFocus();
        android.hardware.Camera.Parameters parameters = mCamera.getParameters();
        if (parameters.getMaxNumFocusAreas() > 0)
        {
            ArrayList arraylist = new ArrayList(1);
            Rect rect = new Rect();
            rect.left = Math.max(-1000, -1050 + (int)(2000F * f));
            rect.right = Math.min(1000, -950 + (int)(2000F * f));
            rect.top = Math.max(-1000, -1050 + (int)(2000F * f1));
            rect.bottom = Math.min(1000, -950 + (int)(2000F * f1));
            arraylist.add(new android.hardware.Camera.Area(rect, 1000));
            parameters.setFocusMode("auto");
            parameters.setFocusAreas(arraylist);
            if (parameters.getMaxNumMeteringAreas() > 0)
            {
                parameters.setMeteringAreas(arraylist);
            }
        }
        try
        {
            mCamera.autoFocus(null);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public int getBufSize()
    {
        int i;
        synchronized (mBufOS)
        {
            i = mBufOS.size();
        }
        return i;
        exception;
        bytearrayoutputstream;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public byte[] getCaptureBuffer()
    {
        byte abyte0[];
        synchronized (mBufOS)
        {
            abyte0 = mBufOS.toByteArray();
        }
        return abyte0;
        exception;
        bytearrayoutputstream;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean getCaptureStatus()
    {
        return mCaptureStatus == 2;
    }

    public boolean getPreviewActive()
    {
        return mPreviewStatus == 2;
    }

    public int[] getThumbnail(int i, int j)
    {
        Paint paint = new Paint();
        if (mBitmapOut == null)
        {
            return null;
        }
        int k;
        int l;
        Bitmap bitmap;
        Bitmap bitmap1;
        float f;
        float f1;
        ColorMatrix colormatrix;
        Canvas canvas;
        int ai[];
        if (mPreserveWholeImage)
        {
            if (i / mCaptureParams.mImageWidth < j / mCaptureParams.mImageHeight)
            {
                k = i;
                l = (j * i) / mCaptureParams.mImageWidth;
            } else
            {
                l = j;
                k = (j * i) / mCaptureParams.mImageHeight;
            }
        } else
        {
            k = i;
            l = (i * mCaptureParams.mImageHeight) / mCaptureParams.mImageWidth;
        }
        synchronized (mBufOS)
        {
            bitmap = Bitmap.createScaledBitmap(mBitmapOut, k, l, true);
        }
        if (l > j)
        {
            int i1 = (l - j) / 2;
            (new Canvas(bitmap)).clipRect(0, i1 - 1, -1 + bitmap.getWidth(), bitmap.getHeight() - i1);
        }
        bitmap1 = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        f = (i - k) / 2;
        f1 = (j - l) / 2;
        colormatrix = new ColorMatrix();
        colormatrix.set(new float[] {
            0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 0.0F, 
            1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F
        });
        canvas = new Canvas(bitmap1);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColorFilter(new ColorMatrixColorFilter(colormatrix));
        canvas.drawBitmap(bitmap, f, f1, paint);
        ai = new int[j * i];
        bitmap1.getPixels(ai, 0, bitmap1.getWidth(), 0, 0, bitmap1.getWidth(), bitmap1.getHeight());
        bitmap.recycle();
        bitmap1.recycle();
        return ai;
        exception;
        bytearrayoutputstream;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag = false;
        i;
        JVM INSTR lookupswitch 2: default 28
    //                   23: 41
    //                   27: 41;
           goto _L1 _L2 _L2
_L1:
        if (!flag)
        {
            flag = super.onKeyDown(i, keyevent);
        }
        return flag;
_L2:
        int j = mCaptureStatus;
        flag = false;
        if (j == 0)
        {
            capture();
            flag = true;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void onOrientationChanged(int i)
    {
    }

    public void releaseBuf()
    {
        ByteArrayOutputStream bytearrayoutputstream = mBufOS;
        bytearrayoutputstream;
        JVM INSTR monitorenter ;
        mBufOS.close();
        mBufOS = null;
_L1:
        return;
        Exception exception1;
        exception1;
        Logger.e("Cannot release the buffer. ", exception1);
        exception1.printStackTrace();
          goto _L1
        Exception exception;
        exception;
        bytearrayoutputstream;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void reset()
    {
        mCaptureStatus = 0;
        mPreviewStatus = 2;
        mCaptureParams.mCaptureCallbackActive = true;
        if (mCamera != null)
        {
            mCamera.startPreview();
        }
    }

    public void saveToFile()
    {
        if (mBufOS.size() <= 0)
        {
            return;
        }
        FileOutputStream fileoutputstream;
        FileChannel filechannel;
        String s = new String(mCaptureParams.mImageFolder);
        String s1 = new String(mCaptureParams.mImageFile);
        File file = new File((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s))).append(String.valueOf("/")).toString()))).append(s1).toString());
        if (file.getParentFile() != null)
        {
            file.getParentFile().mkdirs();
        }
        fileoutputstream = new FileOutputStream(file);
        filechannel = fileoutputstream.getChannel();
        synchronized (mBufOS)
        {
            filechannel.write(ByteBuffer.wrap(mBufOS.toByteArray()));
        }
        try
        {
            fileoutputstream.close();
            return;
        }
        catch (Exception exception)
        {
            Logger.e("Error in writing the file to the disk. ", exception);
            exception.printStackTrace();
            return;
        }
        exception1;
        bytearrayoutputstream;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public void setCaptureRect(Float float1, Float float2, Float float3, Float float4)
    {
        mWidth = float3.floatValue();
        mLeft = float1.floatValue();
        mTop = float2.floatValue();
        mHeight = float4.floatValue();
    }

    public void setFlash(FlashMode flashmode)
    {
        mFlashModeValue = null;
        android.hardware.Camera.Parameters parameters;
        if (flashmode == FlashMode.Off)
        {
            mFlashModeValue = "off";
        } else
        {
            if (flashmode != FlashMode.On)
            {
                continue;
            }
            mFlashModeValue = "on";
        }
_L2:
        if (mCamera == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        parameters = mCamera.getParameters();
        parameters.setFlashMode(mFlashModeValue);
        mCamera.setParameters(parameters);
        do
        {
            return;
        } while (flashmode != FlashMode.Auto);
        mFlashModeValue = "auto";
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        if (mPreviewStatus != 1) goto _L2; else goto _L1
_L1:
        if (mCaptureParams.mImageWidth < 0 && mCaptureParams.mImageHeight < 0) goto _L4; else goto _L3
_L3:
        android.hardware.Camera.Parameters parameters;
        int l;
        parameters = mCamera.getParameters();
        parameters.setFlashMode(mFlashModeValue);
        parameters.setFocusMode("auto");
        parameters.setWhiteBalance("auto");
        android.hardware.Camera.Size size = CompatabilityWrapper.getBestPreviewSize(j, k, parameters);
        parameters.setPreviewSize(size.width, size.height);
        sizeCallback(size);
        android.hardware.Camera.Size size1 = CompatabilityWrapper.getBestFitSize(mCaptureParams.mImageWidth, mCaptureParams.mImageHeight, mCaptureParams.mMaximizeCapture, parameters);
        parameters.setPictureSize(size1.width, size1.height);
        mInfo = new android.hardware.Camera.CameraInfo();
        Camera.getCameraInfo(0, mInfo);
        l = ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getRotation();
        if (l != 0) goto _L6; else goto _L5
_L5:
        int i1;
        char c;
        i1 = 0;
        c = 'Z';
_L10:
        int j1;
        parameters.setRotation(c);
        if (mInfo.facing != 1)
        {
            break MISSING_BLOCK_LABEL_261;
        }
        j1 = (360 - (i1 + mInfo.orientation) % 360) % 360;
_L7:
        mCamera.setDisplayOrientation(j1);
        mCamera.setParameters(parameters);
        mCaptureStatus = 0;
        mPreviewStatus = 2;
        mCamera.startPreview();
        return;
        j1 = (360 + (mInfo.orientation - i1)) % 360;
        if (true) goto _L7; else goto _L4
_L4:
        try
        {
            Logger.w((new StringBuilder("Requested image dimensions are invalid. Width: ")).append(mCaptureParams.mImageWidth).append(". Height: ").append(mCaptureParams.mImageHeight).toString());
            return;
        }
        catch (Exception exception)
        {
            Logger.e("Error in surfaceChanged", exception);
            exception.printStackTrace();
            mPreviewStatus = 0;
            mCaptureStatus = 0;
        }
        if (mCaptureParams.mCallback != null)
        {
            mCaptureParams.mCallback.onError();
            return;
        }
          goto _L8
_L2:
        Logger.w("Camera preivew is not ready!");
_L8:
        return;
_L6:
        if (l == 1)
        {
            i1 = 90;
            c = '\0';
        } else
        if (l == 2)
        {
            i1 = 180;
            c = '\u010E';
        } else
        {
            i1 = 0;
            c = '\0';
            if (l == 3)
            {
                i1 = 270;
                c = '\264';
            }
        }
        if (true) goto _L10; else goto _L9
_L9:
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        System.gc();
        mCamera = Camera.open();
        mCamera.setPreviewDisplay(surfaceholder);
        orientationListener.enable();
        mBufOS = new ByteArrayOutputStream();
        mTop = 0.0F;
        mLeft = 0.0F;
        mHeight = 1.0F;
        mWidth = 1.0F;
        mCaptureParams.mCaptureCallbackActive = true;
        mPreviewStatus = 1;
_L1:
        return;
        Exception exception;
        exception;
        Logger.e("Error in creating the surface", exception);
        mPreviewStatus = 0;
        mCaptureStatus = 0;
        if (mCaptureParams.mCallback != null)
        {
            mCaptureParams.mCallback.onError();
            return;
        }
          goto _L1
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        orientationListener.disable();
        if (mCamera != null)
        {
            mCamera.stopPreview();
            mCamera.release();
            mCamera = null;
        }
        if (mBufOS != null)
        {
            releaseBuf();
        }
        mPreviewStatus = 0;
        return;
        Exception exception1;
        exception1;
        Logger.e("Error in destroying the surface", exception1);
        if (mCaptureParams.mCallback != null)
        {
            mCaptureParams.mCallback.onError();
        }
        mPreviewStatus = 0;
        return;
        Exception exception;
        exception;
        mPreviewStatus = 0;
        throw exception;
    }














}
