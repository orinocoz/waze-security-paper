// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeManager;
import com.waze.utils.ImageRepository;

// Referenced classes of package com.waze.reports:
//            EditPlaceFlowActivity, VenueData

class itoryListener
    implements Runnable
{

    final EditPlaceFlowActivity this$0;
    private final String val$from;
    private final String val$id;
    private final com.waze.utils.ositoryListener val$imageListener;
    private final String val$imageThumbnailUrl;
    private final String val$imageUrl;
    private final String val$path;

    public void run()
    {
        if (EditPlaceFlowActivity.access$1(EditPlaceFlowActivity.this) == null)
        {
            EditPlaceFlowActivity.access$12(EditPlaceFlowActivity.this, null);
            if (EditPlaceFlowActivity.access$13(EditPlaceFlowActivity.this))
            {
                EditPlaceFlowActivity.access$0(EditPlaceFlowActivity.this).venueUpdate(EditPlaceFlowActivity.access$2(EditPlaceFlowActivity.this), EditPlaceFlowActivity.access$14(EditPlaceFlowActivity.this), val$from, null);
            }
        } else
        if (EditPlaceFlowActivity.access$1(EditPlaceFlowActivity.this).equals(val$path))
        {
            if (EditPlaceFlowActivity.access$13(EditPlaceFlowActivity.this))
            {
                EditPlaceFlowActivity.access$2(EditPlaceFlowActivity.this).replaceImage(EditPlaceFlowActivity.access$1(EditPlaceFlowActivity.this), val$imageUrl, val$imageThumbnailUrl);
                EditPlaceFlowActivity.access$2(EditPlaceFlowActivity.this).addNewImageId(val$id);
                EditPlaceFlowActivity.access$11(EditPlaceFlowActivity.this, null);
                EditPlaceFlowActivity.access$0(EditPlaceFlowActivity.this).venueUpdate(EditPlaceFlowActivity.access$2(EditPlaceFlowActivity.this), EditPlaceFlowActivity.access$14(EditPlaceFlowActivity.this), val$from, null);
                return;
            }
            ImageRepository.instance.getImage(val$imageThumbnailUrl, true, val$imageListener);
            if (EditPlaceFlowActivity.access$15(EditPlaceFlowActivity.this) != null)
            {
                postDelayed(EditPlaceFlowActivity.access$15(EditPlaceFlowActivity.this), 3000L);
                return;
            }
        }
    }

    itoryListener()
    {
        this$0 = final_editplaceflowactivity;
        val$from = s;
        val$path = s1;
        val$imageUrl = s2;
        val$imageThumbnailUrl = s3;
        val$id = s4;
        val$imageListener = com.waze.utils.ositoryListener.this;
        super();
    }
}
