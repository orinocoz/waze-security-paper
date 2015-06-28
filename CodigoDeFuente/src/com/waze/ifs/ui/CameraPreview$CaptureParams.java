// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;


// Referenced classes of package com.waze.ifs.ui:
//            CameraPreview

public static class mMaximizeCapture
{

    private s mCallback;
    private boolean mCaptureCallbackActive;
    private String mImageFile;
    private String mImageFolder;
    private int mImageHeight;
    private int mImageQuality;
    private int mImageWidth;
    private boolean mMaximizeCapture;

    public void setCallback(s s)
    {
        mCallback = s;
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










    public s()
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
