// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import com.waze.ResManager;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

public class ImageTaker
{

    static final String IMAGE_UNSPECIFIED = "image/*";
    public static final int REQUEST_CODE_CROP_PHOTO = 223;
    public static final int REQUEST_CODE_TAKE_FROM_CAMERA = 222;
    private final Activity mActivity;
    private int mAspectX;
    private int mAspectY;
    private String mCaptureFileFullPath;
    private String mCroppedFileFullPath;
    private final String mFileName;
    Bitmap mFinalBitmap;
    private int mOutX;
    private int mOutY;

    public ImageTaker(Activity activity, String s)
    {
        mCaptureFileFullPath = null;
        mCroppedFileFullPath = null;
        mFinalBitmap = null;
        mOutX = 100;
        mOutY = 100;
        mAspectX = 1;
        mAspectY = 1;
        mActivity = activity;
        mFileName = s;
    }

    public static int calculateInSampleSize(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int k;
        int l;
        int i1;
        k = options.outHeight;
        l = options.outWidth;
        i1 = 1;
        if (k <= j && l <= i) goto _L2; else goto _L1
_L1:
        int j1;
        int k1;
        j1 = k / 2;
        k1 = l / 2;
_L5:
        if (j1 / i1 > j && k1 / i1 > i) goto _L3; else goto _L2
_L2:
        return i1;
_L3:
        i1 *= 2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void cropImage(Uri uri)
    {
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        intent.putExtra("output", Uri.fromFile(new File(ResManager.mAppDir, getImageFileName())));
        intent.putExtra("outputX", mOutX);
        intent.putExtra("outputY", mOutY);
        intent.putExtra("aspectX", mAspectX);
        intent.putExtra("aspectY", mAspectY);
        intent.putExtra("scale", true);
        intent.putExtra("return-data", true);
        mActivity.startActivityForResult(intent, 223);
    }

    public static Bitmap decodeSampledBitmapFromResource(ContentResolver contentresolver, Uri uri, int i, int j)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        java.io.InputStream inputstream;
        java.io.InputStream inputstream1;
        try
        {
            inputstream = contentresolver.openInputStream(uri);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            return null;
        }
        BitmapFactory.decodeStream(inputstream, null, options);
        options.inSampleSize = calculateInSampleSize(options, i, j);
        options.inJustDecodeBounds = false;
        try
        {
            inputstream1 = contentresolver.openInputStream(uri);
        }
        catch (FileNotFoundException filenotfoundexception1)
        {
            return null;
        }
        return BitmapFactory.decodeStream(inputstream1, null, options);
    }

    private String getCaptureFileName()
    {
        return (new StringBuilder(String.valueOf(mFileName))).append("Capture.tmp").toString();
    }

    private String getCaptureFileNameWC()
    {
        return (new StringBuilder(String.valueOf(mFileName))).append("Capture").toString();
    }

    private String getImageFileName()
    {
        return (new StringBuilder(String.valueOf(mFileName))).append("Capture.tmp").toString();
    }

    private Intent newTakePhotoIntent()
    {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        mCaptureFileFullPath = null;
        File file = new File(ResManager.mAppDir, getCaptureFileName());
        file.mkdirs();
        if (file.exists())
        {
            file.delete();
        }
        intent.putExtra("output", Uri.fromFile(file));
        return intent;
    }

    private String saveToFile(Bitmap bitmap, String s)
    {
        String s1;
        try
        {
            File file = new File(ResManager.mAppDir, s);
            if (file.exists())
            {
                file.delete();
            }
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
            s1 = file.getAbsolutePath();
        }
        catch (IOException ioexception)
        {
            return null;
        }
        return s1;
    }

    public Bitmap getImage()
    {
        return mFinalBitmap;
    }

    public String getImagePath()
    {
        return mCroppedFileFullPath;
    }

    public boolean hasImage()
    {
        return mFinalBitmap != null;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 222 || j != -1) goto _L2; else goto _L1
_L1:
        if (intent == null || intent.getData() == null) goto _L4; else goto _L3
_L3:
        Uri uri;
        String s;
        ContentResolver contentresolver;
        uri = intent.getData();
        s = null;
        contentresolver = mActivity.getContentResolver();
        Cursor cursor = contentresolver.query(uri, new String[] {
            "_data"
        }, null, null, null);
        s = null;
        File afile[];
        int k;
        int l;
        File file;
        File file1;
        Bitmap bitmap;
        Uri uri1;
        if (cursor != null)
        {
            try
            {
                cursor.moveToFirst();
                s = cursor.getString(0);
                cursor.close();
            }
            catch (Exception exception) { }
        }
        if (s == null || s.length() <= 0) goto _L6; else goto _L5
_L5:
        uri1 = Uri.parse(s);
        if (uri1 == null || uri1.getScheme() == null || !uri1.getScheme().equals("http") && !uri1.getScheme().equals("https")) goto _L8; else goto _L7
_L7:
        cropImage(uri1);
_L10:
        return;
_L8:
        mCaptureFileFullPath = s;
_L4:
        if (mCaptureFileFullPath == null)
        {
            file = new File(ResManager.mAppDir, getCaptureFileName());
            if (file.exists())
            {
                mCaptureFileFullPath = file.getAbsolutePath();
            }
        }
        if (mCaptureFileFullPath == null && intent != null && intent.hasExtra("data"))
        {
            mCaptureFileFullPath = saveToFile((Bitmap)intent.getExtras().get("data"), getCaptureFileName());
        }
        if (mCaptureFileFullPath != null)
        {
            file1 = new File(mCaptureFileFullPath);
            if (file1.exists())
            {
                mCaptureFileFullPath = file1.getAbsolutePath();
                cropImage(Uri.fromFile(file1));
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L6:
        bitmap = decodeSampledBitmapFromResource(contentresolver, uri, 480, 480);
        if (bitmap != null)
        {
            mCaptureFileFullPath = saveToFile(bitmap, getCaptureFileName());
        }
        if (true) goto _L4; else goto _L2
_L2:
        if (i == 223)
        {
            if (intent != null && intent.hasExtra("data"))
            {
                mFinalBitmap = (Bitmap)intent.getExtras().get("data");
                if (mFinalBitmap != null)
                {
                    mCroppedFileFullPath = saveToFile(mFinalBitmap, getImageFileName());
                }
            }
            afile = (new File(ResManager.mAppDir, ".")).listFiles(new FilenameFilter() {

                final ImageTaker this$0;

                public boolean accept(File file2, String s1)
                {
                    return s1.startsWith(getCaptureFileNameWC());
                }

            
            {
                this$0 = ImageTaker.this;
                super();
            }
            });
            k = afile.length;
            l = 0;
            while (l < k) 
            {
                afile[l].delete();
                l++;
            }
        }
        if (true) goto _L10; else goto _L9
_L9:
    }

    public void sendCaptureIntent(boolean flag)
    {
        Intent intent = newTakePhotoIntent();
        if (flag)
        {
            intent.putExtra("android.intent.extra.screenOrientation", 0);
        }
        mActivity.startActivityForResult(intent, 222);
    }

    public void sendIntent()
    {
        Intent intent = new Intent();
        intent.setType("image/*");
        intent.setAction("android.intent.action.GET_CONTENT");
        Intent intent1 = newTakePhotoIntent();
        Intent intent2 = Intent.createChooser(intent, "Select or take a new Picture");
        intent2.putExtra("android.intent.extra.INITIAL_INTENTS", new Intent[] {
            intent1
        });
        mActivity.startActivityForResult(intent2, 222);
    }

    public void setOutputResolution(int i, int j, int k, int l)
    {
        mOutX = i;
        mOutY = j;
        mAspectX = k;
        mAspectY = l;
    }

}
