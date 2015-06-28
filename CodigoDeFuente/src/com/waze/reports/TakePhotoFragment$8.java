// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.net.Uri;
import android.view.View;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.CameraPreview;
import java.io.File;

// Referenced classes of package com.waze.reports:
//            TakePhotoFragment

class this._cls0
    implements android.view.
{

    final TakePhotoFragment this$0;

    public void onClick(View view)
    {
        TakePhotoFragment.access$2(TakePhotoFragment.this).saveToFile();
        File file = new File(TakePhotoFragment.access$9(TakePhotoFragment.this));
        ((akePhoto)getActivity()).photoTaken(Uri.fromFile(file), file.getAbsolutePath());
        Analytics.log("PLACES_TAKING_PHOTO_APPROVE_CLICKED", null, null);
    }

    akePhoto()
    {
        this$0 = TakePhotoFragment.this;
        super();
    }
}
