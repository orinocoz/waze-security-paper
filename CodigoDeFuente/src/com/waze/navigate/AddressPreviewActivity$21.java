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
    implements android.view.y._cls21
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
        AddressPreviewActivity.access$29(AddressPreviewActivity.this, PhotoPagerSection.openPlacePhotoGalleryFromView(view, AddressPreviewActivity.access$27(AddressPreviewActivity.this), 0, new com.waze.reports.PlacePhotoGallery.IPhotoGalleryListener() {

            final AddressPreviewActivity._cls21 this$1;
            private final ImageView val$placeImage;

            public void onDelete(int i)
            {
label0:
                {
                    AddressPreviewActivity.access$20(this$0).venueDeleteImage(AddressPreviewActivity.access$6(this$0).venueData.id, AddressPreviewActivity.access$6(this$0).venueData.imageURLs[i]);
                    AddressPreviewActivity.access$6(this$0).venueData.removeImage(i);
                    AddressPreviewActivity.access$27(this$0).remove(i);
                    if (AddressPreviewActivity.access$6(this$0).venueData.numImages > 0)
                    {
                        AddressPreviewActivity.access$28(this$0).updateImages(AddressPreviewActivity.access$27(this$0));
                    } else
                    {
                        AddressPreviewActivity.access$28(this$0).dismiss();
                    }
                    if (i == 0)
                    {
                        if (AddressPreviewActivity.access$6(this$0).venueData.numImages <= 0)
                        {
                            break label0;
                        }
                        ImageRepository.instance.getImage(((com.waze.reports.PhotoPagerSection.VenueImage)AddressPreviewActivity.access$27(this$0).get(0)).imageUri, placeImage);
                    }
                    return;
                }
                AddressPreviewActivity.access$11(this$0).setVisibility(8);
            }

            public void onFlag(int i, int j)
            {
label0:
                {
                    AddressPreviewActivity.access$20(this$0).venueFlagImage(AddressPreviewActivity.access$6(this$0).venueData.id, AddressPreviewActivity.access$6(this$0).venueData.imageURLs[i], j);
                    AddressPreviewActivity.access$6(this$0).venueData.removeImage(i);
                    AddressPreviewActivity.access$27(this$0).remove(i);
                    if (AddressPreviewActivity.access$6(this$0).venueData.numImages > 0)
                    {
                        AddressPreviewActivity.access$28(this$0).updateImages(AddressPreviewActivity.access$27(this$0));
                    } else
                    {
                        AddressPreviewActivity.access$28(this$0).dismiss();
                    }
                    if (i == 0)
                    {
                        if (AddressPreviewActivity.access$6(this$0).venueData.numImages <= 0)
                        {
                            break label0;
                        }
                        ImageRepository.instance.getImage(((com.waze.reports.PhotoPagerSection.VenueImage)AddressPreviewActivity.access$27(this$0).get(0)).imageUri, placeImage);
                    }
                    return;
                }
                AddressPreviewActivity.access$11(this$0).setVisibility(8);
            }

            public void onLike(int i)
            {
                AddressPreviewActivity.access$6(this$0).venueData.imageLiked[i] = true;
                AddressPreviewActivity.access$20(this$0).venueLikeImage(AddressPreviewActivity.access$6(this$0).venueData.id, AddressPreviewActivity.access$6(this$0).venueData.imageURLs[i]);
            }

            public void onScroll(int i)
            {
            }

            public void onUnlike(int i)
            {
                AddressPreviewActivity.access$6(this$0).venueData.imageLiked[i] = false;
                AddressPreviewActivity.access$20(this$0).venueUnlikeImage(AddressPreviewActivity.access$6(this$0).venueData.id, AddressPreviewActivity.access$6(this$0).venueData.imageURLs[i]);
            }

            
            {
                this$1 = AddressPreviewActivity._cls21.this;
                placeImage = imageview;
                super();
            }
        }, AddressPreviewActivity.this));
    }


    _cls1.val.placeImage()
    {
        this$0 = final_addresspreviewactivity;
        val$placeImage = ImageView.this;
        super();
    }
}
