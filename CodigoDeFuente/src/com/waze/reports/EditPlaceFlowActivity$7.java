// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.graphics.Bitmap;

// Referenced classes of package com.waze.reports:
//            EditPlaceFlowActivity, VenueData, EditPlaceFragment

class val.id
    implements com.waze.utils.ositoryListener
{

    final EditPlaceFlowActivity this$0;
    private final String val$id;
    private final String val$imageThumbnailUrl;
    private final String val$imageUrl;

    public void onImageRetrieved(Bitmap bitmap)
    {
        EditPlaceFlowActivity.access$2(EditPlaceFlowActivity.this).replaceImage(EditPlaceFlowActivity.access$1(EditPlaceFlowActivity.this), val$imageUrl, val$imageThumbnailUrl);
        EditPlaceFlowActivity.access$2(EditPlaceFlowActivity.this).addNewImageId(val$id);
        EditPlaceFlowActivity.access$11(EditPlaceFlowActivity.this, null);
        post(new Runnable() {

            final EditPlaceFlowActivity._cls7 this$1;

            public void run()
            {
                mainFragment.updatePhotos(EditPlaceFlowActivity.access$2(this$0));
            }

            
            {
                this$1 = EditPlaceFlowActivity._cls7.this;
                super();
            }
        });
    }


    _cls1.this._cls1()
    {
        this$0 = final_editplaceflowactivity;
        val$imageUrl = s;
        val$imageThumbnailUrl = s1;
        val$id = String.this;
        super();
    }
}
