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

class this._cls2
    implements android.content.sListener
{

    final ._cls0 this$2;

    public void onDismiss(DialogInterface dialoginterface)
    {
        PhotoPagerSection.access$3(_fld0, null);
    }

    GalleryListener()
    {
        this$2 = this._cls2.this;
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


    // Unreferenced inner class com/waze/reports/PhotoPagerSection$2$1

/* anonymous class */
    class PhotoPagerSection._cls2._cls1
        implements android.view.View.OnClickListener
    {

        final PhotoPagerSection._cls2 this$1;
        private final PlacePhotoGallery.IPhotoGalleryListener val$listener;
        private final PhotoPagerSection.VenueImage val$vi;

        public void onClick(View view)
        {
            int i = getImagePosition(vi);
            if (i < 0)
            {
                return;
            }
            if (i != PhotoPagerSection.access$0(this$0).getCurrentItem())
            {
                PhotoPagerSection.access$0(this$0).setCurrentItem(i, true);
                return;
            } else
            {
                PhotoPagerSection.access$3(this$0, PhotoPagerSection.openPlacePhotoGalleryFromView(view, PhotoPagerSection.access$2(this$0), i, listener, mActivity));
                PhotoPagerSection.access$4(this$0).setOnDismissListener(new PhotoPagerSection._cls2._cls1._cls1());
                return;
            }
        }


            
            {
                this$1 = final__pcls2;
                vi = venueimage;
                listener = PlacePhotoGallery.IPhotoGalleryListener.this;
                super();
            }
    }

}
