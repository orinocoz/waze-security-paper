// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeManager;
import java.util.ArrayList;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment, VenueData, PhotoPagerSection, EditPlacePointsHolder

class this._cls0
    implements hotoGalleryListener
{

    final EditPlaceFragment this$0;

    public void onDelete(int i)
    {
        EditPlaceFragment.access$12(EditPlaceFragment.this).venueDeleteImage(EditPlaceFragment.access$0(EditPlaceFragment.this).id, EditPlaceFragment.access$0(EditPlaceFragment.this).imageURLs[i]);
        int j = i - (EditPlaceFragment.access$0(EditPlaceFragment.this).numImages - EditPlaceFragment.access$0(EditPlaceFragment.this).numNewImages);
        EditPlaceFragment.access$0(EditPlaceFragment.this).removeNewImageId(j);
        EditPlaceFragment.access$0(EditPlaceFragment.this).removeImage(i);
        EditPlaceFragment.access$13(EditPlaceFragment.this).remove(i);
        EditPlaceFragment.access$14(EditPlaceFragment.this).venueUpdated(EditPlaceFragment.access$13(EditPlaceFragment.this));
        int k = EditPlacePointsHolder.getPoints(r.PointsType.Images);
        EditPlaceFragment editplacefragment = EditPlaceFragment.this;
        EditPlaceFragment.access$5(editplacefragment, EditPlaceFragment.access$4(editplacefragment) - k);
        updatePoints();
    }

    public void onFlag(int i, int j)
    {
        EditPlaceFragment.access$12(EditPlaceFragment.this).venueFlagImage(EditPlaceFragment.access$0(EditPlaceFragment.this).id, EditPlaceFragment.access$0(EditPlaceFragment.this).imageURLs[i], j);
        EditPlaceFragment.access$0(EditPlaceFragment.this).removeImage(i);
        EditPlaceFragment.access$13(EditPlaceFragment.this).remove(i);
        EditPlaceFragment.access$14(EditPlaceFragment.this).venueUpdated(EditPlaceFragment.access$13(EditPlaceFragment.this));
    }

    public void onLike(int i)
    {
        EditPlaceFragment.access$0(EditPlaceFragment.this).imageLiked[i] = true;
        EditPlaceFragment.access$12(EditPlaceFragment.this).venueLikeImage(EditPlaceFragment.access$0(EditPlaceFragment.this).id, EditPlaceFragment.access$0(EditPlaceFragment.this).imageURLs[i]);
    }

    public void onScroll(int i)
    {
    }

    public void onUnlike(int i)
    {
        EditPlaceFragment.access$0(EditPlaceFragment.this).imageLiked[i] = false;
        EditPlaceFragment.access$12(EditPlaceFragment.this).venueUnlikeImage(EditPlaceFragment.access$0(EditPlaceFragment.this).id, EditPlaceFragment.access$0(EditPlaceFragment.this).imageURLs[i]);
    }

    r()
    {
        this$0 = EditPlaceFragment.this;
        super();
    }
}
