// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

// Referenced classes of package com.waze.utils:
//            DisplayUtils

public class ImageUtils
{
    public static final class DensityProps extends Enum
    {

        private static final DensityProps ENUM$VALUES[];
        public static final DensityProps HDPI;
        public static final DensityProps LDPI;
        public static final DensityProps MDPI;
        public static final DensityProps XHDPI;
        public static final DensityProps XXHDPI;
        public static final DensityProps XXXHDPI;
        private final String localDir;
        private final float scale;
        private final String serverDir;

        public static DensityProps getEnumByScale(float f)
        {
            if (f < MDPI.getScale())
            {
                return LDPI;
            }
            if (f < HDPI.getScale())
            {
                return MDPI;
            }
            if (f < XHDPI.getScale())
            {
                return HDPI;
            }
            if (f < XXHDPI.getScale())
            {
                return XHDPI;
            }
            if (f < XXXHDPI.getScale())
            {
                return XXHDPI;
            } else
            {
                return XXXHDPI;
            }
        }

        public static DensityProps valueOf(String s)
        {
            return (DensityProps)Enum.valueOf(com/waze/utils/ImageUtils$DensityProps, s);
        }

        public static DensityProps[] values()
        {
            DensityProps adensityprops[] = ENUM$VALUES;
            int i = adensityprops.length;
            DensityProps adensityprops1[] = new DensityProps[i];
            System.arraycopy(adensityprops, 0, adensityprops1, 0, i);
            return adensityprops1;
        }

        public String getLocalDrawableSuffix()
        {
            return localDir;
        }

        public float getScale()
        {
            return scale;
        }

        public String getServerDir()
        {
            return serverDir;
        }

        static 
        {
            LDPI = new DensityProps("LDPI", 0, "ldpi", ".", 0.75F);
            MDPI = new DensityProps("MDPI", 1, "mdpi", ".", 1.0F);
            HDPI = new DensityProps("HDPI", 2, "hdpi", "HD", 1.5F);
            XHDPI = new DensityProps("XHDPI", 3, "xhdpi", "2x", 2.0F);
            XXHDPI = new DensityProps("XXHDPI", 4, "xxhdpi", "2x", 3F);
            XXXHDPI = new DensityProps("XXXHDPI", 5, "xxhdpi", "2x", 4F);
            DensityProps adensityprops[] = new DensityProps[6];
            adensityprops[0] = LDPI;
            adensityprops[1] = MDPI;
            adensityprops[2] = HDPI;
            adensityprops[3] = XHDPI;
            adensityprops[4] = XXHDPI;
            adensityprops[5] = XXXHDPI;
            ENUM$VALUES = adensityprops;
        }

        private DensityProps(String s, int i, String s1, String s2, float f)
        {
            super(s, i);
            localDir = s1;
            serverDir = s2;
            scale = f;
        }
    }


    public static final int DIRECTION_DOWN = 3;
    public static final int DIRECTION_LEFT = 0;
    public static final int DIRECTION_RIGHT = 1;
    public static final int DIRECTION_UP = 2;
    public static final boolean NO_RECYCLE_INPUT = false;
    public static final boolean RECYCLE_INPUT = true;
    private static final String TAG = "Util";
    public static final int UNCONSTRAINED = -1;
    private static android.view.View.OnClickListener sNullOnClickListener;

    private ImageUtils()
    {
    }

    public static void Assert(boolean flag)
    {
        if (!flag)
        {
            throw new AssertionError();
        } else
        {
            return;
        }
    }

    public static void closeSilently(ParcelFileDescriptor parcelfiledescriptor)
    {
        if (parcelfiledescriptor == null)
        {
            return;
        }
        try
        {
            parcelfiledescriptor.close();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public static void closeSilently(Closeable closeable)
    {
        if (closeable == null)
        {
            return;
        }
        try
        {
            closeable.close();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    private static int computeInitialSampleSize(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        double d = options.outWidth;
        double d1 = options.outHeight;
        int k;
        int l;
        if (j == -1)
        {
            k = 1;
        } else
        {
            k = (int)Math.ceil(Math.sqrt((d * d1) / (double)j));
        }
        if (i == -1)
        {
            l = 128;
        } else
        {
            l = (int)Math.min(Math.floor(d / (double)i), Math.floor(d1 / (double)i));
        }
        if (l >= k)
        {
            if (j == -1 && i == -1)
            {
                return 1;
            }
            if (i != -1)
            {
                return l;
            }
        }
        return k;
    }

    public static int computeSampleSize(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int k = computeInitialSampleSize(options, i, j);
        if (k <= 8)
        {
            int l = 1;
            do
            {
                if (l >= k)
                {
                    return l;
                }
                l <<= 1;
            } while (true);
        } else
        {
            return 8 * ((k + 7) / 8);
        }
    }

    public static android.graphics.BitmapFactory.Options createNativeAllocOptions()
    {
        return new android.graphics.BitmapFactory.Options();
    }

    public static boolean equals(String s, String s1)
    {
        return s == s1 || s.equals(s1);
    }

    public static String getImagePath()
    {
        return DensityProps.getEnumByScale(DisplayUtils.scale()).getServerDir();
    }

    public static android.view.View.OnClickListener getNullOnClickListener()
    {
        com/waze/utils/ImageUtils;
        JVM INSTR monitorenter ;
        android.view.View.OnClickListener onclicklistener;
        if (sNullOnClickListener == null)
        {
            sNullOnClickListener = new android.view.View.OnClickListener() {

                public void onClick(View view)
                {
                }

            };
        }
        onclicklistener = sNullOnClickListener;
        com/waze/utils/ImageUtils;
        JVM INSTR monitorexit ;
        return onclicklistener;
        Exception exception;
        exception;
        throw exception;
    }

    public static int indexOf(Object aobj[], Object obj)
    {
        int i = 0;
_L6:
        if (i < aobj.length) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        return i;
_L2:
        if (aobj[i].equals(obj)) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static Bitmap makeBitmap(int i, int j, Uri uri, ContentResolver contentresolver, InputStream inputstream, android.graphics.BitmapFactory.Options options)
    {
        if (inputstream != null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        InputStream inputstream1 = makeInputStream(uri, contentresolver);
        inputstream = inputstream1;
        if (inputstream != null) goto _L2; else goto _L1
_L1:
        closeSilently(inputstream);
        return null;
_L2:
        if (options != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputstream, null, options);
        if (options.mCancel || options.outWidth == -1 || options.outHeight == -1) goto _L1; else goto _L3
_L3:
        Bitmap bitmap;
        options.inSampleSize = computeSampleSize(options, i, j);
        options.inJustDecodeBounds = false;
        options.inDither = false;
        options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
        closeSilently(inputstream);
        inputstream = contentresolver.openInputStream(uri);
        bitmap = BitmapFactory.decodeStream(inputstream, null, options);
        closeSilently(inputstream);
        return bitmap;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        Log.e("Util", (new StringBuilder("Got oom exception ")).append(outofmemoryerror).toString());
        closeSilently(inputstream);
        return null;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        Log.e("Util", (new StringBuilder("Got fnf exception ")).append(filenotfoundexception).toString());
        closeSilently(inputstream);
        return null;
        Exception exception;
        exception;
        closeSilently(inputstream);
        throw exception;
    }

    public static Bitmap makeBitmap(int i, int j, Uri uri, ContentResolver contentresolver, boolean flag)
    {
        Exception exception;
        InputStream inputstream = null;
        android.graphics.BitmapFactory.Options options;
        Bitmap bitmap;
        try
        {
            inputstream = contentresolver.openInputStream(uri);
        }
        catch (IOException ioexception)
        {
            closeSilently(inputstream);
            return null;
        }
        finally
        {
            closeSilently(inputstream);
        }
        options = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        options = createNativeAllocOptions();
        bitmap = makeBitmap(i, j, uri, contentresolver, inputstream, options);
        closeSilently(inputstream);
        return bitmap;
        throw exception;
    }

    public static Bitmap makeBitmap(int i, int j, InputStream inputstream, boolean flag)
    {
        android.graphics.BitmapFactory.Options options = null;
        if (flag)
        {
            options = createNativeAllocOptions();
        }
        return makeBitmap(i, j, null, null, inputstream, options);
    }

    public static Bitmap makeBitmap(int i, int j, String s, InputStream inputstream, android.graphics.BitmapFactory.Options options)
    {
        URL url = new URL(s);
        if (inputstream != null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        InputStream inputstream1 = url.openStream();
        inputstream = inputstream1;
        if (inputstream != null) goto _L2; else goto _L1
_L1:
        closeSilently(inputstream);
        return null;
_L2:
        if (options != null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputstream, null, options);
        if (options.mCancel || options.outWidth == -1 || options.outHeight == -1) goto _L1; else goto _L3
_L3:
        Bitmap bitmap;
        options.inSampleSize = computeSampleSize(options, i, j);
        options.inJustDecodeBounds = false;
        options.inDither = false;
        options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
        closeSilently(inputstream);
        inputstream = url.openStream();
        bitmap = BitmapFactory.decodeStream(inputstream, null, options);
        closeSilently(inputstream);
        return bitmap;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        Log.e("Util", (new StringBuilder("Got oom exception ")).append(outofmemoryerror).toString());
        closeSilently(inputstream);
        return null;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        Log.e("Util", (new StringBuilder("Got fnf exception ")).append(filenotfoundexception).toString());
        closeSilently(inputstream);
        return null;
        MalformedURLException malformedurlexception;
        malformedurlexception;
        Log.e("Util", (new StringBuilder("Got bad url exception ")).append(malformedurlexception).toString());
        closeSilently(inputstream);
        return null;
        IOException ioexception;
        ioexception;
        Log.e("Util", (new StringBuilder("Got io exception ")).append(ioexception).toString());
        closeSilently(inputstream);
        return null;
        Exception exception;
        exception;
        closeSilently(inputstream);
        throw exception;
    }

    private static InputStream makeInputStream(Uri uri, ContentResolver contentresolver)
    {
        InputStream inputstream;
        try
        {
            inputstream = contentresolver.openInputStream(uri);
        }
        catch (IOException ioexception)
        {
            return null;
        }
        return inputstream;
    }

    public static Bitmap rotate(Bitmap bitmap, int i)
    {
        if (i == 0 || bitmap == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(i, (float)bitmap.getWidth() / 2.0F, (float)bitmap.getHeight() / 2.0F);
        Bitmap bitmap1;
        try
        {
            int j = bitmap.getWidth();
            int k = bitmap.getHeight();
            bitmap1 = Bitmap.createBitmap(bitmap, 0, 0, j, k, matrix, true);
        }
        catch (OutOfMemoryError outofmemoryerror)
        {
            return bitmap;
        }
        if (bitmap == bitmap1)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        bitmap.recycle();
        bitmap = bitmap1;
        return bitmap;
    }

    public static Bitmap transform(Matrix matrix, Bitmap bitmap, int i, int j, boolean flag, boolean flag1)
    {
        int k = bitmap.getWidth() - i;
        int l = bitmap.getHeight() - j;
        Bitmap bitmap2;
        if (!flag && (k < 0 || l < 0))
        {
            bitmap2 = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap2);
            int k1 = Math.max(0, k / 2);
            int l1 = Math.max(0, l / 2);
            Rect rect = new Rect(k1, l1, k1 + Math.min(i, bitmap.getWidth()), l1 + Math.min(j, bitmap.getHeight()));
            int i2 = (i - rect.width()) / 2;
            int j2 = (j - rect.height()) / 2;
            Rect rect1 = new Rect(i2, j2, i - i2, j - j2);
            canvas.drawBitmap(bitmap, rect, rect1, null);
            if (flag1)
            {
                bitmap.recycle();
            }
        } else
        {
            float f = bitmap.getWidth();
            float f1 = bitmap.getHeight();
            Bitmap bitmap1;
            if (f / f1 > (float)i / (float)j)
            {
                float f3 = (float)j / f1;
                int i1;
                int j1;
                if (f3 < 0.9F || f3 > 1.0F)
                {
                    matrix.setScale(f3, f3);
                } else
                {
                    matrix = null;
                }
            } else
            {
                float f2 = (float)i / f;
                if (f2 < 0.9F || f2 > 1.0F)
                {
                    matrix.setScale(f2, f2);
                } else
                {
                    matrix = null;
                }
            }
            if (matrix != null)
            {
                bitmap1 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            } else
            {
                bitmap1 = bitmap;
            }
            if (flag1 && bitmap1 != bitmap)
            {
                bitmap.recycle();
            }
            i1 = Math.max(0, bitmap1.getWidth() - i);
            j1 = Math.max(0, bitmap1.getHeight() - j);
            bitmap2 = Bitmap.createBitmap(bitmap1, i1 / 2, j1 / 2, i, j);
            if (bitmap2 != bitmap1 && (flag1 || bitmap1 != bitmap))
            {
                bitmap1.recycle();
                return bitmap2;
            }
        }
        return bitmap2;
    }
}
