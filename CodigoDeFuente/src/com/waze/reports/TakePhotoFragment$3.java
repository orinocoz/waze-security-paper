// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.widget.ImageButton;
import com.waze.ifs.ui.CameraPreview;

// Referenced classes of package com.waze.reports:
//            TakePhotoFragment

class this._cls0
    implements android.view.
{

    final TakePhotoFragment this$0;

    public void onClick(View view)
    {
        TakePhotoFragment.access$3(TakePhotoFragment.this);
        TakePhotoFragment.access$0(TakePhotoFragment.this).setOnClickListener(null);
        TakePhotoFragment.access$4(TakePhotoFragment.this);
        TakePhotoFragment.access$2(TakePhotoFragment.this).capture();
    }

    ()
    {
        this$0 = TakePhotoFragment.this;
        super();
    }
}
