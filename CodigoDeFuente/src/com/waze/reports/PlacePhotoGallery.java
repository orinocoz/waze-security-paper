// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.LinearInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.waze.MoodManager;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.WazePagerAdapter;
import com.waze.ifs.ui.WazeViewPager;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import com.waze.view.map.ProgressAnimation;
import com.waze.view.text.WazeTextView;
import java.util.ArrayList;

public class PlacePhotoGallery extends Dialog
{
    public static interface IPhotoGalleryListener
    {

        public abstract void onDelete(int i);

        public abstract void onFlag(int i, int j);

        public abstract void onLike(int i);

        public abstract void onScroll(int i);

        public abstract void onUnlike(int i);
    }


    private static final int ANIMATION_DURATION = 200;
    private ActivityBase mActivity;
    private WazePagerAdapter mAdapter;
    private Bundle mImageLocation;
    private ArrayList mImages;
    private int mItemMargin;
    private IPhotoGalleryListener mListener;
    private RelativeLayout mMainLayout;
    private NativeManager mNm;
    private WazeViewPager mPager;

    public PlacePhotoGallery(Context context, ArrayList arraylist, int i, Bundle bundle, ActivityBase activitybase)
    {
        super(context, 0x7f060011);
        mItemMargin = 0;
        mImageLocation = null;
        mActivity = activitybase;
        mImages = arraylist;
        mNm = NativeManager.getInstance();
        setContentView(0x7f0300af);
        getWindow().setLayout(-1, -1);
        mMainLayout = (RelativeLayout)findViewById(0x7f090521);
        mMainLayout.setOnClickListener(new android.view.View.OnClickListener() {

            final PlacePhotoGallery this$0;

            public void onClick(View view)
            {
                animatePagerOut();
            }

            
            {
                this$0 = PlacePhotoGallery.this;
                super();
            }
        });
        mPager = (WazeViewPager)mMainLayout.findViewById(0x7f090522);
        int j = context.getResources().getDisplayMetrics().heightPixels;
        int k = context.getResources().getDisplayMetrics().widthPixels;
        int l;
        if (k > j)
        {
            mItemMargin = (k - (j * 4) / 3) / 2;
        } else
        {
            android.view.ViewGroup.LayoutParams layoutparams = mPager.getLayoutParams();
            layoutparams.height = (k * 3) / 4;
            mPager.setLayoutParams(layoutparams);
        }
        l = (int)(20F * context.getResources().getDisplayMetrics().density);
        if (l > mItemMargin)
        {
            mPager.setPageMargin(l - mItemMargin);
        }
        if (mAdapter != null)
        {
            mPager.setAdapter(null);
        }
        mAdapter = new WazePagerAdapter() {

            final PlacePhotoGallery this$0;

            public void destroyItem(ViewGroup viewgroup, int i1, Object obj)
            {
                viewgroup.removeView((View)obj);
            }

            public int getCount()
            {
                return mImages.size();
            }

            int getImagePosition(PhotoPagerSection.VenueImage venueimage)
            {
                if (mImages.contains(venueimage))
                {
                    return mImages.indexOf(venueimage);
                } else
                {
                    return -2;
                }
            }

            public int getItemPosition(Object obj)
            {
                return getImagePosition((PhotoPagerSection.VenueImage)((View)obj).getTag());
            }

            public Object instantiateItem(ViewGroup viewgroup, int i1)
            {
                RelativeLayout relativelayout = (RelativeLayout)LayoutInflater.from(viewgroup.getContext()).inflate(0x7f0300b1, viewgroup, false);
                final PhotoPagerSection.VenueImage vi = (PhotoPagerSection.VenueImage)mImages.get(i1);
                ProgressAnimation progressanimation = (ProgressAnimation)relativelayout.findViewById(0x7f090529);
                ImageView imageview;
                boolean flag;
                WazeTextView wazetextview;
                ImageView imageview1;
                View view;
                ImageButton imagebutton;
                ImageButton imagebutton1;
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
                ImageRepository.instance.getImage(vi.imageUri, false, imageview, progressanimation, mActivity);
                relativelayout.setTag(vi);
                viewgroup.addView(relativelayout);
                if (mItemMargin > 0)
                {
                    View view1 = relativelayout.findViewById(0x7f09010b);
                    android.widget.RelativeLayout.LayoutParams layoutparams1 = (android.widget.RelativeLayout.LayoutParams)view1.getLayoutParams();
                    layoutparams1.setMargins(mItemMargin, 0, mItemMargin, 0);
                    view1.setLayoutParams(layoutparams1);
                    view1.setOnClickListener(new android.view.View.OnClickListener() {

                        final _cls2 this$1;

                        public void onClick(View view)
                        {
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    });
                    relativelayout.findViewById(0x7f090528).setOnClickListener(new android.view.View.OnClickListener() {

                        final _cls2 this$1;

                        public void onClick(View view)
                        {
                            animatePagerOut();
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    });
                }
                wazetextview = (WazeTextView)relativelayout.findViewById(0x7f09052c);
                imageview1 = (ImageView)relativelayout.findViewById(0x7f09052b);
                view = relativelayout.findViewById(0x7f09052e);
                imagebutton = (ImageButton)relativelayout.findViewById(0x7f09052f);
                imagebutton1 = (ImageButton)relativelayout.findViewById(0x7f09052d);
                if (vi.didLike)
                {
                    imagebutton.setImageResource(0x7f0202aa);
                } else
                {
                    imagebutton.setImageResource(0x7f0202a9);
                }
                s = vi.submitter;
                s1 = vi.mood;
                if (vi.isUploading)
                {
                    s = mNm.getLanguageString(DisplayStrings.DS_UPLOADING_DATA___);
                } else
                if (s != null && !s.isEmpty())
                {
                    s = String.format(mNm.getLanguageString(DisplayStrings.DS_PHOTO_BY_PS), new Object[] {
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
                    imagebutton.setVisibility(8);
                    if (flag)
                    {
                        imagebutton1.setVisibility(8);
                        return relativelayout;
                    } else
                    {
                        imagebutton1.setImageResource(0x7f0202a5);
                        imagebutton1.setOnClickListener(vi. new android.view.View.OnClickListener() {

                            final _cls2 this$1;
                            private final PhotoPagerSection.VenueImage val$vi;

                            public void onClick(View view)
                            {
                                int i = getImagePosition(vi);
                                if (i >= 0)
                                {
                                    areYouSureDelete(i);
                                }
                            }

            
            {
                this$1 = final__pcls2;
                vi = PhotoPagerSection.VenueImage.this;
                super();
            }
                        });
                        return relativelayout;
                    }
                }
                imagebutton.setOnClickListener(imagebutton. new android.view.View.OnClickListener() {

                    final _cls2 this$1;
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
                            mListener.onUnlike(i);
                            return;
                        } else
                        {
                            vi.didLike = true;
                            likeView.setImageResource(0x7f0202aa);
                            mListener.onLike(i);
                            return;
                        }
                    }

            
            {
                this$1 = final__pcls2;
                vi = venueimage;
                likeView = ImageButton.this;
                super();
            }
                });
                imagebutton1.setOnClickListener(vi. new android.view.View.OnClickListener() {

                    final _cls2 this$1;
                    private final PhotoPagerSection.VenueImage val$vi;

                    public void onClick(View view)
                    {
                        int i = getImagePosition(vi);
                        if (i < 0)
                        {
                            return;
                        } else
                        {
                            showFlagSubmenu(i);
                            return;
                        }
                    }

            
            {
                this$1 = final__pcls2;
                vi = PhotoPagerSection.VenueImage.this;
                super();
            }
                });
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
                    imageview1.setImageDrawable(MoodManager.getMoodDrawable(mActivity, s1));
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
        };
        mPager.setAdapter(mAdapter);
        mAdapter.notifyDataSetChanged();
        mPager.setCurrentItem(i);
        if (bundle != null)
        {
            mImageLocation = bundle;
            mPager.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                final PlacePhotoGallery this$0;

                public void onGlobalLayout()
                {
                    mPager.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    animatePagerIn();
                }

            
            {
                this$0 = PlacePhotoGallery.this;
                super();
            }
            });
        }
        mPager.setOnPageChangeListener(new com.waze.ifs.ui.WazeViewPager.OnPageChangeListener() {

            final PlacePhotoGallery this$0;

            public void onPageScrollStateChanged(int i1)
            {
            }

            public void onPageScrolled(int i1, float f, int j1)
            {
            }

            public void onPageSelected(int i1)
            {
                if (mListener != null)
                {
                    mListener.onScroll(i1);
                }
            }

            
            {
                this$0 = PlacePhotoGallery.this;
                super();
            }
        });
    }

    private void animatePagerIn()
    {
        int i = mImageLocation.getInt("left");
        int j = mImageLocation.getInt("top");
        int k = mImageLocation.getInt("width");
        int l = mImageLocation.getInt("height");
        int ai[] = new int[2];
        mPager.getLocationInWindow(ai);
        AnimationSet animationset = new AnimationSet(false);
        int i1 = mPager.getWidth();
        int j1 = mPager.getHeight();
        ScaleAnimation scaleanimation = new ScaleAnimation((float)k / (float)i1, 1.0F, (float)l / (float)j1, 1.0F, 1, 0.5F, 1, 0.5F);
        scaleanimation.setDuration(200L);
        animationset.addAnimation(scaleanimation);
        TranslateAnimation translateanimation = new TranslateAnimation(0, (i + k / 2) - (ai[0] + i1 / 2), 1, 0.0F, 0, (j + l / 2) - (ai[1] + j1 / 2), 1, 0.0F);
        translateanimation.setDuration(200L);
        translateanimation.setInterpolator(new LinearInterpolator());
        animationset.addAnimation(translateanimation);
        mPager.startAnimation(animationset);
    }

    private void animatePagerOut()
    {
        if (mImageLocation == null)
        {
            dismiss();
            return;
        } else
        {
            int i = mImageLocation.getInt("left");
            int j = mImageLocation.getInt("top");
            int k = mImageLocation.getInt("width");
            int l = mImageLocation.getInt("height");
            int ai[] = new int[2];
            mPager.getLocationInWindow(ai);
            AnimationSet animationset = new AnimationSet(false);
            int i1 = mPager.getWidth();
            int j1 = mPager.getHeight();
            ScaleAnimation scaleanimation = new ScaleAnimation(1.0F, (float)k / (float)i1, 1.0F, (float)l / (float)j1, 1, 0.5F, 1, 0.5F);
            scaleanimation.setDuration(300L);
            animationset.addAnimation(scaleanimation);
            TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 0, (i + k / 2) - (ai[0] + i1 / 2), 1, 0.0F, 0, (j + l / 2) - (ai[1] + j1 / 2));
            translateanimation.setDuration(200L);
            translateanimation.setInterpolator(new LinearInterpolator());
            animationset.addAnimation(translateanimation);
            animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final PlacePhotoGallery this$0;

                public void onAnimationEnd(Animation animation)
                {
                    dismiss();
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                }

            
            {
                this$0 = PlacePhotoGallery.this;
                super();
            }
            });
            mPager.startAnimation(animationset);
            return;
        }
    }

    private void areYouSureDelete(final int position)
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final PlacePhotoGallery this$0;
            private final int val$position;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (i == 1)
                {
                    mListener.onDelete(position);
                }
            }

            
            {
                this$0 = PlacePhotoGallery.this;
                position = i;
                super();
            }
        };
        MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(mNm.getLanguageString(DisplayStrings.DS_DELETE_PICTURE), mNm.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_YOU_WANT_TO_DELETE_PICTURE), true, onclicklistener, mNm.getLanguageString(DisplayStrings.DS_DELETE), mNm.getLanguageString(DisplayStrings.DS_CANCEL), -1);
    }

    private void showFlagSubmenu(final int position)
    {
        Analytics.log("PLACES_PHOTO_FLAGGING_POPUP_SHOWN", null, null);
        String s = mNm.getLanguageString(DisplayStrings.DS_WHATS_WRONG_WITH_THIS_PHOTOQ);
        String as[] = new String[3];
        as[0] = mNm.getLanguageString(DisplayStrings.DS_IT_HAS_NOTHING_TO_DO_WITH_THIS_PLACE);
        as[1] = mNm.getLanguageString(DisplayStrings.DS_IT_IS_INAPPROPRIATE);
        as[2] = mNm.getLanguageString(DisplayStrings.DS_IT_IS_IN_LOW_QUALITY);
        final int optionValues[] = {
            8, 5, 7
        };
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getContext(), 0x7f06000f);
        builder.setTitle(s);
        builder.setItems(as, new android.content.DialogInterface.OnClickListener() {

            final PlacePhotoGallery this$0;
            private final int val$optionValues[];
            private final int val$position;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                int j = optionValues[i];
                mListener.onFlag(position, j);
            }

            
            {
                this$0 = PlacePhotoGallery.this;
                optionValues = ai;
                position = i;
                super();
            }
        });
        builder.setIcon(0x7f02015a);
        builder.setCancelable(true);
        AlertDialog alertdialog = builder.create();
        alertdialog.setCanceledOnTouchOutside(true);
        alertdialog.show();
    }

    public void onBackPressed()
    {
        animatePagerOut();
    }

    void setListener(IPhotoGalleryListener iphotogallerylistener)
    {
        mListener = iphotogallerylistener;
    }

    public void updateImages(ArrayList arraylist)
    {
        mImages = arraylist;
        mAdapter.notifyDataSetChanged();
    }










}
