// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.ifs.ui.CameraPreview;

// Referenced classes of package com.waze.reports:
//            TakePhotoFragment

class this._cls0
    implements Runnable
{

    final TakePhotoFragment this$0;

    public void run()
    {
        float f = (float)TakePhotoFragment.access$7(TakePhotoFragment.this).getTop() / (float)TakePhotoFragment.access$2(TakePhotoFragment.this).getHeight();
        float f1 = (float)TakePhotoFragment.access$7(TakePhotoFragment.this).getHeight() / (float)TakePhotoFragment.access$2(TakePhotoFragment.this).getHeight();
        float f2 = (float)TakePhotoFragment.access$7(TakePhotoFragment.this).getLeft() / (float)TakePhotoFragment.access$2(TakePhotoFragment.this).getWidth();
        float f3 = (float)TakePhotoFragment.access$7(TakePhotoFragment.this).getWidth() / (float)TakePhotoFragment.access$2(TakePhotoFragment.this).getWidth();
        TakePhotoFragment.access$2(TakePhotoFragment.this).setCaptureRect(Float.valueOf(f2), Float.valueOf(f), Float.valueOf(f3), Float.valueOf(f1));
    }

    ()
    {
        this$0 = TakePhotoFragment.this;
        super();
    }
}
