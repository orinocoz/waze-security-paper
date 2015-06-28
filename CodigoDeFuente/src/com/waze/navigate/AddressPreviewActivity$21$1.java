// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;
import android.widget.ImageView;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.reports.PhotoPagerSection;
import com.waze.reports.PlacePhotoGallery;
import com.waze.reports.VenueData;
import com.waze.utils.ImageRepository;
import java.util.ArrayList;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem, DriveToNativeManager

class val.placeImage
    implements com.waze.reports.eryListener
{

    final is._cls0 this$1;
    private final ImageView val$placeImage;

    public void onDelete(int i)
    {
label0:
        {
            AddressPreviewActivity.access$20(_fld0).venueDeleteImage(AddressPreviewActivity.access$6(_fld0).venueData.id, AddressPreviewActivity.access$6(_fld0).venueData.imageURLs[i]);
            AddressPreviewActivity.access$6(_fld0).venueData.removeImage(i);
            AddressPreviewActivity.access$27(_fld0).remove(i);
            if (AddressPreviewActivity.access$6(_fld0).venueData.numImages > 0)
            {
                AddressPreviewActivity.access$28(_fld0).updateImages(AddressPreviewActivity.access$27(_fld0));
            } else
            {
                AddressPreviewActivity.access$28(_fld0).dismiss();
            }
            if (i == 0)
            {
                if (AddressPreviewActivity.access$6(_fld0).venueData.numImages <= 0)
                {
                    break label0;
                }
                ImageRepository.instance.getImage(((com.waze.reports.)AddressPreviewActivity.access$27(_fld0).get(0)).imageUri, val$placeImage);
            }
            return;
        }
        AddressPreviewActivity.access$11(_fld0).setVisibility(8);
    }

    public void onFlag(int i, int j)
    {
label0:
        {
            AddressPreviewActivity.access$20(_fld0).venueFlagImage(AddressPreviewActivity.access$6(_fld0).venueData.id, AddressPreviewActivity.access$6(_fld0).venueData.imageURLs[i], j);
            AddressPreviewActivity.access$6(_fld0).venueData.removeImage(i);
            AddressPreviewActivity.access$27(_fld0).remove(i);
            if (AddressPreviewActivity.access$6(_fld0).venueData.numImages > 0)
            {
                AddressPreviewActivity.access$28(_fld0).updateImages(AddressPreviewActivity.access$27(_fld0));
            } else
            {
                AddressPreviewActivity.access$28(_fld0).dismiss();
            }
            if (i == 0)
            {
                if (AddressPreviewActivity.access$6(_fld0).venueData.numImages <= 0)
                {
                    break label0;
                }
                ImageRepository.instance.getImage(((com.waze.reports.)AddressPreviewActivity.access$27(_fld0).get(0)).imageUri, val$placeImage);
            }
            return;
        }
        AddressPreviewActivity.access$11(_fld0).setVisibility(8);
    }

    public void onLike(int i)
    {
        AddressPreviewActivity.access$6(_fld0).venueData.imageLiked[i] = true;
        AddressPreviewActivity.access$20(_fld0).venueLikeImage(AddressPreviewActivity.access$6(_fld0).venueData.id, AddressPreviewActivity.access$6(_fld0).venueData.imageURLs[i]);
    }

    public void onScroll(int i)
    {
    }

    public void onUnlike(int i)
    {
        AddressPreviewActivity.access$6(_fld0).venueData.imageLiked[i] = false;
        AddressPreviewActivity.access$20(_fld0).venueUnlikeImage(AddressPreviewActivity.access$6(_fld0).venueData.id, AddressPreviewActivity.access$6(_fld0).venueData.imageURLs[i]);
    }

    l.placeImage()
    {
        this$1 = final_placeimage;
        val$placeImage = ImageView.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/AddressPreviewActivity$21

/* anonymous class */
    class AddressPreviewActivity._cls21
        implements android.view.View.OnClickListener
    {

        final AddressPreviewActivity this$0;
        private final ImageView val$placeImage;

        public void onClick(View view)
        {
            Analytics.log("ADDRESS_PREVIEW_IMAGE_CLICKED", "VENUE_ID", AddressPreviewActivity.access$6(AddressPreviewActivity.this).venueData.id);
            if (AddressPreviewActivity.access$6(AddressPreviewActivity.this).venueData.bHasMoreData)
            {
                AddressPreviewActivity.access$10(AddressPreviewActivity.this).unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, AddressPreviewActivity.access$26(AddressPreviewActivity.this));
                AddressPreviewActivity.access$10(AddressPreviewActivity.this).setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, AddressPreviewActivity.access$26(AddressPreviewActivity.this));
                AddressPreviewActivity.access$20(AddressPreviewActivity.this).venueGet(AddressPreviewActivity.access$6(AddressPreviewActivity.this).venueData.id, 1);
            }
            AddressPreviewActivity.access$29(AddressPreviewActivity.this, PhotoPagerSection.openPlacePhotoGalleryFromView(view, AddressPreviewActivity.access$27(AddressPreviewActivity.this), 0, placeImage. new AddressPreviewActivity._cls21._cls1(), AddressPreviewActivity.this));
        }


            
            {
                this$0 = final_addresspreviewactivity;
                placeImage = ImageView.this;
                super();
            }
    }

}
