// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.DialogInterface;

// Referenced classes of package com.waze.reports:
//            PlacePhotoGallery

class val.position
    implements android.content.ickListener
{

    final PlacePhotoGallery this$0;
    private final int val$position;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 1)
        {
            PlacePhotoGallery.access$6(PlacePhotoGallery.this).onDelete(val$position);
        }
    }

    hotoGalleryListener()
    {
        this$0 = final_placephotogallery;
        val$position = I.this;
        super();
    }
}
