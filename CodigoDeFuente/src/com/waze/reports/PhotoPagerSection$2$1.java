// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.waze.ifs.ui.WazePagerAdapter;
import com.waze.ifs.ui.WazeViewPager;
import com.waze.utils.ImageRepository;
import com.waze.view.map.ProgressAnimation;
import java.util.ArrayList;

// Referenced classes of package com.waze.reports:
//            PhotoPagerSection, PlacePhotoGallery

class toGalleryListener
    implements android.view._cls2._cls1
{

    final is._cls0 this$1;
    private final toGalleryListener val$listener;
    private final eImage val$vi;

    public void onClick(View view)
    {
        int i = tImagePosition(val$vi);
        if (i < 0)
        {
            return;
        }
        if (i != PhotoPagerSection.access$0(_fld0).getCurrentItem())
        {
            PhotoPagerSection.access$0(_fld0).setCurrentItem(i, true);
            return;
        } else
        {
            PhotoPagerSection.access$3(_fld0, PhotoPagerSection.openPlacePhotoGalleryFromView(view, PhotoPagerSection.access$2(_fld0), i, val$listener, mActivity));
            PhotoPagerSection.access$4(_fld0).setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

                final PhotoPagerSection._cls2._cls1 this$2;

                public void onDismiss(DialogInterface dialoginterface)
                {
                    PhotoPagerSection.access$3(this$0, null);
                }

            
            {
                this$2 = PhotoPagerSection._cls2._cls1.this;
                super();
            }
            });
            return;
        }
    }


    toGalleryListener()
    {
        this$1 = final_togallerylistener;
        val$vi = eimage;
        val$listener = toGalleryListener.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/PhotoPagerSection$2

/* anonymous class */
    class PhotoPagerSection._cls2 extends WazePagerAdapter
    {

        final PhotoPagerSection this$0;
        private final PlacePhotoGallery.IPhotoGalleryListener val$listener;

        private int getImagePosition(PhotoPagerSection.VenueImage venueimage)
        {
            if (PhotoPagerSection.access$2(PhotoPagerSection.this).contains(venueimage))
            {
                return PhotoPagerSection.access$2(PhotoPagerSection.this).indexOf(venueimage);
            } else
            {
                return -2;
            }
        }

        public void destroyItem(ViewGroup viewgroup, int i, Object obj)
        {
            viewgroup.removeView((View)obj);
        }

        public int getCount()
        {
            return PhotoPagerSection.access$2(PhotoPagerSection.this).size();
        }

        public int getItemPosition(Object obj)
        {
            return getImagePosition((PhotoPagerSection.VenueImage)((View)obj).getTag());
        }

        public Object instantiateItem(ViewGroup viewgroup, int i)
        {
            View view = LayoutInflater.from(viewgroup.getContext()).inflate(0x7f0300b2, viewgroup, false);
            final PhotoPagerSection.VenueImage vi = (PhotoPagerSection.VenueImage)PhotoPagerSection.access$2(PhotoPagerSection.this).get(i);
            ProgressAnimation progressanimation = (ProgressAnimation)view.findViewById(0x7f090529);
            String s = vi.imageThumbnailUri;
            if (s == null || s.isEmpty())
            {
                s = vi.imageUri;
            }
            ImageView imageview;
            if (ImageRepository.instance.isThumbnailCached(s))
            {
                progressanimation.setVisibility(8);
            } else
            {
                progressanimation.start();
            }
            imageview = (ImageView)view.findViewById(0x7f09052a);
            ImageRepository.instance.getImage(s, true, imageview, progressanimation, mActivity);
            view.setTag(vi);
            viewgroup.addView(view);
            view.setScaleX(0.85F);
            view.setScaleY(0.85F);
            imageview.setOnClickListener(listener. new PhotoPagerSection._cls2._cls1());
            return view;
        }

        public boolean isViewFromObject(View view, Object obj)
        {
            return view == obj;
        }



            
            {
                this$0 = final_photopagersection;
                listener = PlacePhotoGallery.IPhotoGalleryListener.this;
                super();
            }
    }

}
