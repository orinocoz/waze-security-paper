// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Activity;
import android.app.Fragment;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.MapView;
import com.waze.NativeLocListener;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.PointsView;
import com.waze.navigate.DriveToNativeManager;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;
import com.waze.utils.EditTextUtils;
import com.waze.view.anim.AnimationUtils;
import com.waze.view.text.WazeTextView;
import com.waze.view.title.TitleBarTextButton;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.waze.reports:
//            VenueData, EditPlacePointsHolder, AddPlaceFlowActivity, EditPlaceCategoriesHolder

public class AddPlaceNewFragment extends Fragment
{
    private final class TextPointsWatcherImplementation
        implements TextWatcher
    {

        private String _orig;
        private final int _pts;
        private final PointsView _ptsView;
        private TextValidator _validator;
        final AddPlaceNewFragment this$0;

        public void afterTextChanged(Editable editable)
        {
            if (_ptsView.isOn())
            {
                AddPlaceNewFragment addplacenewfragment1 = AddPlaceNewFragment.this;
                addplacenewfragment1.mEarnedPoints = addplacenewfragment1.mEarnedPoints - _pts;
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
            if (editable.length() > 0)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (flag2 && flag1 && flag)
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            _ptsView.setIsOn(flag3, flag2, true);
            if (flag3)
            {
                AddPlaceNewFragment addplacenewfragment = AddPlaceNewFragment.this;
                addplacenewfragment.mEarnedPoints = addplacenewfragment.mEarnedPoints + _pts;
            }
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        private TextPointsWatcherImplementation(PointsView pointsview, int i, boolean flag, TextValidator textvalidator, String s)
        {
            this$0 = AddPlaceNewFragment.this;
            super();
            _validator = null;
            _ptsView = pointsview;
            _pts = i;
            _orig = s;
            if (_orig == null)
            {
                _orig = "";
            }
            _ptsView.setPoints(i);
            if (flag)
            {
                mEarnedPoints = i + mEarnedPoints;
            }
            _validator = textvalidator;
            if (textvalidator == null)
            {
                _ptsView.setValid(true);
            } else
            {
                _ptsView.setValid(textvalidator.isTextValid(_orig));
                mValidatedPointsViews.add(pointsview);
            }
            _ptsView.setIsOn(flag, flag, false);
        }

        TextPointsWatcherImplementation(PointsView pointsview, int i, boolean flag, TextValidator textvalidator, String s, TextPointsWatcherImplementation textpointswatcherimplementation)
        {
            this(pointsview, i, flag, textvalidator, s);
        }
    }

    public static interface TextValidator
    {

        public abstract boolean isTextValid(String s);
    }


    private LinearLayout mCategoriesPlaceHolder;
    private PointsView mCategoryPtsView;
    private TextView mCityStreetMain;
    private TextView mCityStreetSub;
    private DriveToNativeManager mDtNm;
    private EditText mETNumber;
    private int mEarnedPoints;
    private TextValidator mHasContentValidator;
    boolean mIsResidential;
    private ImageView mMapImage;
    private MapView mMapView;
    private View mMustAdd;
    private final RunnableExecutor mNativeCanvasReadyEvent = new RunnableExecutor() {

        final AddPlaceNewFragment this$0;

        public void event()
        {
            if (mVenue.longitude == 0 || mVenue.latitude == 0)
            {
                com.waze.NativeLocListener.NativeLocation nativelocation = NativeLocListener.GetNativeLocation(NativeLocListener.getInstance().getLastLocation());
                mVenue.longitude = nativelocation.mLongtitude;
                mVenue.latitude = nativelocation.mLatitude;
            }
            NativeManager.Post(new Runnable() {

                final _cls2 this$1;

                public void run()
                {
                    setAddressOptionsView();
                    mDtNm.zoomOnMap(mVenue.longitude, mVenue.latitude, 250);
                }

            
            {
                this$1 = _cls2.this;
                super();
            }
            });
        }


            
            {
                this$0 = AddPlaceNewFragment.this;
                super();
            }
    };
    private NativeManager mNm;
    private TextPointsWatcherImplementation mNumberWatcher;
    private Runnable mReplaceMapRunnable;
    private ArrayList mValidatedPointsViews;
    VenueData mVenue;
    private boolean mbAddressOptionsViewSet;
    private View r;

    public AddPlaceNewFragment()
    {
        mEarnedPoints = 0;
        mIsResidential = false;
        mbAddressOptionsViewSet = false;
        mValidatedPointsViews = new ArrayList(4);
        mHasContentValidator = new TextValidator() {

            final AddPlaceNewFragment this$0;

            public boolean isTextValid(String s)
            {
                return !s.isEmpty();
            }

            
            {
                this$0 = AddPlaceNewFragment.this;
                super();
            }
        };
    }

    private void checkIfUSerIsGood()
    {
        boolean flag = true;
        Iterator iterator = mValidatedPointsViews.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                if (mIsResidential && !mVenue.wasLocationChanged)
                {
                    AnimationUtils.flashView(r.findViewById(0x7f0900b6));
                    flag = false;
                }
                if (!flag)
                {
                    return;
                }
                break;
            }
            PointsView pointsview = (PointsView)iterator.next();
            if (!pointsview.isValid())
            {
                AnimationUtils.flashView(pointsview);
                flag = false;
            }
        } while (true);
        mVenue.houseNumber = mETNumber.getText().toString();
        mEarnedPoints = mEarnedPoints + mVenue.numNewImages * EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Images);
        if (!mIsResidential)
        {
            mEarnedPoints = mEarnedPoints + EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Categories);
        }
        mEarnedPoints = mEarnedPoints + EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.CreatePlace);
        EditTextUtils.closeKeyboard(getActivity(), r);
        ((AddPlaceFlowActivity)getActivity()).sendVenue(mVenue, mEarnedPoints);
    }

    private void setAddressOptionsView()
    {
        if (!mbAddressOptionsViewSet)
        {
            mDtNm.setAddressOptionsView(0, mVenue.longitude, mVenue.latitude, true);
            mbAddressOptionsViewSet = true;
        }
    }

    private void setUpFragment()
    {
        TitleBarTextButton titlebartextbutton = (TitleBarTextButton)r.findViewById(0x7f090058);
        int i;
        PointsView pointsview;
        TextPointsWatcherImplementation textpointswatcherimplementation;
        int j;
        PointsView pointsview1;
        TextValidator textvalidator;
        if (mIsResidential)
        {
            titlebartextbutton.init(getActivity(), DisplayStrings.DS_RESIDENTIAL_PLACE);
        } else
        {
            titlebartextbutton.init(getActivity(), DisplayStrings.DS_NEW_PLACE);
        }
        ((WazeTextView)r.findViewById(0x7f0900b8)).setText(mNm.getLanguageString(DisplayStrings.DS_DONE));
        ((WazeTextView)r.findViewById(0x7f0900a7)).setText(mNm.getLanguageString(DisplayStrings.DS_TELL_US_MORE_ABOUT_THIS_PLACE));
        r.findViewById(0x7f0900b7).setOnClickListener(new android.view.View.OnClickListener() {

            final AddPlaceNewFragment this$0;

            public void onClick(View view1)
            {
                checkIfUSerIsGood();
            }

            
            {
                this$0 = AddPlaceNewFragment.this;
                super();
            }
        });
        ((SettingsTitleText)r.findViewById(0x7f0900a8)).setText(mNm.getLanguageString(DisplayStrings.DS_CATEGORIES));
        ((SettingsTitleText)r.findViewById(0x7f0900aa)).setText(mNm.getLanguageString(DisplayStrings.DS_ADDRESS));
        i = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.City);
        pointsview = (PointsView)r.findViewById(0x7f0900ae);
        mCityStreetMain = (WazeTextView)r.findViewById(0x7f0900ac);
        mCityStreetSub = (WazeTextView)r.findViewById(0x7f0900ad);
        textpointswatcherimplementation = new TextPointsWatcherImplementation(pointsview, i, false, new TextValidator() {

            final AddPlaceNewFragment this$0;

            public boolean isTextValid(String s)
            {
                return mVenue.street != null && !mVenue.street.isEmpty() || !mIsResidential && mVenue.city != null && !mVenue.city.isEmpty();
            }

            
            {
                this$0 = AddPlaceNewFragment.this;
                super();
            }
        }, "", null);
        mCityStreetMain.addTextChangedListener(textpointswatcherimplementation);
        mCityStreetMain.setHint(mNm.getLanguageString(DisplayStrings.DS_STREET_NAME));
        mCityStreetSub.setHint(mNm.getLanguageString(DisplayStrings.DS_CITY));
        r.findViewById(0x7f0900ab).setOnClickListener(new android.view.View.OnClickListener() {

            final AddPlaceNewFragment this$0;

            public void onClick(View view1)
            {
                ((AddPlaceFlowActivity)getActivity()).goToPickCityStreet();
            }

            
            {
                this$0 = AddPlaceNewFragment.this;
                super();
            }
        });
        j = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.HouseNumber);
        pointsview1 = (PointsView)r.findViewById(0x7f0900b0);
        mETNumber = (EditText)r.findViewById(0x7f0900af);
        if (mIsResidential)
        {
            textvalidator = mHasContentValidator;
        } else
        {
            textvalidator = null;
        }
        mNumberWatcher = new TextPointsWatcherImplementation(pointsview1, j, false, textvalidator, "", null);
        mETNumber.addTextChangedListener(mNumberWatcher);
        mETNumber.setHint(mNm.getLanguageString(DisplayStrings.DS_HOUSE_NUMBER));
        if (mIsResidential)
        {
            r.findViewById(0x7f0900a6).setVisibility(8);
            r.findViewById(0x7f0900a7).setVisibility(8);
            r.findViewById(0x7f0900a9).setVisibility(8);
            r.findViewById(0x7f0900a8).setVisibility(8);
            ((SettingsTitleText)r.findViewById(0x7f0900b1)).setText(mNm.getLanguageString(DisplayStrings.DS_LOCATION));
            mMustAdd = r.findViewById(0x7f0900b5);
            View view = mMustAdd;
            byte byte0;
            android.view.View.OnClickListener onclicklistener;
            if (mVenue.wasLocationChanged)
            {
                byte0 = 8;
            } else
            {
                byte0 = 0;
            }
            view.setVisibility(byte0);
            ((TextView)r.findViewById(0x7f0900b6)).setText(mNm.getLanguageString(DisplayStrings.DS_RESIDENCE_MUST_SET_LOCATION));
            mMapView = (MapView)r.findViewById(0x7f0900b3);
            mMapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
            mMapImage = (ImageView)r.findViewById(0x7f0900b4);
            onclicklistener = new android.view.View.OnClickListener() {

                final AddPlaceNewFragment this$0;

                public void onClick(View view1)
                {
                    mMapView.removeCallbacks(mReplaceMapRunnable);
                    EditTextUtils.closeKeyboard(getActivity(), r);
                    ((AddPlaceFlowActivity)getActivity()).goToEditMap();
                }

            
            {
                this$0 = AddPlaceNewFragment.this;
                super();
            }
            };
            r.findViewById(0x7f0900b2).setOnClickListener(onclicklistener);
            mMapView.setHandleTouch(false);
            mReplaceMapRunnable = new Runnable() {

                final AddPlaceNewFragment this$0;
                int timesWaited;

                public void run()
                {
                    timesWaited = 1 + timesWaited;
                    mMapView.setImageViewToRender(mMapImage, new com.waze.OGLRenderer.OnRenderListener() {

                        final _cls7 this$1;

                        public void onRender()
                        {
                            mMapView.setImageViewToRender(null, null);
                            if (timesWaited > 3)
                            {
                                mMapView.setVisibility(8);
                            }
                        }

            
            {
                this$1 = _cls7.this;
                super();
            }
                    });
                    if (timesWaited <= 3)
                    {
                        mMapView.postDelayed(mReplaceMapRunnable, 1000 * timesWaited);
                    }
                }


            
            {
                this$0 = AddPlaceNewFragment.this;
                super();
                timesWaited = 0;
            }
            };
            mMapView.postDelayed(mReplaceMapRunnable, 500L);
            return;
        } else
        {
            r.findViewById(0x7f0900b1).setVisibility(8);
            r.findViewById(0x7f0900b2).setVisibility(8);
            return;
        }
    }

    private void unsetAddressOptionsView()
    {
        if (mbAddressOptionsViewSet)
        {
            mDtNm.unsetAddressOptionsView();
            mbAddressOptionsViewSet = false;
        }
    }

    View addCategoryLine(LinearLayout linearlayout, final String id, String s, String s1, boolean flag)
    {
        View view = getActivity().getLayoutInflater().inflate(0x7f03012c, linearlayout, false);
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

                final AddPlaceNewFragment this$0;
                private final String val$id;

                public void onClick(View view1)
                {
                    mVenue.removeCategory(id);
                    refreshCategories();
                }

            
            {
                this$0 = AddPlaceNewFragment.this;
                id = s;
                super();
            }
            });
        } else
        {
            view.findViewById(0x7f09076c).setVisibility(8);
            if (mCategoryPtsView != null)
            {
                mValidatedPointsViews.remove(mCategoryPtsView);
            }
            mCategoryPtsView = (PointsView)view.findViewById(0x7f09076d);
            mCategoryPtsView.setVisibility(0);
            boolean flag1;
            if (mVenue.numCategories > 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            mCategoryPtsView.setValid(flag1);
            mValidatedPointsViews.add(mCategoryPtsView);
            mCategoryPtsView.setPoints(EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Categories));
            mCategoryPtsView.setIsOn(flag1, flag1, false);
        }
        linearlayout.addView(view);
        view.getLayoutParams().height = getResources().getDimensionPixelSize(0x7f0b001f);
        return view;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        if (mMapView != null)
        {
            mMapView.onPause();
        }
        setUpFragment();
        if (mMapView != null)
        {
            mMapView.onResume();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle != null)
        {
            mVenue = (VenueData)bundle.getParcelable((new StringBuilder(String.valueOf(com/waze/reports/AddPlaceNewFragment.getName()))).append(".mVenue").toString());
            mIsResidential = bundle.getBoolean((new StringBuilder(String.valueOf(com/waze/reports/AddPlaceNewFragment.getName()))).append(".mIsResidential").toString());
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        getActivity().getWindow().setSoftInputMode(3);
        mNm = NativeManager.getInstance();
        mDtNm = DriveToNativeManager.getInstance();
        r = layoutinflater.inflate(0x7f03000d, viewgroup, false);
        mValidatedPointsViews.clear();
        setUpFragment();
        EditText edittext = mETNumber;
        String s;
        if (mVenue.houseNumber == null)
        {
            s = "";
        } else
        {
            s = mVenue.houseNumber;
        }
        edittext.setText(s);
        ((WazeTextView)r.findViewById(0x7f0900a6)).setText(mVenue.name);
        return r;
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public void onPause()
    {
        if (mMapView != null)
        {
            mMapView.removeCallbacks(mReplaceMapRunnable);
            mMapView.onPause();
            unsetAddressOptionsView();
        }
        super.onPause();
    }

    public void onResume()
    {
        if (mMapView != null)
        {
            mMapView.setVisibility(0);
            mMapView.onResume();
            mMapView.removeCallbacks(mReplaceMapRunnable);
            mMapView.postDelayed(mReplaceMapRunnable, 2000L);
            setAddressOptionsView();
            mDtNm.zoomOnMap(mVenue.longitude, mVenue.latitude, 250);
            View view = mMustAdd;
            boolean flag = mVenue.wasLocationChanged;
            byte byte0 = 0;
            if (flag)
            {
                byte0 = 8;
            }
            view.setVisibility(byte0);
        }
        updateVenueFields();
        super.onResume();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable((new StringBuilder(String.valueOf(com/waze/reports/AddPlaceNewFragment.getName()))).append(".mVenue").toString(), mVenue);
        bundle.putBoolean((new StringBuilder(String.valueOf(com/waze/reports/AddPlaceNewFragment.getName()))).append(".mIsResidential").toString(), mIsResidential);
    }

    public void refreshAddress()
    {
    }

    void refreshCategories()
    {
        if (mCategoriesPlaceHolder == null)
        {
            return;
        }
        mCategoriesPlaceHolder.removeAllViews();
        if (mVenue == null) goto _L2; else goto _L1
_L1:
        int j = 0;
_L5:
        if (j < mVenue.numCategories) goto _L3; else goto _L2
_L2:
        NativeManager nativemanager = NativeManager.getInstance();
        View view = addCategoryLine(mCategoriesPlaceHolder, null, nativemanager.getLanguageString(DisplayStrings.DS_TAP_TO_ADD_CATEGORIES), null, false);
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

            final AddPlaceNewFragment this$0;

            public void onClick(View view2)
            {
                EditTextUtils.closeKeyboard(getActivity(), r);
                ((AddPlaceFlowActivity)getActivity()).pickCategory();
            }

            
            {
                this$0 = AddPlaceNewFragment.this;
                super();
            }
        });
        return;
_L3:
        view1 = addCategoryLine(mCategoriesPlaceHolder, mVenue.categories[j], EditPlaceCategoriesHolder.getCategoryById(mVenue.categories[j]), null, true);
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

    void refreshMapLocation()
    {
    }

    public void setResidential(boolean flag)
    {
        mIsResidential = flag;
    }

    public void setVenue(VenueData venuedata)
    {
        mVenue = venuedata;
    }

    void updateVenueFields()
    {
        PointsView pointsview;
        if (mVenue.street == null || mVenue.street.isEmpty())
        {
            TextView textview = mCityStreetMain;
            String s;
            if (mVenue.city == null)
            {
                s = "";
            } else
            {
                s = mVenue.city;
            }
            textview.setText(s);
            mCityStreetSub.setVisibility(8);
        } else
        if (mVenue.city == null || mVenue.city.isEmpty())
        {
            TextView textview1 = mCityStreetMain;
            String s1;
            if (mVenue.street == null)
            {
                s1 = "";
            } else
            {
                s1 = mVenue.street;
            }
            textview1.setText(s1);
            mCityStreetSub.setVisibility(8);
        } else
        {
            mCityStreetMain.setText(mVenue.street);
            mCityStreetSub.setText(mVenue.city);
            mCityStreetSub.setVisibility(0);
        }
        pointsview = (PointsView)r.findViewById(0x7f0900b0);
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
        if (!mIsResidential)
        {
            mCategoriesPlaceHolder = (LinearLayout)r.findViewById(0x7f0900a9);
            refreshCategories();
        }
    }










}
