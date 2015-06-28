// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.ViewTreeObserver;
import com.waze.ifs.ui.CameraPreview;

// Referenced classes of package com.waze.reports:
//            TakePhotoFragment

class this._cls0
    implements android.view.lobalLayoutListener
{

    final TakePhotoFragment this$0;

    public void onGlobalLayout()
    {
        TakePhotoFragment.access$6(TakePhotoFragment.this);
        TakePhotoFragment.access$2(TakePhotoFragment.this).getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    lLayoutListener()
    {
        this$0 = TakePhotoFragment.this;
        super();
    }
}
