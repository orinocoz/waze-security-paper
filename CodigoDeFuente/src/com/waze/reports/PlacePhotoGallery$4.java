// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;


// Referenced classes of package com.waze.reports:
//            PlacePhotoGallery

class this._cls0
    implements com.waze.ifs.ui.ChangeListener
{

    final PlacePhotoGallery this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        if (PlacePhotoGallery.access$6(PlacePhotoGallery.this) != null)
        {
            PlacePhotoGallery.access$6(PlacePhotoGallery.this).onScroll(i);
        }
    }

    hotoGalleryListener()
    {
        this$0 = PlacePhotoGallery.this;
        super();
    }
}
