// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.WazePagerAdapter;
import com.waze.ifs.ui.WazeViewPager;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import com.waze.view.map.ProgressAnimation;
import java.util.ArrayList;

// Referenced classes of package com.waze.reports:
//            PlacePhotoGallery

public class PhotoPagerSection
{
    public class DepthPageTransformer
        implements com.waze.ifs.ui.WazeViewPager.PageTransformer
    {

        private static final float MIN_SCALE = 0.75F;
        final PhotoPagerSection this$0;

        public void transformPage(View view, float f)
        {
            int i = view.getWidth();
            if (f < -1F)
            {
                view.setAlpha(0.0F);
                return;
            }
            if (f <= 0.0F)
            {
                view.setAlpha(1.0F);
                view.setTranslationX(0.0F);
                view.setScaleX(1.0F);
                view.setScaleY(1.0F);
                return;
            }
            if (f <= 1.0F)
            {
                view.setAlpha(1.0F - f);
                view.setTranslationX((float)i * -f);
                float f1 = 0.75F + 0.25F * (1.0F - Math.abs(f));
                view.setScaleX(f1);
                view.setScaleY(f1);
                return;
            } else
            {
                view.setAlpha(0.0F);
                return;
            }
        }

        public DepthPageTransformer()
        {
            this$0 = PhotoPagerSection.this;
            super();
        }
    }

    public static class VenueImage
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public VenueImage createFromParcel(Parcel parcel)
            {
                return new VenueImage(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public VenueImage[] newArray(int i)
            {
                return new VenueImage[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        public boolean canDelete;
        public boolean didLike;
        public String imageThumbnailUri;
        public String imageUri;
        public boolean isUploading;
        public String mood;
        public String submitter;

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            int j = 1;
            parcel.writeString(imageUri);
            parcel.writeString(imageThumbnailUri);
            parcel.writeString(submitter);
            parcel.writeString(mood);
            int k;
            int l;
            if (didLike)
            {
                k = j;
            } else
            {
                k = 0;
            }
            parcel.writeInt(k);
            if (canDelete)
            {
                l = j;
            } else
            {
                l = 0;
            }
            parcel.writeInt(l);
            if (!isUploading)
            {
                j = 0;
            }
            parcel.writeInt(j);
        }


        public VenueImage(Parcel parcel)
        {
            boolean flag = true;
            super();
            didLike = false;
            canDelete = false;
            isUploading = false;
            imageUri = parcel.readString();
            imageThumbnailUri = parcel.readString();
            submitter = parcel.readString();
            mood = parcel.readString();
            boolean flag1;
            boolean flag2;
            if (parcel.readInt() != 0)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            didLike = flag1;
            if (parcel.readInt() != 0)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            canDelete = flag2;
            if (parcel.readInt() == 0)
            {
                flag = false;
            }
            isUploading = flag;
        }

        public VenueImage(String s, String s1, String s2, String s3, boolean flag, boolean flag1, boolean flag2)
        {
            didLike = false;
            canDelete = false;
            isUploading = false;
            imageUri = s;
            imageThumbnailUri = s1;
            submitter = s2;
            mood = s3;
            didLike = flag;
            canDelete = flag1;
            isUploading = flag2;
        }
    }

    public class ZoomOutPageTransformer
        implements com.waze.ifs.ui.WazeViewPager.PageTransformer
    {

        final PhotoPagerSection this$0;

        public void transformPage(View view, float f)
        {
            if (f >= -1F && f <= 1.0F)
            {
                float f1 = Math.max(0.85F, 1.0F - Math.abs(f));
                view.setScaleX(f1);
                view.setScaleY(f1);
            }
        }

        public ZoomOutPageTransformer()
        {
            this$0 = PhotoPagerSection.this;
            super();
        }
    }


    private static final float MIN_ALPHA = 0.8F;
    private static final float MIN_SCALE = 0.85F;
    final ActivityBase mActivity;
    private TextView mAtLeast;
    private ImageButton mCameraButton;
    private PlacePhotoGallery mGallery;
    private ArrayList mImageArray;
    final boolean mIsEdit;
    private PlacePhotoGallery.IPhotoGalleryListener mListener;
    private NativeManager mNm;
    private WazePagerAdapter mPagerAdapter;
    private ProgressAnimation mProgress;
    View mRoot;
    private int mScreenWidth;
    private WazeViewPager mViewPager;

    public PhotoPagerSection(ActivityBase activitybase, View view, boolean flag, android.view.View.OnClickListener onclicklistener)
    {
        mGallery = null;
        mActivity = activitybase;
        mIsEdit = flag;
        mRoot = view;
        mNm = NativeManager.getInstance();
        mScreenWidth = activitybase.getResources().getDisplayMetrics().widthPixels;
        mAtLeast = (TextView)mRoot.findViewById(0x7f090525);
        mAtLeast.setText(mNm.getLanguageString(DisplayStrings.DS_ADD_A_PHOTO));
        mCameraButton = (ImageButton)mRoot.findViewById(0x7f090526);
        mCameraButton.setOnClickListener(onclicklistener);
        mProgress = (ProgressAnimation)mRoot.findViewById(0x7f090527);
        mViewPager = (WazeViewPager)mRoot.findViewById(0x7f090524);
        android.view.ViewGroup.LayoutParams layoutparams = mViewPager.getLayoutParams();
        layoutparams.height = (3 * ((6 * mScreenWidth) / 10)) / 4;
        mViewPager.setLayoutParams(layoutparams);
        mViewPager.setPageTransformer(true, new ZoomOutPageTransformer());
        mViewPager.setPageMargin((4 * -mScreenWidth) / 10);
        mViewPager.setOffscreenPageLimit(2);
    }

    public static PlacePhotoGallery openPlacePhotoGalleryFromView(View view, ArrayList arraylist, int i, PlacePhotoGallery.IPhotoGalleryListener iphotogallerylistener, ActivityBase activitybase)
    {
        Bundle bundle = new Bundle();
        int ai[] = new int[2];
        view.getLocationInWindow(ai);
        bundle.putInt("left", ai[0]);
        bundle.putInt("top", ai[1]);
        bundle.putInt("width", view.getWidth());
        bundle.putInt("height", view.getHeight());
        PlacePhotoGallery placephotogallery = new PlacePhotoGallery(view.getContext(), arraylist, i, bundle, activitybase);
        placephotogallery.setListener(iphotogallerylistener);
        placephotogallery.setCanceledOnTouchOutside(true);
        placephotogallery.show();
        return placephotogallery;
    }

    private void setupViewPager()
    {
        mPagerAdapter = new WazePagerAdapter() {

            final PhotoPagerSection this$0;
            private final PlacePhotoGallery.IPhotoGalleryListener val$listener;

            private int getImagePosition(VenueImage venueimage)
            {
                if (mImageArray.contains(venueimage))
                {
                    return mImageArray.indexOf(venueimage);
                } else
                {
                    return -2;
                }
            }

            public void destroyItem(ViewGroup viewgroup, int j, Object obj)
            {
                viewgroup.removeView((View)obj);
            }

            public int getCount()
            {
                return mImageArray.size();
            }

            public int getItemPosition(Object obj)
            {
                return getImagePosition((VenueImage)((View)obj).getTag());
            }

            public Object instantiateItem(ViewGroup viewgroup, int j)
            {
                View view = LayoutInflater.from(viewgroup.getContext()).inflate(0x7f0300b2, viewgroup, false);
                final VenueImage vi = (VenueImage)mImageArray.get(j);
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
                imageview.setOnClickListener(listener. new android.view.View.OnClickListener() {

                    final _cls2 this$1;
                    private final PlacePhotoGallery.IPhotoGalleryListener val$listener;
                    private final VenueImage val$vi;

                    public void onClick(View view)
                    {
                        int i = getImagePosition(vi);
                        if (i < 0)
                        {
                            return;
                        }
                        if (i != mViewPager.getCurrentItem())
                        {
                            mViewPager.setCurrentItem(i, true);
                            return;
                        } else
                        {
                            mGallery = PhotoPagerSection.openPlacePhotoGalleryFromView(view, mImageArray, i, listener, mActivity);
                            mGallery.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

                                final _cls1 this$2;

                                public void onDismiss(DialogInterface dialoginterface)
                                {
                                    mGallery = null;
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
                this$1 = final__pcls2;
                vi = venueimage;
                listener = PlacePhotoGallery.IPhotoGalleryListener.this;
                super();
            }
                });
                return view;
            }

            public boolean isViewFromObject(View view, Object obj)
            {
                return view == obj;
            }



            
            {
                this$0 = PhotoPagerSection.this;
                listener = iphotogallerylistener;
                super();
            }
        };
        mViewPager.setAdapter(mPagerAdapter);
        mViewPager.setCurrentItem(-1 + mPagerAdapter.getCount());
        mViewPager.postDelayed(new Runnable() {

            final PhotoPagerSection this$0;

            public void run()
            {
                mViewPager.setCurrentItem(-1 + mPagerAdapter.getCount(), true);
            }

            
            {
                this$0 = PhotoPagerSection.this;
                super();
            }
        }, 10L);
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)mCameraButton.getLayoutParams();
        TextView textview;
        boolean flag;
        int i;
        if (mImageArray.isEmpty())
        {
            layoutparams.addRule(3, 0);
            layoutparams.addRule(15);
            layoutparams.topMargin = 0;
        } else
        {
            layoutparams.addRule(15, 0);
            layoutparams.addRule(3, 0x7f090524);
            layoutparams.topMargin = (int)(-3F * mActivity.getResources().getDisplayMetrics().density);
        }
        mCameraButton.setLayoutParams(layoutparams);
        textview = mAtLeast;
        flag = mImageArray.isEmpty();
        i = 0;
        if (!flag)
        {
            i = 8;
        }
        textview.setVisibility(i);
    }

    public void setInProgress(boolean flag)
    {
        if (flag)
        {
            mProgress.setVisibility(0);
            mProgress.start();
            mCameraButton.setAlpha(0.5F);
            return;
        } else
        {
            mProgress.stop();
            mProgress.setVisibility(8);
            mCameraButton.setAlpha(1.0F);
            return;
        }
    }

    public void setVenue(ArrayList arraylist, PlacePhotoGallery.IPhotoGalleryListener iphotogallerylistener)
    {
        mListener = iphotogallerylistener;
        mImageArray = arraylist;
        setupViewPager();
    }

    public void venueUpdated(ArrayList arraylist)
    {
label0:
        {
            ArrayList arraylist1 = mImageArray;
            int i = 0;
            if (arraylist1 != null)
            {
                i = mImageArray.size();
            }
            mImageArray = arraylist;
            if (mPagerAdapter == null || i == 0)
            {
                setupViewPager();
            } else
            if (mImageArray.size() > 0)
            {
                mPagerAdapter.notifyDataSetChanged();
            } else
            {
                setupViewPager();
            }
            if (mGallery != null)
            {
                if (mImageArray.size() <= 0)
                {
                    break label0;
                }
                mGallery.updateImages(mImageArray);
            }
            return;
        }
        mGallery.dismiss();
        mGallery = null;
    }







    // Unreferenced inner class com/waze/reports/PhotoPagerSection$1

/* anonymous class */
    class _cls1
        implements PlacePhotoGallery.IPhotoGalleryListener
    {

        final PhotoPagerSection this$0;

        public void onDelete(int i)
        {
            mListener.onDelete(i);
        }

        public void onFlag(int i, int j)
        {
            mListener.onFlag(i, j);
        }

        public void onLike(int i)
        {
            mListener.onLike(i);
        }

        public void onScroll(int i)
        {
            mViewPager.setCurrentItem(i, true);
            mListener.onScroll(i);
        }

        public void onUnlike(int i)
        {
            mListener.onUnlike(i);
        }

            
            {
                this$0 = PhotoPagerSection.this;
                super();
            }
    }

}
