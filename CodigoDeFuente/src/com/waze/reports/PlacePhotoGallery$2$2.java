// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.waze.MoodManager;
import com.waze.NativeManager;
import com.waze.ifs.ui.WazePagerAdapter;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import com.waze.view.map.ProgressAnimation;
import com.waze.view.text.WazeTextView;
import java.util.ArrayList;

// Referenced classes of package com.waze.reports:
//            PlacePhotoGallery

class this._cls1
    implements android.view._cls2._cls2
{

    final is._cls0 this$1;

    public void onClick(View view)
    {
        PlacePhotoGallery.access$0(_fld0);
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/PlacePhotoGallery$2

/* anonymous class */
    class PlacePhotoGallery._cls2 extends WazePagerAdapter
    {

        final PlacePhotoGallery this$0;

        public void destroyItem(ViewGroup viewgroup, int i, Object obj)
        {
            viewgroup.removeView((View)obj);
        }

        public int getCount()
        {
            return PlacePhotoGallery.access$1(PlacePhotoGallery.this).size();
        }

        int getImagePosition(PhotoPagerSection.VenueImage venueimage)
        {
            if (PlacePhotoGallery.access$1(PlacePhotoGallery.this).contains(venueimage))
            {
                return PlacePhotoGallery.access$1(PlacePhotoGallery.this).indexOf(venueimage);
            } else
            {
                return -2;
            }
        }

        public int getItemPosition(Object obj)
        {
            return getImagePosition((PhotoPagerSection.VenueImage)((View)obj).getTag());
        }

        public Object instantiateItem(ViewGroup viewgroup, int i)
        {
            RelativeLayout relativelayout = (RelativeLayout)LayoutInflater.from(viewgroup.getContext()).inflate(0x7f0300b1, viewgroup, false);
            final PhotoPagerSection.VenueImage vi = (PhotoPagerSection.VenueImage)PlacePhotoGallery.access$1(PlacePhotoGallery.this).get(i);
            ProgressAnimation progressanimation = (ProgressAnimation)relativelayout.findViewById(0x7f090529);
            ImageView imageview;
            boolean flag;
            WazeTextView wazetextview;
            ImageView imageview1;
            View view;
            final ImageButton likeView;
            ImageButton imagebutton;
            String s;
            String s1;
            if (ImageRepository.instance.isCached(vi.imageUri))
            {
                progressanimation.setVisibility(8);
            } else
            {
                progressanimation.start();
            }
            imageview = (ImageView)relativelayout.findViewById(0x7f09052a);
            flag = vi.imageUri.startsWith("file");
            ImageRepository.instance.getImage(vi.imageUri, false, imageview, progressanimation, PlacePhotoGallery.access$2(PlacePhotoGallery.this));
            relativelayout.setTag(vi);
            viewgroup.addView(relativelayout);
            if (PlacePhotoGallery.access$3(PlacePhotoGallery.this) > 0)
            {
                View view1 = relativelayout.findViewById(0x7f09010b);
                android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)view1.getLayoutParams();
                layoutparams.setMargins(PlacePhotoGallery.access$3(PlacePhotoGallery.this), 0, PlacePhotoGallery.access$3(PlacePhotoGallery.this), 0);
                view1.setLayoutParams(layoutparams);
                view1.setOnClickListener(new PlacePhotoGallery._cls2._cls1());
                relativelayout.findViewById(0x7f090528).setOnClickListener(new PlacePhotoGallery._cls2._cls2());
            }
            wazetextview = (WazeTextView)relativelayout.findViewById(0x7f09052c);
            imageview1 = (ImageView)relativelayout.findViewById(0x7f09052b);
            view = relativelayout.findViewById(0x7f09052e);
            likeView = (ImageButton)relativelayout.findViewById(0x7f09052f);
            imagebutton = (ImageButton)relativelayout.findViewById(0x7f09052d);
            if (vi.didLike)
            {
                likeView.setImageResource(0x7f0202aa);
            } else
            {
                likeView.setImageResource(0x7f0202a9);
            }
            s = vi.submitter;
            s1 = vi.mood;
            if (vi.isUploading)
            {
                s = PlacePhotoGallery.access$4(PlacePhotoGallery.this).getLanguageString(DisplayStrings.DS_UPLOADING_DATA___);
            } else
            if (s != null && !s.isEmpty())
            {
                s = String.format(PlacePhotoGallery.access$4(PlacePhotoGallery.this).getLanguageString(DisplayStrings.DS_PHOTO_BY_PS), new Object[] {
                    s
                });
            }
            if (vi.canDelete || flag)
            {
                if (!flag)
                {
                    s = "";
                }
                wazetextview.setText(s);
                imageview1.setVisibility(8);
                view.setVisibility(8);
                likeView.setVisibility(8);
                if (flag)
                {
                    imagebutton.setVisibility(8);
                    return relativelayout;
                } else
                {
                    imagebutton.setImageResource(0x7f0202a5);
                    imagebutton.setOnClickListener(new PlacePhotoGallery._cls2._cls3());
                    return relativelayout;
                }
            }
            likeView.setOnClickListener(new PlacePhotoGallery._cls2._cls4());
            imagebutton.setOnClickListener(new PlacePhotoGallery._cls2._cls5());
            if (s == null || s.isEmpty())
            {
                wazetextview.setText("");
            } else
            {
                wazetextview.setText(s);
            }
            if (s1 == null || s1.isEmpty())
            {
                imageview1.setVisibility(8);
                return relativelayout;
            } else
            {
                imageview1.setImageDrawable(MoodManager.getMoodDrawable(PlacePhotoGallery.access$2(PlacePhotoGallery.this), s1));
                return relativelayout;
            }
        }

        public boolean isViewFromObject(View view, Object obj)
        {
            return view == obj;
        }


            
            {
                this$0 = PlacePhotoGallery.this;
                super();
            }

        // Unreferenced inner class com/waze/reports/PlacePhotoGallery$2$1

/* anonymous class */
        class PlacePhotoGallery._cls2._cls1
            implements android.view.View.OnClickListener
        {

            final PlacePhotoGallery._cls2 this$1;

            public void onClick(View view)
            {
            }

                    
                    {
                        this$1 = PlacePhotoGallery._cls2.this;
                        super();
                    }
        }


        // Unreferenced inner class com/waze/reports/PlacePhotoGallery$2$3

/* anonymous class */
        class PlacePhotoGallery._cls2._cls3
            implements android.view.View.OnClickListener
        {

            final PlacePhotoGallery._cls2 this$1;
            private final PhotoPagerSection.VenueImage val$vi;

            public void onClick(View view)
            {
                int i = getImagePosition(vi);
                if (i >= 0)
                {
                    PlacePhotoGallery.access$5(this$0, i);
                }
            }

                    
                    {
                        this$1 = PlacePhotoGallery._cls2.this;
                        vi = venueimage;
                        super();
                    }
        }


        // Unreferenced inner class com/waze/reports/PlacePhotoGallery$2$4

/* anonymous class */
        class PlacePhotoGallery._cls2._cls4
            implements android.view.View.OnClickListener
        {

            final PlacePhotoGallery._cls2 this$1;
            private final ImageButton val$likeView;
            private final PhotoPagerSection.VenueImage val$vi;

            public void onClick(View view)
            {
                int i = getImagePosition(vi);
                if (i < 0)
                {
                    return;
                }
                if (vi.didLike)
                {
                    vi.didLike = false;
                    likeView.setImageResource(0x7f0202a9);
                    PlacePhotoGallery.access$6(this$0).onUnlike(i);
                    return;
                } else
                {
                    vi.didLike = true;
                    likeView.setImageResource(0x7f0202aa);
                    PlacePhotoGallery.access$6(this$0).onLike(i);
                    return;
                }
            }

                    
                    {
                        this$1 = PlacePhotoGallery._cls2.this;
                        vi = venueimage;
                        likeView = imagebutton;
                        super();
                    }
        }


        // Unreferenced inner class com/waze/reports/PlacePhotoGallery$2$5

/* anonymous class */
        class PlacePhotoGallery._cls2._cls5
            implements android.view.View.OnClickListener
        {

            final PlacePhotoGallery._cls2 this$1;
            private final PhotoPagerSection.VenueImage val$vi;

            public void onClick(View view)
            {
                int i = getImagePosition(vi);
                if (i < 0)
                {
                    return;
                } else
                {
                    PlacePhotoGallery.access$7(this$0, i);
                    return;
                }
            }

                    
                    {
                        this$1 = PlacePhotoGallery._cls2.this;
                        vi = venueimage;
                        super();
                    }
        }

    }

}
