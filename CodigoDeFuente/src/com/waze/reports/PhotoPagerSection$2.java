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

class t> extends WazePagerAdapter
{

    final PhotoPagerSection this$0;
    private final hotoGalleryListener val$listener;

    private int getImagePosition(nueImage nueimage)
    {
        if (PhotoPagerSection.access$2(PhotoPagerSection.this).contains(nueimage))
        {
            return PhotoPagerSection.access$2(PhotoPagerSection.this).indexOf(nueimage);
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
        return getImagePosition((nueImage)((View)obj).getTag());
    }

    public Object instantiateItem(ViewGroup viewgroup, int i)
    {
        View view = LayoutInflater.from(viewgroup.getContext()).inflate(0x7f0300b2, viewgroup, false);
        final nueImage vi = (nueImage)PhotoPagerSection.access$2(PhotoPagerSection.this).get(i);
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
        imageview.setOnClickListener(new android.view.View.OnClickListener() {

            final PhotoPagerSection._cls2 this$1;
            private final PlacePhotoGallery.IPhotoGalleryListener val$listener;
            private final PhotoPagerSection.VenueImage val$vi;

            public void onClick(View view1)
            {
                int j = getImagePosition(vi);
                if (j < 0)
                {
                    return;
                }
                if (j != PhotoPagerSection.access$0(this$0).getCurrentItem())
                {
                    PhotoPagerSection.access$0(this$0).setCurrentItem(j, true);
                    return;
                } else
                {
                    PhotoPagerSection.access$3(this$0, PhotoPagerSection.openPlacePhotoGalleryFromView(view1, PhotoPagerSection.access$2(this$0), j, listener, mActivity));
                    PhotoPagerSection.access$4(this$0).setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

                        final _cls1 this$2;

                        public void onDismiss(DialogInterface dialoginterface)
                        {
                            PhotoPagerSection.access$3(this$0, null);
                        }

            
            {
                this$2 = _cls1.this;
                super();
            }
                    });
                    return;
                }
            }


            
            {
                this$1 = PhotoPagerSection._cls2.this;
                vi = venueimage;
                listener = iphotogallerylistener;
                super();
            }
        });
        return view;
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return view == obj;
    }



    hotoGalleryListener()
    {
        this$0 = final_photopagersection;
        val$listener = hotoGalleryListener.this;
        super();
    }
}
