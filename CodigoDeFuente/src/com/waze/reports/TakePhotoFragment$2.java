// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.MotionEvent;
import android.view.View;
import com.waze.ifs.ui.CameraPreview;

// Referenced classes of package com.waze.reports:
//            TakePhotoFragment

class this._cls0
    implements android.view.
{

    final TakePhotoFragment this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            float f = motionevent.getX() / (float)TakePhotoFragment.access$2(TakePhotoFragment.this).getWidth();
            float f1 = motionevent.getY() / (float)TakePhotoFragment.access$2(TakePhotoFragment.this).getHeight();
            TakePhotoFragment.access$2(TakePhotoFragment.this).focus(f, f1);
        }
        return false;
    }

    ()
    {
        this$0 = TakePhotoFragment.this;
        super();
    }
}
