// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.graphics.Bitmap;

// Referenced classes of package com.waze.reports:
//            EditPlaceFlowActivity, EditPlaceFragment, VenueData

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        mainFragment.updatePhotos(EditPlaceFlowActivity.access$2(_fld0));
    }

    l.id()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/EditPlaceFlowActivity$7

/* anonymous class */
    class EditPlaceFlowActivity._cls7
        implements com.waze.utils.ImageRepository.ImageRepositoryListener
    {

        final EditPlaceFlowActivity this$0;
        private final String val$id;
        private final String val$imageThumbnailUrl;
        private final String val$imageUrl;

        public void onImageRetrieved(Bitmap bitmap)
        {
            EditPlaceFlowActivity.access$2(EditPlaceFlowActivity.this).replaceImage(EditPlaceFlowActivity.access$1(EditPlaceFlowActivity.this), imageUrl, imageThumbnailUrl);
            EditPlaceFlowActivity.access$2(EditPlaceFlowActivity.this).addNewImageId(id);
            EditPlaceFlowActivity.access$11(EditPlaceFlowActivity.this, null);
            post(new EditPlaceFlowActivity._cls7._cls1());
        }


            
            {
                this$0 = final_editplaceflowactivity;
                imageUrl = s;
                imageThumbnailUrl = s1;
                id = String.this;
                super();
            }
    }

}
