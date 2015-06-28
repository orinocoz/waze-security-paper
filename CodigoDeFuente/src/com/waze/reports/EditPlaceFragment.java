// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Activity;
import android.app.Fragment;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AlphaAnimation;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.waze.MapView;
import com.waze.NativeLocListener;
import com.waze.NativeManager;
import com.waze.animation.easing.AnimationEasingManager;
import com.waze.animation.easing.Circ;
import com.waze.animation.easing.Elastic;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.PointsView;
import com.waze.navigate.DriveToNativeManager;
import com.waze.settings.DrillDownSettingView;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;
import com.waze.utils.EditTextUtils;
import com.waze.view.anim.AnimationUtils;
import com.waze.view.text.WazeTextView;
import com.waze.view.title.TitleBarTextButton;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.waze.reports:
//            VenueData, EditPlaceFlowActivity, OpeningHours, PhotoPagerSection, 
//            EditPlacePointsHolder, EditPlaceValidatorsHolder, EditPlaceServicesFragment, ThankYouDialog, 
//            EditPlaceCategoriesHolder

public class EditPlaceFragment extends Fragment
{
    public static class LengthValidator
        implements TextValidator
    {

        final boolean _emptyOk;
        final int _minLength;

        public boolean isTextValid(String s)
        {
            while (_emptyOk && s.isEmpty() || s.length() >= _minLength) 
            {
                return true;
            }
            return false;
        }

        public LengthValidator(int i, boolean flag)
        {
            _minLength = i;
            _emptyOk = flag;
        }
    }

    public static class PaternValidator
        implements TextValidator
    {

        final boolean _emptyOk;
        final Pattern _pattern;

        public boolean isTextValid(String s)
        {
            if (_emptyOk && s.isEmpty())
            {
                return true;
            } else
            {
                return _pattern.matcher(s.trim()).matches();
            }
        }

        public PaternValidator(String s, boolean flag)
        {
            _pattern = Pattern.compile(s, 2);
            _emptyOk = flag;
        }
    }

    private final class TextPointsWatcherImplementation
        implements TextWatcher
    {

        private String _orig;
        private final int _pts;
        private final PointsView _ptsView;
        private TextValidator _validator;
        final EditPlaceFragment this$0;

        public void afterTextChanged(Editable editable)
        {
            if (_ptsView.isOn())
            {
                EditPlaceFragment editplacefragment1 = EditPlaceFragment.this;
                editplacefragment1.mEarnedPoints = editplacefragment1.mEarnedPoints - _pts;
            }
            boolean flag = true;
            if (_validator != null)
            {
                flag = _validator.isTextValid(editable.toString());
                _ptsView.setValid(flag);
            }
            boolean flag1;
            boolean flag2;
            boolean flag3;
            if (_orig.contentEquals(editable))
            {
                flag1 = false;
            } else
            {
                flag1 = true;
            }
            if (flag1)
            {
                onEdit();
            }
            if (editable.length() > 0)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            flag3 = false;
            if (flag1)
            {
                flag3 = false;
                if (flag)
                {
                    flag3 = true;
                }
            }
            _ptsView.setIsOn(flag3, flag2, true);
            if (flag3)
            {
                EditPlaceFragment editplacefragment = EditPlaceFragment.this;
                editplacefragment.mEarnedPoints = editplacefragment.mEarnedPoints + _pts;
            }
            updatePoints();
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        private TextPointsWatcherImplementation(PointsView pointsview, int i, TextValidator textvalidator, String s)
        {
            boolean flag = true;
            this$0 = EditPlaceFragment.this;
            super();
            _validator = null;
            _ptsView = pointsview;
            boolean flag1 = false;
            if (s != null)
            {
                boolean flag2 = s.isEmpty();
                flag1 = false;
                if (!flag2)
                {
                    flag1 = true;
                }
            }
            _pts = i;
            _orig = s;
            if (s == null)
            {
                _orig = "";
            }
            _validator = textvalidator;
            PointsView pointsview1;
            if (textvalidator == null)
            {
                _ptsView.setValid(flag);
            } else
            {
                mValidatedPointsViews.add(pointsview);
                _ptsView.setValid(textvalidator.isTextValid(_orig));
            }
            _ptsView.setPoints(i, flag1);
            pointsview1 = _ptsView;
            if (_orig.isEmpty())
            {
                flag = false;
            }
            pointsview1.setIsOn(false, flag, false);
        }

        TextPointsWatcherImplementation(PointsView pointsview, int i, TextValidator textvalidator, String s, TextPointsWatcherImplementation textpointswatcherimplementation)
        {
            this(pointsview, i, textvalidator, s);
        }
    }

    public static interface TextValidator
    {

        public abstract boolean isTextValid(String s);
    }


    private WazeTextView mAboutEdit;
    private PointsView mCategoriesPtsView;
    private WazeTextView mCityStreetMain;
    private WazeTextView mCityStreetSub;
    private float mDensity;
    private boolean mDidEdit;
    private DriveToNativeManager mDriveTo;
    private EditText mETName;
    private EditText mETNumber;
    private EditText mETPhone;
    private EditText mETWebsite;
    private int mEarnedPoints;
    private TextValidator mHasContentValidator;
    private ArrayList mImageArray;
    private boolean mIsRolling;
    private boolean mIsUploading;
    private ImageView mMapImage;
    private MapView mMapView;
    private final RunnableExecutor mNativeCanvasReadyEvent = new RunnableExecutor() {

        final EditPlaceFragment this$0;

        public void event()
        {
            if (mVenue.longitude == 0 || mVenue.latitude == 0)
            {
                com.waze.NativeLocListener.NativeLocation nativelocation = NativeLocListener.GetNativeLocation(NativeLocListener.getInstance().getLastLocation());
                mVenue.longitude = nativelocation.mLongtitude;
                mVenue.latitude = nativelocation.mLatitude;
            }
            setAddressOptionsView();
            mDriveTo.zoomOnMap(mVenue.longitude, mVenue.latitude, 250);
        }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
    };
    private NativeManager mNm;
    private VenueData mOrigVenue;
    private PhotoPagerSection mPhotoPagerSection;
    private int mPrevPoints;
    private Runnable mReplaceMapRunnable;
    private int mScrollY;
    private ThankYouDialog mTyd;
    private ArrayList mValidatedPointsViews;
    private VenueData mVenue;
    private boolean mWasAddressOptionsViewSet;
    private boolean mWereCategoriesChanged;
    private boolean mWereCategoriesPointsGiven;
    private View r;

    public EditPlaceFragment()
    {
        mEarnedPoints = 0;
        mPrevPoints = 0;
        mIsUploading = false;
        mIsRolling = false;
        mWereCategoriesChanged = false;
        mWereCategoriesPointsGiven = false;
        mWasAddressOptionsViewSet = false;
        mValidatedPointsViews = new ArrayList(16);
        mHasContentValidator = new TextValidator() {

            final EditPlaceFragment this$0;

            public boolean isTextValid(String s)
            {
                return !s.isEmpty();
            }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
        };
        mDidEdit = false;
        mScrollY = 0;
    }

    private void checkIfUSerIsGood()
    {
        boolean flag = true;
        String s = mETNumber.getText().toString();
        boolean flag1 = true;
        Iterator iterator = mValidatedPointsViews.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                if ((mVenue.name == null || mVenue.name.isEmpty()) && !mOrigVenue.city.isEmpty())
                {
                    if (flag1)
                    {
                        focusOnView(r.findViewById(0x7f090242));
                    }
                    AnimationUtils.flashView(r.findViewById(0x7f090244));
                    flag1 = false;
                }
                if (mVenue.city.isEmpty() && !mOrigVenue.city.isEmpty())
                {
                    if (flag1)
                    {
                        focusOnView(r.findViewById(0x7f090246));
                    }
                    AnimationUtils.flashView(r.findViewById(0x7f090249));
                    flag1 = false;
                }
                if (mVenue.numCategories == 0 && mOrigVenue.numCategories != 0)
                {
                    if (flag1)
                    {
                        focusOnView(r.findViewById(0x7f090251));
                    }
                    AnimationUtils.flashView(mCategoriesPtsView);
                    flag1 = false;
                }
                if (!flag1)
                {
                    return;
                }
                break;
            }
            PointsView pointsview = (PointsView)iterator.next();
            if (!pointsview.isValid())
            {
                if (flag1)
                {
                    focusOnView(pointsview);
                }
                AnimationUtils.flashView(pointsview);
                flag1 = false;
            }
        } while (true);
        mVenue.houseNumber = s;
        mVenue.name = mETName.getText().toString();
        mVenue.phoneNumber = mETPhone.getText().toString();
        mVenue.website = mETWebsite.getText().toString();
        int i = mVenue.numNewImages;
        int j;
        int k;
        EditPlaceFlowActivity editplaceflowactivity;
        VenueData venuedata;
        VenueData venuedata1;
        if (mIsUploading)
        {
            j = ((flag) ? 1 : 0);
        } else
        {
            j = 0;
        }
        k = i + j;
        editplaceflowactivity = (EditPlaceFlowActivity)getActivity();
        venuedata = mVenue;
        venuedata1 = mOrigVenue;
        if (k <= 0)
        {
            flag = false;
        }
        editplaceflowactivity.sendVenue(venuedata, venuedata1, flag, mEarnedPoints);
        mNm.OpenProgressPopup(mNm.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
    }

    private final void focusOnView(final View child)
    {
        final ScrollView sv = (ScrollView)r.findViewById(0x7f0900a5);
        do
        {
            if (child.getParent().getParent() == sv)
            {
                sv.post(new Runnable() {

                    final EditPlaceFragment this$0;
                    private final View val$child;
                    private final ScrollView val$sv;

                    public void run()
                    {
                        sv.smoothScrollTo(0, child.getTop() - (int)(100F * mDensity));
                    }

            
            {
                this$0 = EditPlaceFragment.this;
                sv = scrollview;
                child = view;
                super();
            }
                });
                return;
            }
            child = (View)child.getParent();
        } while (true);
    }

    private String getOpeningHoursString(VenueData venuedata)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        do
        {
            if (i >= venuedata.numOpeningHours)
            {
                if (stringbuilder.length() > 0)
                {
                    stringbuilder.deleteCharAt(-1 + stringbuilder.length());
                }
                return stringbuilder.toString();
            }
            OpeningHours openinghours = venuedata.openingHours[i];
            stringbuilder.append(openinghours.getDaysString());
            stringbuilder.append(": ");
            stringbuilder.append(openinghours.getHoursString());
            stringbuilder.append('\n');
            i++;
        } while (true);
    }

    private void imageArrayLoad()
    {
        mImageArray = new ArrayList(mVenue.numImages);
        int i = 0;
        do
        {
            if (i >= mVenue.numImages)
            {
                return;
            }
            String s = mVenue.imageURLs[i];
            String s1 = mVenue.imageThumbnailURLs[i];
            PhotoPagerSection.VenueImage venueimage;
            if (s.startsWith("/"))
            {
                venueimage = new PhotoPagerSection.VenueImage(Uri.fromFile(new File(s)).toString(), s1, "", "", false, false, true);
            } else
            {
                venueimage = new PhotoPagerSection.VenueImage(s, s1, mVenue.imageReporters[i], mVenue.imageReporterMoods[i], mVenue.imageLiked[i], mVenue.imageByMe[i], false);
            }
            mImageArray.add(venueimage);
            i++;
        } while (true);
    }

    private void onEdit()
    {
        if (mDidEdit)
        {
            return;
        } else
        {
            mDidEdit = true;
            ((TitleBarTextButton)r.findViewById(0x7f090058)).setCloseButtonDisabled(false);
            return;
        }
    }

    private void roll(final ScrollView sv, final ScrollView sv2, final boolean up, boolean flag)
    {
        AnimationEasingManager animationeasingmanager = new AnimationEasingManager(new com.waze.animation.easing.AnimationEasingManager.EasingCallback() {

            final EditPlaceFragment this$0;
            private final ScrollView val$sv;
            private final ScrollView val$sv2;
            private final boolean val$up;

            public void onFinished(double d1)
            {
                if (up)
                {
                    EditPlaceFragment editplacefragment1 = EditPlaceFragment.this;
                    editplacefragment1.mPrevPoints = -1 + editplacefragment1.mPrevPoints;
                } else
                {
                    EditPlaceFragment editplacefragment = EditPlaceFragment.this;
                    editplacefragment.mPrevPoints = 1 + editplacefragment.mPrevPoints;
                }
                mIsRolling = false;
                setPointsWheels(true);
            }

            public void onStarted(double d1)
            {
            }

            public void onValueChanged(double d1, double d2)
            {
                int i;
                if (up)
                {
                    i = (int)((double)(40F * mDensity) - d1);
                } else
                {
                    i = (int)d1;
                }
                sv.scrollTo(0, i);
                if (sv2 != null)
                {
                    sv2.scrollTo(0, i);
                }
            }

            
            {
                this$0 = EditPlaceFragment.this;
                up = flag;
                sv = scrollview;
                sv2 = scrollview1;
                super();
            }
        });
        Object obj;
        com.waze.animation.easing.AnimationEasingManager.EaseType easetype;
        double d;
        char c;
        if (flag)
        {
            obj = com/waze/animation/easing/Elastic;
        } else
        {
            obj = com/waze/animation/easing/Circ;
        }
        easetype = com.waze.animation.easing.AnimationEasingManager.EaseType.EaseOut;
        d = 20F * mDensity;
        if (flag)
        {
            c = '\u0258';
        } else
        {
            c = 'd';
        }
        animationeasingmanager.start(((Class) (obj)), easetype, 0.0D, d, c);
    }

    private void setAddressOptionsView()
    {
        if (!mWasAddressOptionsViewSet)
        {
            mDriveTo.setAddressOptionsView(0, mVenue.longitude, mVenue.latitude, true);
            mWasAddressOptionsViewSet = true;
        }
    }

    private EditText setEditTextAndPoints(int i, int j, DisplayStrings displaystrings, String s, int k, TextValidator textvalidator)
    {
        PointsView pointsview = (PointsView)r.findViewById(i);
        EditText edittext = (EditText)r.findViewById(j);
        edittext.setText(s);
        edittext.addTextChangedListener(new TextPointsWatcherImplementation(pointsview, k, textvalidator, s, null));
        edittext.setHint(mNm.getLanguageString(displaystrings));
        return edittext;
    }

    private void setPointsWheels(boolean flag)
    {
        if (mIsRolling)
        {
            return;
        }
        final ScrollView onesSV = (ScrollView)r.findViewById(0x7f090268);
        final ScrollView tensSV = (ScrollView)r.findViewById(0x7f090264);
        View view = r.findViewById(0x7f090262);
        if (view.getVisibility() != 0 && mEarnedPoints > 0)
        {
            view.setVisibility(0);
            if (flag)
            {
                AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
                alphaanimation.setDuration(200L);
                view.setAnimation(alphaanimation);
            }
        }
        if (flag)
        {
            if (mPrevPoints > mEarnedPoints)
            {
                mIsRolling = true;
                boolean flag2;
                int j3;
                int k3;
                int l3;
                TextView textview12;
                TextView textview13;
                TextView textview14;
                if (mPrevPoints - mEarnedPoints == 1)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                j3 = mPrevPoints % 10;
                k3 = (j3 + 9) % 10;
                l3 = (j3 + 8) % 10;
                textview12 = (TextView)onesSV.findViewById(0x7f090265);
                textview13 = (TextView)onesSV.findViewById(0x7f090267);
                textview14 = (TextView)onesSV.findViewById(0x7f090266);
                textview12.setText((new StringBuilder()).append(l3).toString());
                textview13.setText((new StringBuilder()).append(j3).toString());
                textview14.setText((new StringBuilder()).append(k3).toString());
                onesSV.scrollTo(0, (int)(40F * mDensity));
                if (j3 == 0)
                {
                    int j4 = mPrevPoints / 10;
                    int k4 = (j4 + 9) % 10;
                    int l4 = (j4 + 8) % 10;
                    TextView textview15 = (TextView)tensSV.findViewById(0x7f090265);
                    TextView textview16 = (TextView)tensSV.findViewById(0x7f090267);
                    TextView textview17 = (TextView)tensSV.findViewById(0x7f090266);
                    textview15.setText((new StringBuilder()).append(l4).toString());
                    textview16.setText((new StringBuilder()).append(j4).toString());
                    textview17.setText((new StringBuilder()).append(k4).toString());
                    tensSV.scrollTo(0, (int)(40F * mDensity));
                    roll(onesSV, tensSV, true, flag2);
                    return;
                } else
                {
                    int i4 = mPrevPoints / 10;
                    ((TextView)tensSV.findViewById(0x7f090265)).setText((new StringBuilder()).append(i4).toString());
                    tensSV.scrollTo(0, 0);
                    roll(onesSV, null, true, flag2);
                    return;
                }
            }
            if (mPrevPoints < mEarnedPoints)
            {
                mIsRolling = true;
                boolean flag1;
                int k1;
                int l1;
                int i2;
                TextView textview6;
                TextView textview7;
                TextView textview8;
                if (mEarnedPoints - mPrevPoints == 1)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                k1 = mPrevPoints % 10;
                l1 = (k1 + 1) % 10;
                i2 = (k1 + 2) % 10;
                textview6 = (TextView)onesSV.findViewById(0x7f090265);
                textview7 = (TextView)onesSV.findViewById(0x7f090267);
                textview8 = (TextView)onesSV.findViewById(0x7f090266);
                textview6.setText((new StringBuilder()).append(k1).toString());
                textview7.setText((new StringBuilder()).append(i2).toString());
                textview8.setText((new StringBuilder()).append(l1).toString());
                onesSV.scrollTo(0, 0);
                if (k1 == 9)
                {
                    int k2 = mPrevPoints / 10;
                    int l2 = (k2 + 1) % 10;
                    int i3 = (k2 + 2) % 10;
                    TextView textview9 = (TextView)tensSV.findViewById(0x7f090265);
                    TextView textview10 = (TextView)tensSV.findViewById(0x7f090267);
                    TextView textview11 = (TextView)tensSV.findViewById(0x7f090266);
                    textview9.setText((new StringBuilder()).append(k2).toString());
                    textview10.setText((new StringBuilder()).append(i3).toString());
                    textview11.setText((new StringBuilder()).append(l2).toString());
                    tensSV.scrollTo(0, 0);
                    roll(onesSV, tensSV, false, flag1);
                    return;
                } else
                {
                    int j2 = mPrevPoints / 10;
                    ((TextView)tensSV.findViewById(0x7f090265)).setText((new StringBuilder()).append(j2).toString());
                    tensSV.scrollTo(0, 0);
                    roll(onesSV, null, false, flag1);
                    return;
                }
            }
        }
        int i = mEarnedPoints % 10;
        int j = (9 + mEarnedPoints) % 10;
        int k = (1 + mEarnedPoints) % 10;
        TextView textview = (TextView)onesSV.findViewById(0x7f090265);
        TextView textview1 = (TextView)onesSV.findViewById(0x7f090267);
        TextView textview2 = (TextView)onesSV.findViewById(0x7f090266);
        textview.setText((new StringBuilder()).append(j).toString());
        textview1.setText((new StringBuilder()).append(k).toString());
        textview2.setText((new StringBuilder()).append(i).toString());
        onesSV.scrollTo(0, (int)(20F * mDensity));
        onesSV.post(new Runnable() {

            final EditPlaceFragment this$0;
            private final ScrollView val$onesSV;

            public void run()
            {
                onesSV.scrollTo(0, (int)(20F * mDensity));
            }

            
            {
                this$0 = EditPlaceFragment.this;
                onesSV = scrollview;
                super();
            }
        });
        int l = mEarnedPoints / 10;
        int i1 = (9 + mEarnedPoints) % 10;
        int j1 = (1 + mEarnedPoints) % 10;
        TextView textview3 = (TextView)tensSV.findViewById(0x7f090265);
        TextView textview4 = (TextView)tensSV.findViewById(0x7f090267);
        TextView textview5 = (TextView)tensSV.findViewById(0x7f090266);
        textview3.setText((new StringBuilder()).append(i1).toString());
        textview4.setText((new StringBuilder()).append(j1).toString());
        textview5.setText((new StringBuilder()).append(l).toString());
        tensSV.scrollTo(0, (int)(20F * mDensity));
        tensSV.post(new Runnable() {

            final EditPlaceFragment this$0;
            private final ScrollView val$tensSV;

            public void run()
            {
                tensSV.scrollTo(0, (int)(20F * mDensity));
            }

            
            {
                this$0 = EditPlaceFragment.this;
                tensSV = scrollview;
                super();
            }
        });
    }

    private void setUpFragment()
    {
        TitleBarTextButton titlebartextbutton = (TitleBarTextButton)r.findViewById(0x7f090058);
        titlebartextbutton.init(getActivity(), DisplayStrings.DS_EDIT_PLACE, DisplayStrings.DS_DONE);
        titlebartextbutton.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final EditPlaceFragment this$0;

            public void onClick(View view)
            {
                checkIfUSerIsGood();
            }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
        });
        if (!mDidEdit)
        {
            titlebartextbutton.setCloseButtonDisabled(true);
        }
        ((WazeTextView)r.findViewById(0x7f090269)).setText(mNm.getLanguageString(DisplayStrings.DS_POINTS_COLLECTED));
        int i;
        int j;
        PointsView pointsview;
        String s;
        int k;
        String s1;
        PaternValidator paternvalidator;
        android.view.View.OnClickListener onclicklistener;
        PointsView pointsview1;
        int l;
        String s2;
        WazeTextView wazetextview;
        PointsView pointsview2;
        int i1;
        String s3;
        WazeTextView wazetextview1;
        int j1;
        PointsView pointsview3;
        WazeTextView wazetextview2;
        LengthValidator lengthvalidator;
        int k1;
        DisplayStrings displaystrings;
        String s4;
        PaternValidator paternvalidator1;
        int l1;
        DisplayStrings displaystrings1;
        String s5;
        PaternValidator paternvalidator2;
        DrillDownSettingView drilldownsettingview;
        if (mVenue.numImages > 1)
        {
            ((SettingsTitleText)r.findViewById(0x7f090240)).setText(mNm.getLanguageString(DisplayStrings.DS_PHOTOS));
        } else
        {
            ((SettingsTitleText)r.findViewById(0x7f090240)).setText(mNm.getLanguageString(DisplayStrings.DS_PHOTO));
        }
        mPhotoPagerSection = new PhotoPagerSection((ActivityBase)getActivity(), r, true, new android.view.View.OnClickListener() {

            final EditPlaceFragment this$0;

            public void onClick(View view)
            {
                if (mIsUploading)
                {
                    return;
                } else
                {
                    Bundle bundle = new Bundle();
                    int ai[] = new int[2];
                    view.getLocationInWindow(ai);
                    bundle.putInt("left", ai[0]);
                    bundle.putInt("top", ai[1]);
                    bundle.putInt("width", view.getWidth());
                    bundle.putInt("height", view.getHeight());
                    EditTextUtils.closeKeyboard(getActivity(), r);
                    ((EditPlaceFlowActivity)getActivity()).goToTakePhoto(bundle);
                    return;
                }
            }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
        });
        mPhotoPagerSection.setInProgress(mIsUploading);
        imageArrayLoad();
        mPhotoPagerSection.setVenue(mImageArray, new PlacePhotoGallery.IPhotoGalleryListener() {

            final EditPlaceFragment this$0;

            public void onDelete(int i2)
            {
                mNm.venueDeleteImage(mVenue.id, mVenue.imageURLs[i2]);
                int j2 = i2 - (mVenue.numImages - mVenue.numNewImages);
                mVenue.removeNewImageId(j2);
                mVenue.removeImage(i2);
                mImageArray.remove(i2);
                mPhotoPagerSection.venueUpdated(mImageArray);
                int k2 = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Images);
                EditPlaceFragment editplacefragment = EditPlaceFragment.this;
                editplacefragment.mEarnedPoints = editplacefragment.mEarnedPoints - k2;
                updatePoints();
            }

            public void onFlag(int i2, int j2)
            {
                mNm.venueFlagImage(mVenue.id, mVenue.imageURLs[i2], j2);
                mVenue.removeImage(i2);
                mImageArray.remove(i2);
                mPhotoPagerSection.venueUpdated(mImageArray);
            }

            public void onLike(int i2)
            {
                mVenue.imageLiked[i2] = true;
                mNm.venueLikeImage(mVenue.id, mVenue.imageURLs[i2]);
            }

            public void onScroll(int i2)
            {
            }

            public void onUnlike(int i2)
            {
                mVenue.imageLiked[i2] = false;
                mNm.venueUnlikeImage(mVenue.id, mVenue.imageURLs[i2]);
            }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
        });
        ((SettingsTitleText)r.findViewById(0x7f090241)).setText(mNm.getLanguageString(DisplayStrings.DS_NAME));
        i = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Name);
        mETName = setEditTextAndPoints(0x7f090244, 0x7f090243, DisplayStrings.DS_ADD_NAME, mOrigVenue.name, i, new PaternValidator(EditPlaceValidatorsHolder.getValidator(EditPlaceValidatorsHolder.ValidatorType.Name), false));
        ((SettingsTitleText)r.findViewById(0x7f090245)).setText(mNm.getLanguageString(DisplayStrings.DS_ADDRESS));
        j = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.City);
        pointsview = (PointsView)r.findViewById(0x7f090249);
        mCityStreetMain = (WazeTextView)r.findViewById(0x7f090247);
        mCityStreetSub = (WazeTextView)r.findViewById(0x7f090248);
        s = mOrigVenue.street;
        if (s == null || s.isEmpty())
        {
            s = mOrigVenue.city;
        }
        mCityStreetMain.addTextChangedListener(new TextPointsWatcherImplementation(pointsview, j, mHasContentValidator, s, null));
        mCityStreetMain.setHint(mNm.getLanguageString(DisplayStrings.DS_STREET_NAME));
        mCityStreetSub.setHint(mNm.getLanguageString(DisplayStrings.DS_CITY));
        r.findViewById(0x7f090246).setOnClickListener(new android.view.View.OnClickListener() {

            final EditPlaceFragment this$0;

            public void onClick(View view)
            {
                ((EditPlaceFlowActivity)getActivity()).goToPickCityStreet();
            }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
        });
        k = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.HouseNumber);
        s1 = EditPlaceValidatorsHolder.getValidator(EditPlaceValidatorsHolder.ValidatorType.HouseNumber);
        paternvalidator = null;
        if (s1 != null)
        {
            String s6 = EditPlaceValidatorsHolder.getValidator(EditPlaceValidatorsHolder.ValidatorType.HouseNumber);
            paternvalidator = new PaternValidator(s6, true);
        }
        mETNumber = setEditTextAndPoints(0x7f09024b, 0x7f09024a, DisplayStrings.DS_, mOrigVenue.houseNumber, k, paternvalidator);
        mETNumber.setHint(mNm.getLanguageString(DisplayStrings.DS_HOUSE_NUMBER));
        ((SettingsTitleText)r.findViewById(0x7f09024c)).setText(mNm.getLanguageString(DisplayStrings.DS_LOCATION));
        mMapView = (MapView)r.findViewById(0x7f09024e);
        mMapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
        mMapImage = (ImageView)r.findViewById(0x7f09024f);
        onclicklistener = new android.view.View.OnClickListener() {

            final EditPlaceFragment this$0;

            public void onClick(View view)
            {
                EditTextUtils.closeKeyboard(getActivity(), r);
                ((EditPlaceFlowActivity)getActivity()).goToEditMap();
            }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
        };
        r.findViewById(0x7f09024d).setOnClickListener(onclicklistener);
        mMapView.setHandleTouch(false);
        mReplaceMapRunnable = new Runnable() {

            final EditPlaceFragment this$0;
            int timesWaited;

            public void run()
            {
                timesWaited = 1 + timesWaited;
                mMapView.setImageViewToRender(mMapImage, new com.waze.OGLRenderer.OnRenderListener() {

                    final _cls10 this$1;

                    public void onRender()
                    {
                        mMapView.setImageViewToRender(null, null);
                        if (timesWaited > 3)
                        {
                            mMapView.setVisibility(8);
                        }
                    }

            
            {
                this$1 = _cls10.this;
                super();
            }
                });
                if (timesWaited <= 3)
                {
                    mMapView.postDelayed(mReplaceMapRunnable, 1000 * timesWaited);
                }
            }


            
            {
                this$0 = EditPlaceFragment.this;
                super();
                timesWaited = 0;
            }
        };
        mMapView.postDelayed(mReplaceMapRunnable, 500L);
        ((SettingsTitleText)r.findViewById(0x7f090250)).setText(mNm.getLanguageString(DisplayStrings.DS_CATEGORIES));
        refreshCategories((LinearLayout)r.findViewById(0x7f090251));
        ((SettingsTitleText)r.findViewById(0x7f090252)).setText(mNm.getLanguageString(DisplayStrings.DS_SERVICES));
        r.findViewById(0x7f090253).setOnClickListener(new android.view.View.OnClickListener() {

            final EditPlaceFragment this$0;

            public void onClick(View view)
            {
                EditTextUtils.closeKeyboard(getActivity(), r);
                mVenue.numServices = EditPlaceServicesFragment.sortServiceIdsArray(mVenue.services, mVenue.numServices);
                mOrigVenue.numServices = EditPlaceServicesFragment.sortServiceIdsArray(mOrigVenue.services, mOrigVenue.numServices);
                ((EditPlaceFlowActivity)getActivity()).goToServices();
            }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
        });
        ((WazeTextView)r.findViewById(0x7f090254)).setHint(mNm.getLanguageString(DisplayStrings.DS_TAP_TO_ADD));
        pointsview1 = (PointsView)r.findViewById(0x7f090255);
        l = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Services);
        s2 = EditPlaceServicesFragment.getServicesString(mOrigVenue);
        wazetextview = (WazeTextView)r.findViewById(0x7f090254);
        wazetextview.setText(s2);
        wazetextview.addTextChangedListener(new TextPointsWatcherImplementation(pointsview1, l, null, s2, null));
        ((SettingsTitleText)r.findViewById(0x7f090256)).setText(mNm.getLanguageString(DisplayStrings.DS_OPENING_HOURS));
        r.findViewById(0x7f090257).setOnClickListener(new android.view.View.OnClickListener() {

            final EditPlaceFragment this$0;

            public void onClick(View view)
            {
                EditTextUtils.closeKeyboard(getActivity(), r);
                ((EditPlaceFlowActivity)getActivity()).goToOpeningHours();
            }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
        });
        ((WazeTextView)r.findViewById(0x7f090258)).setHint(mNm.getLanguageString(DisplayStrings.DS_TAP_TO_ADD));
        pointsview2 = (PointsView)r.findViewById(0x7f090259);
        i1 = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.OpeningHours);
        s3 = getOpeningHoursString(mOrigVenue);
        wazetextview1 = (WazeTextView)r.findViewById(0x7f090258);
        wazetextview1.setText(s3);
        wazetextview1.addTextChangedListener(new TextPointsWatcherImplementation(pointsview2, i1, null, s3, null));
        ((SettingsTitleText)r.findViewById(0x7f09025a)).setText(mNm.getLanguageString(DisplayStrings.DS_DETAILS));
        j1 = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Description);
        pointsview3 = (PointsView)r.findViewById(0x7f09025c);
        mAboutEdit = (WazeTextView)r.findViewById(0x7f09025b);
        wazetextview2 = mAboutEdit;
        lengthvalidator = new LengthValidator(3, true);
        wazetextview2.addTextChangedListener(new TextPointsWatcherImplementation(pointsview3, j1, lengthvalidator, mOrigVenue.about, null));
        mAboutEdit.setHint(mNm.getLanguageString(DisplayStrings.DS_ABOUT2));
        mAboutEdit.setOnClickListener(new android.view.View.OnClickListener() {

            final EditPlaceFragment this$0;

            public void onClick(View view)
            {
                ((EditPlaceFlowActivity)getActivity()).goToEditAbout(mAboutEdit.getText().toString());
            }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
        });
        k1 = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.PhoneNumber);
        displaystrings = DisplayStrings.DS_PHONE_NUMBER;
        s4 = mOrigVenue.phoneNumber;
        paternvalidator1 = new PaternValidator(EditPlaceValidatorsHolder.getValidator(EditPlaceValidatorsHolder.ValidatorType.PhoneNumber), true);
        mETPhone = setEditTextAndPoints(0x7f09025e, 0x7f09025d, displaystrings, s4, k1, paternvalidator1);
        l1 = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.URL);
        displaystrings1 = DisplayStrings.DS_WEBSITE;
        s5 = mOrigVenue.website;
        paternvalidator2 = new PaternValidator(EditPlaceValidatorsHolder.getValidator(EditPlaceValidatorsHolder.ValidatorType.URL), true);
        mETWebsite = setEditTextAndPoints(0x7f090260, 0x7f09025f, displaystrings1, s5, l1, paternvalidator2);
        drilldownsettingview = (DrillDownSettingView)r.findViewById(0x7f090261);
        drilldownsettingview.setText(mNm.getLanguageString(DisplayStrings.DS_REPORT_A_PROBLEM));
        drilldownsettingview.setOnClickListener(new android.view.View.OnClickListener() {

            final EditPlaceFragment this$0;

            public void onClick(View view)
            {
                EditTextUtils.closeKeyboard(getActivity(), r);
                ((EditPlaceFlowActivity)getActivity()).showReportSubmenu();
            }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
        });
        updatePoints();
    }

    private void unsetAddressOptionsView()
    {
        if (mWasAddressOptionsViewSet)
        {
            mDriveTo.unsetAddressOptionsView();
            mWasAddressOptionsViewSet = false;
        }
    }

    protected View addCategoryLine(final LinearLayout categoriesPlace, final String id, String s, String s1, boolean flag)
    {
        View view = getActivity().getLayoutInflater().inflate(0x7f03012c, categoriesPlace, false);
        ((WazeTextView)view.findViewById(0x7f09076e)).setText(s);
        WazeTextView wazetextview = (WazeTextView)view.findViewById(0x7f09076f);
        if (s1 != null && !s1.isEmpty())
        {
            wazetextview.setText(s1);
        } else
        {
            wazetextview.setVisibility(8);
        }
        if (flag)
        {
            view.findViewById(0x7f09076c).setOnClickListener(new android.view.View.OnClickListener() {

                final EditPlaceFragment this$0;
                private final LinearLayout val$categoriesPlace;
                private final String val$id;

                public void onClick(View view1)
                {
                    mVenue.removeCategory(id);
                    refreshCategories(categoriesPlace);
                }

            
            {
                this$0 = EditPlaceFragment.this;
                id = s;
                categoriesPlace = linearlayout;
                super();
            }
            });
        } else
        {
            view.findViewById(0x7f09076c).setVisibility(8);
            mCategoriesPtsView = (PointsView)view.findViewById(0x7f09076d);
            mCategoriesPtsView.setVisibility(0);
            boolean flag1;
            int i;
            PointsView pointsview;
            boolean flag2;
            PointsView pointsview1;
            boolean flag3;
            if (mVenue.numCategories > 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            mCategoriesPtsView.setValid(flag1);
            i = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Categories);
            pointsview = mCategoriesPtsView;
            if (mOrigVenue.numCategories > 0)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            pointsview.setPoints(i, flag2);
            pointsview1 = mCategoriesPtsView;
            if (mWereCategoriesChanged && flag1)
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            pointsview1.setIsOn(flag3, flag1, false);
            if (mWereCategoriesPointsGiven)
            {
                mEarnedPoints = mEarnedPoints - i;
            }
            if (mWereCategoriesChanged)
            {
                mEarnedPoints = i + mEarnedPoints;
                onEdit();
            }
            mWereCategoriesPointsGiven = mWereCategoriesChanged;
            updatePoints();
        }
        categoriesPlace.addView(view);
        view.getLayoutParams().height = getActivity().getResources().getDimensionPixelSize(0x7f0b001f);
        return view;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        mMapView.onPause();
        setUpFragment();
        mMapView.onResume();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mDriveTo = DriveToNativeManager.getInstance();
        mNm = NativeManager.getInstance();
        if (bundle != null)
        {
            mVenue = (VenueData)bundle.getParcelable((new StringBuilder(String.valueOf(com/waze/reports/EditPlaceFragment.getName()))).append(".mVenue").toString());
            mOrigVenue = (VenueData)bundle.getParcelable((new StringBuilder(String.valueOf(com/waze/reports/EditPlaceFragment.getName()))).append(".mOrigVenue").toString());
            mScrollY = bundle.getInt((new StringBuilder(String.valueOf(com/waze/reports/EditPlaceFragment.getName()))).append(".mScrollY").toString());
            mIsUploading = bundle.getBoolean((new StringBuilder(String.valueOf(com/waze/reports/EditPlaceFragment.getName()))).append(".mIsUploading").toString());
            mDidEdit = bundle.getBoolean((new StringBuilder(String.valueOf(com/waze/reports/EditPlaceFragment.getName()))).append(".mDidEdit").toString());
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        mDensity = getResources().getDisplayMetrics().density;
        r = layoutinflater.inflate(0x7f030046, viewgroup, false);
        mValidatedPointsViews.clear();
        mEarnedPoints = 0;
        mWereCategoriesPointsGiven = false;
        setUpFragment();
        updateVenueFields();
        int i = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Images);
        int j = mVenue.numNewImages;
        boolean flag = mIsUploading;
        int k = 0;
        if (flag)
        {
            k = 1;
        }
        int l = j + k;
        mEarnedPoints = mEarnedPoints + l * i;
        if (mVenue.wasLocationChanged)
        {
            mEarnedPoints = mEarnedPoints + EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Location);
        }
        if (mEarnedPoints == 0)
        {
            r.findViewById(0x7f090262).setVisibility(4);
        }
        updatePoints();
        if (mScrollY > 0)
        {
            final ScrollView sv = (ScrollView)r.findViewById(0x7f0900a5);
            sv.post(new Runnable() {

                final EditPlaceFragment this$0;
                private final ScrollView val$sv;

                public void run()
                {
                    sv.scrollTo(0, mScrollY);
                }

            
            {
                this$0 = EditPlaceFragment.this;
                sv = scrollview;
                super();
            }
            });
        }
        return r;
    }

    public void onDestroy()
    {
        if (mTyd != null)
        {
            mTyd.dismiss();
        }
        super.onDestroy();
    }

    public void onPause()
    {
        unsetAddressOptionsView();
        mMapView.onPause();
        mScrollY = ((ScrollView)r.findViewById(0x7f0900a5)).getScrollY();
        super.onPause();
    }

    public void onResume()
    {
        mMapView.onResume();
        super.onResume();
        updateExtVenueFields();
        setAddressOptionsView();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        bundle.putParcelable((new StringBuilder(String.valueOf(com/waze/reports/EditPlaceFragment.getName()))).append(".mVenue").toString(), mVenue);
        bundle.putParcelable((new StringBuilder(String.valueOf(com/waze/reports/EditPlaceFragment.getName()))).append(".mOrigVenue").toString(), mOrigVenue);
        bundle.putInt((new StringBuilder(String.valueOf(com/waze/reports/EditPlaceFragment.getName()))).append(".mScrollY").toString(), mScrollY);
        bundle.putBoolean((new StringBuilder(String.valueOf(com/waze/reports/EditPlaceFragment.getName()))).append(".mIsUploading").toString(), mIsUploading);
        bundle.putBoolean((new StringBuilder(String.valueOf(com/waze/reports/EditPlaceFragment.getName()))).append(".mDidEdit").toString(), mDidEdit);
        super.onSaveInstanceState(bundle);
    }

    public void photoTaken(VenueData venuedata)
    {
        mVenue = venuedata;
        mIsUploading = true;
        imageArrayLoad();
        if (r == null)
        {
            mDidEdit = true;
            return;
        } else
        {
            mPhotoPagerSection.setInProgress(mIsUploading);
            mPhotoPagerSection.venueUpdated(mImageArray);
            mEarnedPoints = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Images) + mEarnedPoints;
            updatePoints();
            onEdit();
            return;
        }
    }

    public void refreshCategories(LinearLayout linearlayout)
    {
        int j;
        linearlayout.removeAllViews();
        boolean flag;
        View view;
        if (mVenue.numCategories != mOrigVenue.numCategories)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mWereCategoriesChanged = flag;
        if (mVenue == null) goto _L2; else goto _L1
_L1:
        j = 0;
_L5:
        if (j < mVenue.numCategories) goto _L3; else goto _L2
_L2:
        view = addCategoryLine(linearlayout, null, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_TAP_TO_ADD_CATEGORIES), null, false);
        int i;
        View view1;
        int k;
        if (mVenue.numCategories == 0)
        {
            i = 0x7f020225;
        } else
        {
            i = 0x7f020223;
        }
        view.setBackgroundResource(i);
        view.setPadding(0, 0, 0, 0);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final EditPlaceFragment this$0;

            public void onClick(View view2)
            {
                mVenue.numCategories = EditPlaceCategoriesHolder.sortCategoryIdsArray(mVenue.categories);
                mOrigVenue.numCategories = EditPlaceCategoriesHolder.sortCategoryIdsArray(mOrigVenue.categories);
                EditTextUtils.closeKeyboard(getActivity(), r);
                ((EditPlaceFlowActivity)getActivity()).goToAddCategory();
            }

            
            {
                this$0 = EditPlaceFragment.this;
                super();
            }
        });
        return;
_L3:
        if (!mWereCategoriesChanged && !mVenue.categories[j].contentEquals(mOrigVenue.categories[j]))
        {
            mWereCategoriesChanged = true;
        }
        view1 = addCategoryLine(linearlayout, mVenue.categories[j], EditPlaceCategoriesHolder.getCategoryById(mVenue.categories[j]), null, true);
        if (j == 0)
        {
            k = 0x7f020226;
        } else
        {
            k = 0x7f020224;
        }
        view1.setBackgroundResource(k);
        view1.setPadding(0, 0, 0, 0);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void setOpeningHours(VenueData venuedata)
    {
        mVenue = venuedata;
        if (r == null)
        {
            mDidEdit = true;
            return;
        } else
        {
            ((WazeTextView)r.findViewById(0x7f090258)).setText(getOpeningHoursString(venuedata));
            onEdit();
            return;
        }
    }

    public void setServices(VenueData venuedata)
    {
        mVenue = venuedata;
        if (r == null)
        {
            mDidEdit = true;
            return;
        } else
        {
            ((WazeTextView)r.findViewById(0x7f090254)).setText(EditPlaceServicesFragment.getServicesString(venuedata));
            onEdit();
            return;
        }
    }

    public void setVenue(VenueData venuedata)
    {
        mVenue = venuedata;
        mOrigVenue = mVenue.clone();
    }

    public void updateAbout(VenueData venuedata)
    {
        mVenue = venuedata;
        if (mAboutEdit != null)
        {
            mAboutEdit.setText(mVenue.about);
        }
    }

    public void updateAddress(VenueData venuedata)
    {
        mVenue = venuedata;
        if (r == null)
        {
            mDidEdit = true;
        } else
        if (mCityStreetMain != null && mCityStreetSub != null)
        {
            if (mVenue.street.isEmpty())
            {
                mCityStreetMain.setText(mVenue.city);
                mCityStreetSub.setVisibility(8);
            } else
            if (mVenue.city.isEmpty())
            {
                mCityStreetMain.setText(mVenue.street);
                mCityStreetSub.setVisibility(8);
            } else
            {
                mCityStreetMain.setText(mVenue.street);
                mCityStreetSub.setText(mVenue.city);
                mCityStreetSub.setVisibility(0);
            }
            onEdit();
            return;
        }
    }

    public void updateCategories(VenueData venuedata)
    {
        mVenue = venuedata;
        if (r == null)
        {
            mDidEdit = true;
            return;
        } else
        {
            refreshCategories((LinearLayout)r.findViewById(0x7f090251));
            onEdit();
            return;
        }
    }

    void updateExtVenueFields()
    {
        PointsView pointsview;
        String s;
        String s1;
        if (mVenue.street.isEmpty())
        {
            mCityStreetMain.setText(mVenue.city);
            mCityStreetSub.setVisibility(8);
        } else
        if (mVenue.city.isEmpty())
        {
            mCityStreetMain.setText(mVenue.street);
            mCityStreetSub.setVisibility(8);
        } else
        {
            mCityStreetMain.setText(mVenue.street);
            mCityStreetSub.setText(mVenue.city);
            mCityStreetSub.setVisibility(0);
        }
        pointsview = (PointsView)r.findViewById(0x7f09024b);
        if (mVenue.street == null || mVenue.street.isEmpty())
        {
            mETNumber.setText("");
            mETNumber.setEnabled(false);
            mETNumber.setAlpha(0.5F);
            pointsview.setAlpha(0.5F);
        } else
        {
            mETNumber.setEnabled(true);
            mETNumber.setAlpha(1.0F);
            pointsview.setAlpha(1.0F);
        }
        mAboutEdit.setText(mVenue.about);
        s = EditPlaceServicesFragment.getServicesString(mVenue);
        ((WazeTextView)r.findViewById(0x7f090254)).setText(s);
        s1 = getOpeningHoursString(mVenue);
        ((WazeTextView)r.findViewById(0x7f090258)).setText(s1);
    }

    public void updateMapLocation(VenueData venuedata)
    {
        mVenue = venuedata;
        if (mMapView == null)
        {
            mDidEdit = true;
        } else
        {
            mMapView.setVisibility(0);
            mMapView.onResume();
            mMapView.removeCallbacks(mReplaceMapRunnable);
            mMapView.postDelayed(mReplaceMapRunnable, 2000L);
            setAddressOptionsView();
            mDriveTo.zoomOnMap(mVenue.longitude, mVenue.latitude, 250);
            if (mVenue.wasLocationChanged)
            {
                mEarnedPoints = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Location) + mEarnedPoints;
                updatePoints();
                onEdit();
                return;
            }
        }
    }

    public void updatePhotos(VenueData venuedata)
    {
        mVenue = venuedata;
        mIsUploading = false;
        imageArrayLoad();
        if (mPhotoPagerSection != null)
        {
            mPhotoPagerSection.setInProgress(mIsUploading);
            mPhotoPagerSection.venueUpdated(mImageArray);
        }
    }

    void updatePoints()
    {
        if (r == null)
        {
            return;
        } else
        {
            setPointsWheels(true);
            return;
        }
    }

    void updateVenueFields()
    {
        mETNumber.setText(mVenue.houseNumber);
        mETName.setText(mVenue.name);
        mETPhone.setText(mVenue.phoneNumber);
        mETWebsite.setText(mVenue.website);
    }
























}
