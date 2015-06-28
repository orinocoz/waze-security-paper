// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.ViewTreeObserver;
import com.waze.ifs.ui.WazeViewPager;

// Referenced classes of package com.waze.reports:
//            PlacePhotoGallery

class this._cls0
    implements android.view.lobalLayoutListener
{

    final PlacePhotoGallery this$0;

    public void onGlobalLayout()
    {
        PlacePhotoGallery.access$8(PlacePhotoGallery.this).getViewTreeObserver().removeGlobalOnLayoutListener(this);
        PlacePhotoGallery.access$9(PlacePhotoGallery.this);
    }

    lLayoutListener()
    {
        this$0 = PlacePhotoGallery.this;
        super();
    }
}
