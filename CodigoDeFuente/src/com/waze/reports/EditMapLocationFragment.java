// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Fragment;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.waze.MapView;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.navigate.DriveToNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.WazeTextView;
import com.waze.view.title.TitleButtonBar;
import java.io.Serializable;

public class EditMapLocationFragment extends Fragment
{
    public static interface IEditMap
    {

        public abstract void doneEditMap(int i, int j);
    }

    public static class Position
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        int latitude;
        int longitude;

        public Position()
        {
        }
    }


    private boolean mAvoiderPin;
    private boolean mDoneEnabled;
    private DriveToNativeManager mDriveTo;
    Handler mHandler;
    private DisplayStrings mInstruction;
    private int mLat;
    private int mLon;
    private MapView mMapView;
    private final RunnableExecutor mNativeCanvasReadyEvent = new RunnableExecutor() {

        final EditMapLocationFragment this$0;

        public void event()
        {
            mShouldUnsetAddressOptionsView = true;
            mDriveTo.setAddressOptionsView(0, mLon, mLat, false);
            mDriveTo.zoomOnMap(mLon, mLat, 100);
            mNm.setLimitCenter(mLon, mLat, mNm.getEditPlaceLocationRadius(), mAvoiderPin);
        }

            
            {
                this$0 = EditMapLocationFragment.this;
                super();
            }
    };
    private NativeManager mNm;
    private boolean mShouldUnsetAddressOptionsView;
    private DisplayStrings mTitle;
    private TitleButtonBar mTitleButtonBar;
    private View r;

    public EditMapLocationFragment()
    {
        mAvoiderPin = false;
        mDoneEnabled = true;
        mShouldUnsetAddressOptionsView = false;
        mTitle = DisplayStrings.DS_LOCATION;
        mInstruction = DisplayStrings.DS_MOVE_THE_MAP_TO_ADJUST_PIN_LOCATION;
        mHandler = new Handler() {

            final EditMapLocationFragment this$0;

            public void handleMessage(Message message)
            {
                if (message.what == DriveToNativeManager.UH_MAP_CENTER)
                {
                    mDriveTo.unsetUpdateHandler(DriveToNativeManager.UH_MAP_CENTER, mHandler);
                    Bundle bundle = message.getData();
                    bundle.setClassLoader(getClass().getClassLoader());
                    Position position = (Position)bundle.getSerializable("position");
                    ((IEditMap)getActivity()).doneEditMap(position.longitude, position.latitude);
                } else
                if (message.what == NativeManager.UH_LOCATION_PICKER_STATE)
                {
                    if (message.arg1 != 0 && !mDoneEnabled)
                    {
                        mTitleButtonBar.setCloseImageResource(0, 0x7f02010b);
                        mDoneEnabled = true;
                        return;
                    }
                    if (message.arg1 == 0 && mDoneEnabled)
                    {
                        mTitleButtonBar.setCloseImageResource(0, 0x7f02042e);
                        mDoneEnabled = false;
                        return;
                    }
                } else
                {
                    super.handleMessage(message);
                    return;
                }
            }

            
            {
                this$0 = EditMapLocationFragment.this;
                super();
            }
        };
    }

    private void setUpFragment()
    {
        mTitleButtonBar = (TitleButtonBar)r.findViewById(0x7f090058);
        mTitleButtonBar.init(getActivity(), mNm.getLanguageString(mTitle), 0, 0x7f02010b);
        mTitleButtonBar.setButtonTwoListener(new android.view.View.OnClickListener() {

            final EditMapLocationFragment this$0;

            public void onClick(View view1)
            {
                if (mDoneEnabled)
                {
                    mDriveTo.setUpdateHandler(DriveToNativeManager.UH_MAP_CENTER, mHandler);
                    mDriveTo.getMapCenter();
                }
            }

            
            {
                this$0 = EditMapLocationFragment.this;
                super();
            }
        });
        ((WazeTextView)r.findViewById(0x7f09026e)).setText(mNm.getLanguageString(mInstruction));
        mMapView = (MapView)r.findViewById(0x7f09026b);
        mMapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
        View view = r.findViewById(0x7f09026d);
        byte byte0;
        if (mAvoiderPin)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view.setVisibility(byte0);
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
        if (bundle != null)
        {
            mLon = bundle.getInt((new StringBuilder(String.valueOf(com/waze/reports/EditMapLocationFragment.getName()))).append(".mLon").toString());
            mLat = bundle.getInt((new StringBuilder(String.valueOf(com/waze/reports/EditMapLocationFragment.getName()))).append(".mLat").toString());
            int i = bundle.getInt((new StringBuilder(String.valueOf(com/waze/reports/EditMapLocationFragment.getName()))).append(".mTitle").toString());
            mTitle = DisplayStrings.values()[i];
            int j = bundle.getInt((new StringBuilder(String.valueOf(com/waze/reports/EditMapLocationFragment.getName()))).append(".mInstruction").toString());
            mInstruction = DisplayStrings.values()[j];
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        mNm = NativeManager.getInstance();
        mDriveTo = DriveToNativeManager.getInstance();
        r = layoutinflater.inflate(0x7f030047, viewgroup, false);
        setUpFragment();
        mNm.setUpdateHandler(NativeManager.UH_LOCATION_PICKER_STATE, mHandler);
        return r;
    }

    public void onDestroy()
    {
        mNm.unsetUpdateHandler(NativeManager.UH_LOCATION_PICKER_STATE, mHandler);
        if (mShouldUnsetAddressOptionsView)
        {
            mShouldUnsetAddressOptionsView = false;
            mNm.unsetLimitCenter(mAvoiderPin);
            mDriveTo.unsetAddressOptionsView();
        }
        super.onDestroy();
    }

    public void onPause()
    {
        mMapView.onPause();
        super.onPause();
    }

    public void onResume()
    {
        mMapView.onResume();
        super.onResume();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putInt((new StringBuilder(String.valueOf(com/waze/reports/EditMapLocationFragment.getName()))).append(".mLon").toString(), mLon);
        bundle.putInt((new StringBuilder(String.valueOf(com/waze/reports/EditMapLocationFragment.getName()))).append(".mLat").toString(), mLat);
        bundle.putInt((new StringBuilder(String.valueOf(com/waze/reports/EditMapLocationFragment.getName()))).append(".mTitle").toString(), mTitle.ordinal());
        bundle.putInt((new StringBuilder(String.valueOf(com/waze/reports/EditMapLocationFragment.getName()))).append(".mInstruction").toString(), mInstruction.ordinal());
    }

    public void setAvoiderPin(boolean flag)
    {
        mAvoiderPin = flag;
    }

    public void setInstruction(DisplayStrings displaystrings)
    {
        mInstruction = displaystrings;
    }

    public void setLonLat(int i, int j)
    {
        mLon = i;
        mLat = j;
    }

    public void setTitle(DisplayStrings displaystrings)
    {
        mTitle = displaystrings;
    }









}
