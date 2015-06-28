// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.os.Parcelable;
import android.view.View;
import android.view.Window;
import com.waze.ConfigManager;
import com.waze.MsgBox;
import com.waze.NativeLocListener;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.OmniSelectionFragment;
import com.waze.settings.SettingsValue;
import com.waze.strings.DisplayStrings;
import com.waze.utils.EditTextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.waze.reports:
//            VenueData, AddPlaceNewFragment, ThankYouDialog, EditPlacePointsHolder, 
//            EditMapLocationFragment, EditPlaceCategoriesHolder, TakePhotoFragment, EditPlaceFlowActivity

public class AddPlaceFlowActivity extends ActivityBase
    implements TakePhotoFragment.ITakePhoto, com.waze.ifs.ui.OmniSelectionFragment.IOmniSelect, EditMapLocationFragment.IEditMap
{

    private static final int STATE_CHOOSE_PLACE = 2;
    private static final int STATE_MAP_LOCATION = 3;
    private static final int STATE_NEW_PLACE = 5;
    private static final int STATE_SELECT_ADDRESS = 4;
    private static final int STATE_SELECT_CATEGORY = 6;
    private static final int STATE_TAKE_PHOTO = 1;
    private static final String TAG = com/waze/reports/AddPlaceFlowActivity.getName();
    private com.waze.NativeManager.AddressStrings mAddressStrings;
    private String mDestinationVenueId;
    private boolean mForceHouseNumber;
    private boolean mFromReportMenu;
    private boolean mIsPublic;
    private boolean mIsSending;
    private boolean mIsUpdate;
    private NativeManager mNatMgr;
    private VenueData mOrigVenue;
    private String mPhotoId;
    private String mPhotoPath;
    private String mPhotoThumbnailUrl;
    private String mPhotoUrl;
    private int mPoints;
    private String mQuestionId;
    private boolean mRetain;
    private boolean mSayThankYou;
    private Parcelable mSearchVenueResults[];
    private VenueData mSelectedVenue;
    private int mState;
    private ThankYouDialog mTyd;
    private VenueData mVenue;
    private boolean mbConfirmResidential;

    public AddPlaceFlowActivity()
    {
        mSelectedVenue = null;
        mOrigVenue = null;
        mDestinationVenueId = null;
        mQuestionId = null;
        mIsPublic = false;
        mIsSending = false;
        mIsUpdate = false;
        mSayThankYou = false;
        mFromReportMenu = false;
        mForceHouseNumber = false;
        mbConfirmResidential = false;
    }

    private void confirmResidential()
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final AddPlaceFlowActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (i == 1)
                {
                    moveToNewPlaceFragment(true);
                }
                mbConfirmResidential = false;
            }

            
            {
                this$0 = AddPlaceFlowActivity.this;
                super();
            }
        };
        MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(mNatMgr.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), mNatMgr.getLanguageString(DisplayStrings.DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_BODY), true, onclicklistener, mNatMgr.getLanguageString(DisplayStrings.DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_YES), mNatMgr.getLanguageString(DisplayStrings.DS_CANCEL), -1);
    }

    private void goToVenueSelectFragment()
    {
        OmniSelectionFragment omniselectionfragment;
        int i;
        int j;
        mState = 2;
        omniselectionfragment = new OmniSelectionFragment();
        omniselectionfragment.setTitle(mNatMgr.getLanguageString(DisplayStrings.DS_SELECT_PLACE));
        omniselectionfragment.setEditBoxHint(mNatMgr.getLanguageString(DisplayStrings.DS_ENTER_PLACE_NAME));
        i = 0;
        j = 0;
_L3:
        if (j < mSearchVenueResults.length) goto _L2; else goto _L1
_L1:
        SettingsValue asettingsvalue[];
        int k;
        Parcelable aparcelable[];
        int l;
        int i1;
        asettingsvalue = new SettingsValue[i];
        omniselectionfragment.setTopOption(mNatMgr.getLanguageString(DisplayStrings.DS_PLACE_IS_RESIDENCE), 0x7f020194);
        k = 0;
        aparcelable = mSearchVenueResults;
        l = aparcelable.length;
        i1 = 0;
_L4:
        if (i1 >= l)
        {
            omniselectionfragment.setValues(asettingsvalue);
            omniselectionfragment.setSearch(true);
            omniselectionfragment.setFilter(true);
            omniselectionfragment.setUserInput(true, mNatMgr.getLanguageString(DisplayStrings.DS_ADD_PS));
            getFragmentManager().beginTransaction().replace(0x7f0902cc, omniselectionfragment).commit();
            return;
        }
        break MISSING_BLOCK_LABEL_242;
_L2:
        VenueData venuedata = (VenueData)mSearchVenueResults[j];
        if (venuedata.name != null && !venuedata.name.isEmpty())
        {
            i++;
        }
        if (mDestinationVenueId != null && venuedata.id.contentEquals(mDestinationVenueId) && j != 0)
        {
            Parcelable parcelable = mSearchVenueResults[0];
            mSearchVenueResults[0] = mSearchVenueResults[j];
            mSearchVenueResults[j] = parcelable;
        }
        j++;
          goto _L3
        VenueData venuedata1 = (VenueData)aparcelable[i1];
        if (venuedata1.name != null && !venuedata1.name.isEmpty())
        {
            asettingsvalue[k] = new SettingsValue(venuedata1.name, venuedata1.name, false);
            asettingsvalue[k].display2 = venuedata1.getAddressString();
            asettingsvalue[k].aliases = venuedata1.aliases;
            k++;
        }
        i1++;
          goto _L4
    }

    private void moveToNewPlaceFragment(boolean flag)
    {
        mState = 5;
        Analytics.log("PLACES_NEW_PLACE_SCREEN_SHOWN", null, null);
        if (flag)
        {
            mSelectedVenue.wasLocationChanged = false;
        }
        AddPlaceNewFragment addplacenewfragment = new AddPlaceNewFragment();
        addplacenewfragment.setVenue(mSelectedVenue);
        addplacenewfragment.setResidential(flag);
        getFragmentManager().beginTransaction().replace(0x7f0902cc, addplacenewfragment, "AddPlaceNewFragment").commit();
    }

    private void sayThankYou(int i, int j)
    {
        boolean flag = true;
        DisplayStrings displaystrings;
        DisplayStrings displaystrings1;
        DisplayStrings displaystrings2;
        DisplayStrings displaystrings3;
        boolean flag1;
        android.view.View.OnClickListener onclicklistener;
        android.view.View.OnClickListener onclicklistener1;
        if (j < 0)
        {
            if (mPoints > 0)
            {
                j = mPoints;
            } else
            {
                j = EditPlacePointsHolder.getPoints(EditPlacePointsHolder.PointsType.Images);
            }
        }
        mPoints = j;
        mSayThankYou = flag;
        if (mIsPublic)
        {
            if (mIsUpdate)
            {
                displaystrings2 = null;
                displaystrings = DisplayStrings.DS_THANK_YOU_BODY_EXISTING;
                displaystrings3 = DisplayStrings.DS_EDIT_DETAILS;
                displaystrings1 = DisplayStrings.DS_NO_THANKS;
            } else
            {
                displaystrings2 = DisplayStrings.DS_THANK_YOU_TITLE_NEW;
                displaystrings = DisplayStrings.DS_THANK_YOU_BODY_NEW;
                displaystrings3 = DisplayStrings.DS_ADD_MORE_DETAILS;
                displaystrings1 = DisplayStrings.DS_NO_THANKS;
            }
        } else
        {
            displaystrings = DisplayStrings.DS_THANK_YOU_BODY_RESIDENTIAL;
            displaystrings1 = DisplayStrings.DS_OKAY;
            displaystrings2 = null;
            displaystrings3 = null;
        }
        flag1 = mIsPublic;
        onclicklistener = new android.view.View.OnClickListener() {

            final AddPlaceFlowActivity this$0;

            public void onClick(View view)
            {
                Analytics.log("PLACES_THANK_YOU_POPUP_CLICKED", "CONTINUE|VENUE_ID", (new StringBuilder("FALSE|")).append(mSelectedVenue.id).toString());
                allDone();
            }

            
            {
                this$0 = AddPlaceFlowActivity.this;
                super();
            }
        };
        onclicklistener1 = new android.view.View.OnClickListener() {

            final AddPlaceFlowActivity this$0;

            public void onClick(View view)
            {
                Analytics.log("PLACES_THANK_YOU_POPUP_CLICKED", "CONTINUE|VENUE_ID", (new StringBuilder("TRUE|")).append(mSelectedVenue.id).toString());
                wantMore();
            }

            
            {
                this$0 = AddPlaceFlowActivity.this;
                super();
            }
        };
        if (i != flag)
        {
            flag = false;
        }
        mTyd = new ThankYouDialog(this, j, flag1, onclicklistener, onclicklistener1, displaystrings2, displaystrings, displaystrings3, displaystrings1, flag);
        mTyd.show();
    }

    public void allDone()
    {
        finish();
    }

    public void doneEditMap(int i, int j)
    {
        mSelectedVenue.longitude = i;
        mSelectedVenue.latitude = j;
        mSelectedVenue.wasLocationChanged = true;
        mState = 5;
        getFragmentManager().popBackStack();
        ((AddPlaceNewFragment)getFragmentManager().findFragmentByTag("AddPlaceNewFragment")).refreshMapLocation();
    }

    public void goToEditMap()
    {
        mState = 3;
        EditMapLocationFragment editmaplocationfragment = new EditMapLocationFragment();
        editmaplocationfragment.setLonLat(mVenue.longitude, mVenue.latitude);
        editmaplocationfragment.setTitle(DisplayStrings.DS_LOCATION);
        editmaplocationfragment.setAvoiderPin(true);
        getFragmentManager().beginTransaction().replace(0x7f0902cc, editmaplocationfragment).addToBackStack(null).commit();
    }

    public void goToPickCityStreet()
    {
        OmniSelectionFragment omniselectionfragment;
        HashSet hashset;
        HashSet hashset1;
        ArrayList arraylist;
        int i;
        mState = 4;
        omniselectionfragment = new OmniSelectionFragment();
        omniselectionfragment.setTitle(mNatMgr.getLanguageString(DisplayStrings.DS_ADDRESS));
        hashset = new HashSet(mAddressStrings.numResults);
        hashset1 = new HashSet(mAddressStrings.numResults);
        arraylist = new ArrayList(mAddressStrings.numResults);
        i = 0;
_L15:
        if (i < mAddressStrings.numResults) goto _L2; else goto _L1
_L1:
        if (!mIsPublic) goto _L4; else goto _L3
_L3:
        Iterator iterator = hashset.iterator();
_L13:
        if (iterator.hasNext()) goto _L5; else goto _L4
_L4:
        omniselectionfragment.setValues((SettingsValue[])arraylist.toArray(new SettingsValue[arraylist.size()]));
        getFragmentManager().beginTransaction().replace(0x7f0902cc, omniselectionfragment).addToBackStack(null).commit();
        return;
_L2:
        if (mAddressStrings.city[i].isEmpty()) goto _L7; else goto _L6
_L6:
        boolean flag1;
        hashset.add(mAddressStrings.city[i]);
        flag1 = mAddressStrings.street[i].isEmpty();
        JSONObject jsonobject1;
        jsonobject1 = null;
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_258;
        }
        JSONObject jsonobject2 = new JSONObject();
        jsonobject2.put("STREET", mAddressStrings.street[i]);
        jsonobject2.put("CITY", mAddressStrings.city[i]);
        jsonobject1 = jsonobject2;
_L11:
        if (jsonobject1 == null) goto _L9; else goto _L8
_L7:
        flag = mAddressStrings.street[i].isEmpty();
        jsonobject1 = null;
        if (flag) goto _L11; else goto _L10
_L10:
        jsonobject2 = new JSONObject();
        jsonobject2.put("STREET", mAddressStrings.street[i]);
        jsonobject1 = jsonobject2;
          goto _L11
_L8:
        String s1 = jsonobject1.toString();
        boolean flag;
        if (hashset1.contains(s1))
        {
            break; /* Loop/switch isn't completed */
        }
        String s;
        JSONObject jsonobject;
        JSONException jsonexception1;
        try
        {
            hashset1.add(s1);
            arraylist.add(new SettingsValue(s1, mAddressStrings.street[i], mAddressStrings.city[i], false));
        }
        catch (JSONException jsonexception) { }
_L9:
        if (hashset1.size() < mAddressStrings.numToFilterTo) goto _L12; else goto _L1
_L5:
        s = (String)iterator.next();
        jsonobject = new JSONObject();
        try
        {
            jsonobject.put("CITY", s);
            arraylist.add(new SettingsValue(jsonobject.toString(), s, false));
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception1) { }
          goto _L13
        JSONException jsonexception2;
        jsonexception2;
        jsonobject2;
          goto _L9
_L12:
        i++;
        if (true) goto _L15; else goto _L14
_L14:
    }

    public void isSearching(int i)
    {
        if (mState == 2 && i == 1)
        {
            Analytics.log("PLACES_CHOOSE_SEARCH_CLICKED", "VENUE_ID", mDestinationVenueId);
        }
    }

    protected boolean myHandleMessage(Message message)
    {
        if (message.what == NativeManager.UH_SEARCH_VENUES)
        {
            mSearchVenueResults = message.getData().getParcelableArray("venue_data");
            mNatMgr.unsetUpdateHandler(NativeManager.UH_SEARCH_VENUES, mHandler);
            if (mPhotoPath != null)
            {
                goToVenueSelectFragment();
            }
            mNatMgr.CloseProgressPopup();
        } else
        {
            if (message.what == NativeManager.UH_VENUE_STATUS)
            {
                mIsSending = false;
                mNatMgr.unsetUpdateHandler(NativeManager.UH_VENUE_STATUS, mHandler);
                mNatMgr.CloseProgressPopup();
                Bundle bundle1 = message.getData();
                int i = bundle1.getInt("res");
                int j = bundle1.getInt("points");
                String s4 = bundle1.getString("id");
                if (i >= 0)
                {
                    if (!mIsUpdate)
                    {
                        mSelectedVenue.id = s4;
                    }
                    Intent intent = new Intent();
                    intent.putExtra("destination_venue_id", s4);
                    setResult(-1, intent);
                    sayThankYou(i, j);
                    return true;
                }
                if (i == -2)
                {
                    MsgBox.openMessageBoxWithCallback(mNatMgr.getLanguageString(DisplayStrings.DS_UHHOHE), mNatMgr.getLanguageString(DisplayStrings.DS_YOUVE_BEEN_FLAGGED), false, new android.content.DialogInterface.OnClickListener() {

                        final AddPlaceFlowActivity this$0;

                        public void onClick(DialogInterface dialoginterface, int k)
                        {
                            finish();
                        }

            
            {
                this$0 = AddPlaceFlowActivity.this;
                super();
            }
                    });
                    return true;
                }
                if (i == -3)
                {
                    mForceHouseNumber = true;
                    MsgBox.openMessageBoxFull(mNatMgr.getLanguageString(DisplayStrings.DS_UHHOHE), mNatMgr.getLanguageString(DisplayStrings.DS_PLACE_ADD_LOCATION_ERROR), mNatMgr.getLanguageString(DisplayStrings.DS_BACK), -1, null);
                    return true;
                } else
                {
                    MsgBox.openMessageBox(mNatMgr.getLanguageString(DisplayStrings.DS_SORRYE), mNatMgr.getLanguageString(DisplayStrings.DS_PLACE_ADD_ERROR), false);
                    return true;
                }
            }
            if (message.what == NativeManager.UH_VENUE_ADD_IMAGE_RESULT)
            {
                mNatMgr.unsetUpdateHandler(NativeManager.UH_VENUE_ADD_IMAGE_RESULT, mHandler);
                Bundle bundle = message.getData();
                String s = bundle.getString("path");
                String s1 = bundle.getString("id");
                String s2 = bundle.getString("image_url");
                String s3 = bundle.getString("image_thumbnail_url");
                boolean flag = bundle.getBoolean("res");
                if (mPhotoPath != null && mPhotoPath.equals(s) && flag)
                {
                    mPhotoId = s1;
                    mPhotoUrl = s2;
                    mPhotoThumbnailUrl = s3;
                    if (mIsSending)
                    {
                        mSelectedVenue.addImage(s2, s3, "");
                        mSelectedVenue.addNewImageId(mPhotoId);
                        reallySendVenue();
                        return true;
                    }
                }
            } else
            {
                return super.myHandleMessage(message);
            }
        }
        return true;
    }

    public void omniSelected(int i, String s, String s1, boolean flag)
    {
        if (mState != 2) goto _L2; else goto _L1
_L1:
        String s2;
        if (flag || i == -1)
        {
            mIsPublic = flag;
            mIsUpdate = false;
            mVenue.numCategories = 0;
            if (flag)
            {
                mVenue.name = s;
                mVenue.bResidence = false;
            } else
            {
                mVenue.name = "";
                mVenue.bResidence = true;
            }
            if (mAddressStrings != null && mAddressStrings.numResults > 0)
            {
                if (mVenue.street == null || mVenue.street.isEmpty())
                {
                    mVenue.street = mAddressStrings.street[0];
                }
                if (mVenue.city == null || mVenue.city.isEmpty())
                {
                    mVenue.city = mAddressStrings.city[0];
                }
            }
            mSelectedVenue = mVenue;
            EditTextUtils.closeKeyboard(this, findViewById(0x7f0902cc));
            if (flag)
            {
                moveToNewPlaceFragment(false);
            } else
            {
                int j = ConfigManager.getInstance().checkConfigDisplayCounter(0, true);
                boolean flag1 = false;
                if (j > 0)
                {
                    flag1 = true;
                }
                mbConfirmResidential = flag1;
                if (mbConfirmResidential)
                {
                    confirmResidential();
                } else
                {
                    moveToNewPlaceFragment(true);
                }
            }
        } else
        {
            mIsPublic = true;
            mIsUpdate = true;
            mSelectedVenue = (VenueData)mSearchVenueResults[i];
            mOrigVenue = mSelectedVenue.clone();
            sendVenue();
        }
        if (flag)
        {
            s2 = "TRUE";
        } else
        {
            s2 = "FALSE";
        }
        Analytics.log("PLACES_CHOOSE_DONE_CLICKED", "WAS_ADDED|VENUE_ID", (new StringBuilder(String.valueOf(s2))).append("|").append(mSelectedVenue.id).toString());
_L4:
        return;
_L2:
        if (mState == 6)
        {
            mSelectedVenue.addCategory(s);
            mSelectedVenue.numCategories = EditPlaceCategoriesHolder.sortCategoryIdsArray(mSelectedVenue.categories);
            mState = 5;
            getFragmentManager().popBackStack();
            ((AddPlaceNewFragment)getFragmentManager().findFragmentByTag("AddPlaceNewFragment")).refreshCategories();
            return;
        }
        if (mState != 4) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.has("CITY")) goto _L6; else goto _L5
_L5:
        mSelectedVenue.city = jsonobject.getString("CITY");
_L7:
        if (!jsonobject.has("STREET"))
        {
            break MISSING_BLOCK_LABEL_526;
        }
        mSelectedVenue.street = jsonobject.getString("STREET");
_L8:
        mState = 5;
        getFragmentManager().popBackStack();
        ((AddPlaceNewFragment)getFragmentManager().findFragmentByTag("AddPlaceNewFragment")).refreshAddress();
        return;
_L6:
        mSelectedVenue.city = "";
          goto _L7
        try
        {
            mSelectedVenue.street = "";
        }
        catch (JSONException jsonexception) { }
          goto _L8
    }

    public void onBackPressed()
    {
        switch (mState)
        {
        default:
            super.onBackPressed();
            return;

        case 1: // '\001'
            super.onBackPressed();
            return;

        case 2: // '\002'
            EditTextUtils.closeKeyboard(this, findViewById(0x7f0902cc));
            mState = 1;
            getFragmentManager().beginTransaction().replace(0x7f0902cc, new TakePhotoFragment()).commit();
            return;

        case 5: // '\005'
            goToVenueSelectFragment();
            return;

        case 6: // '\006'
            mState = 5;
            getFragmentManager().popBackStack();
            return;

        case 4: // '\004'
            mState = 5;
            getFragmentManager().popBackStack();
            return;

        case 3: // '\003'
            mState = 5;
            getFragmentManager().popBackStack();
            ((AddPlaceNewFragment)getFragmentManager().findFragmentByTag("AddPlaceNewFragment")).refreshMapLocation();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mNatMgr = NativeManager.getInstance();
        EditPlaceCategoriesHolder.getCategories();
        EditPlacePointsHolder.getAllPoints();
        Intent intent = getIntent();
        mVenue = new VenueData();
        if (intent != null)
        {
            if (intent.hasExtra("QuestionID"))
            {
                mQuestionId = intent.getStringExtra("QuestionID");
            }
            if (intent.hasExtra("destination_venue_id"))
            {
                mDestinationVenueId = intent.getStringExtra("destination_venue_id");
            }
            if (intent.hasExtra("city"))
            {
                mVenue.city = intent.getStringExtra("city");
            }
            if (intent.hasExtra("street"))
            {
                mVenue.street = intent.getStringExtra("street");
            }
            if (intent.hasExtra("x") && intent.hasExtra("y"))
            {
                mVenue.longitude = intent.getIntExtra("x", 0);
                mVenue.latitude = intent.getIntExtra("y", 0);
                mVenue.wasLocationChanged = true;
            } else
            {
                mFromReportMenu = true;
                android.location.Location location = NativeLocListener.getInstance().getLastLocation();
                if (location != null)
                {
                    com.waze.NativeLocListener.NativeLocation nativelocation = NativeLocListener.GetNativeLocation(location);
                    mVenue.longitude = nativelocation.mLongtitude;
                    mVenue.latitude = nativelocation.mLatitude;
                    mVenue.wasLocationChanged = true;
                } else
                {
                    finish();
                    return;
                }
            }
            if (intent.hasExtra("venue_data"))
            {
                mSearchVenueResults = intent.getParcelableArrayExtra("venue_data");
            }
        }
        mNatMgr.setUpdateHandler(NativeManager.UH_VENUE_ADD_IMAGE_RESULT, mHandler);
        mNatMgr.setUpdateHandler(NativeManager.UH_VENUE_STATUS, mHandler);
        NativeManager.Post(new Runnable() {

            final AddPlaceFlowActivity this$0;

            public void run()
            {
                mAddressStrings = mNatMgr.getAddressByLocationNTV(mVenue.longitude, mVenue.latitude);
            }

            
            {
                this$0 = AddPlaceFlowActivity.this;
                super();
            }
        });
        getWindow().setSoftInputMode(3);
        setContentView(0x7f03005a);
        if (bundle == null)
        {
            mState = 1;
            getFragmentManager().beginTransaction().add(0x7f0902cc, new TakePhotoFragment()).commit();
        } else
        {
            mState = bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mState").toString());
            mPoints = bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mPoints").toString());
            mIsPublic = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsPublic").toString());
            mFromReportMenu = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mFromReportMenu").toString());
            mForceHouseNumber = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mForceHouseNumber").toString());
            mSayThankYou = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mSayThankYou").toString());
            mbConfirmResidential = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mbConfirmResidential").toString());
            mIsSending = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsSending").toString());
            mIsUpdate = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsUpdate").toString());
            mVenue = (VenueData)bundle.getParcelable((new StringBuilder(String.valueOf(TAG))).append(".mVenue").toString());
            mSelectedVenue = (VenueData)bundle.getParcelable((new StringBuilder(String.valueOf(TAG))).append(".mSelectedVenue").toString());
            mOrigVenue = (VenueData)bundle.getParcelable((new StringBuilder(String.valueOf(TAG))).append(".mOrigVenue").toString());
            mSearchVenueResults = bundle.getParcelableArray((new StringBuilder(String.valueOf(TAG))).append(".mSearchVenueResults").toString());
            mPhotoPath = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mPhotoPath").toString());
            mPhotoId = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mPhotoId").toString());
            mPhotoUrl = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mPhotoUrl").toString());
            mPhotoThumbnailUrl = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mPhotoThumbnailUrl").toString());
            mQuestionId = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mQuestionId").toString());
        }
        mRetain = false;
        if (mSearchVenueResults == null)
        {
            mNatMgr.setUpdateHandler(NativeManager.UH_SEARCH_VENUES, mHandler);
            mNatMgr.venueSearch(mVenue.longitude, mVenue.latitude);
        }
        if (mbConfirmResidential)
        {
            confirmResidential();
        } else
        {
            if (mSayThankYou)
            {
                sayThankYou(0, mPoints);
                return;
            }
            if (mIsSending)
            {
                mNatMgr.OpenProgressPopup(mNatMgr.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
                return;
            }
        }
    }

    protected void onDestroy()
    {
        if (mTyd != null)
        {
            mTyd.dismiss();
        }
        if (!mRetain)
        {
            TakePhotoFragment.cleanUpFiles(null);
        }
        mNatMgr.unsetUpdateHandler(NativeManager.UH_SEARCH_VENUES, mHandler);
        mNatMgr.unsetUpdateHandler(NativeManager.UH_VENUE_STATUS, mHandler);
        mNatMgr.unsetUpdateHandler(NativeManager.UH_VENUE_ADD_IMAGE_RESULT, mHandler);
        super.onDestroy();
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mState").toString(), mState);
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mPoints").toString(), mPoints);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsPublic").toString(), mIsPublic);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mFromReportMenu").toString(), mFromReportMenu);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mForceHouseNumber").toString(), mForceHouseNumber);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mSayThankYou").toString(), mSayThankYou);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mbConfirmResidential").toString(), mbConfirmResidential);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsSending").toString(), mIsSending);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsUpdate").toString(), mIsUpdate);
        bundle.putParcelable((new StringBuilder(String.valueOf(TAG))).append(".mVenue").toString(), mVenue);
        bundle.putParcelable((new StringBuilder(String.valueOf(TAG))).append(".mSelectedVenue").toString(), mSelectedVenue);
        bundle.putParcelable((new StringBuilder(String.valueOf(TAG))).append(".mOrigVenue").toString(), mOrigVenue);
        bundle.putParcelableArray((new StringBuilder(String.valueOf(TAG))).append(".mSearchVenueResults").toString(), mSearchVenueResults);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mPhotoPath").toString(), mPhotoPath);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mPhotoId").toString(), mPhotoId);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mPhotoUrl").toString(), mPhotoUrl);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mPhotoThumbnailUrl").toString(), mPhotoThumbnailUrl);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mQuestionId").toString(), mQuestionId);
        mRetain = true;
    }

    public void photoTaken(Uri uri, String s)
    {
        mPhotoPath = s;
        mPhotoId = null;
        mPhotoThumbnailUrl = null;
        mPhotoUrl = null;
        NativeManager.Post(new Runnable() {

            final AddPlaceFlowActivity this$0;

            public void run()
            {
                mNatMgr.venueAddImageNTV(mPhotoPath);
            }

            
            {
                this$0 = AddPlaceFlowActivity.this;
                super();
            }
        });
        if (mSearchVenueResults != null)
        {
            goToVenueSelectFragment();
            return;
        } else
        {
            mNatMgr.OpenProgressPopup(mNatMgr.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
            postDelayed(new Runnable() {

                final AddPlaceFlowActivity this$0;

                public void run()
                {
                    if (mSearchVenueResults == null && !isFinishing())
                    {
                        MsgBox.openMessageBoxWithCallback(mNatMgr.getLanguageString(DisplayStrings.DS_UHHOHE), mNatMgr.getLanguageString(DisplayStrings.DS_NETWORK_CONNECTION_PROBLEMS__PLEASE_TRY_AGAIN_LATER_), false, new android.content.DialogInterface.OnClickListener() {

                            final _cls4 this$1;

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                finish();
                            }

            
            {
                this$1 = _cls4.this;
                super();
            }
                        });
                    }
                }


            
            {
                this$0 = AddPlaceFlowActivity.this;
                super();
            }
            }, mNatMgr.getVenueGetTimeout());
            return;
        }
    }

    public void pickCategory()
    {
        mState = 6;
        OmniSelectionFragment omniselectionfragment = new OmniSelectionFragment();
        omniselectionfragment.setTitle(mNatMgr.getLanguageString(DisplayStrings.DS_ADD_A_CATEGORY));
        omniselectionfragment.setValues(EditPlaceCategoriesHolder.getCategoryValues());
        omniselectionfragment.setExpandable(true);
        omniselectionfragment.setAutoComplete(true);
        getFragmentManager().beginTransaction().replace(0x7f0902cc, omniselectionfragment).addToBackStack(null).commit();
    }

    void reallySendVenue()
    {
        String s;
        if (mFromReportMenu)
        {
            s = "REPORT";
        } else
        {
            s = "NEARING";
        }
        if (mIsUpdate)
        {
            mNatMgr.venueUpdate(mSelectedVenue, mOrigVenue, s, mQuestionId);
            return;
        } else
        {
            mNatMgr.venueCreate(mSelectedVenue, s, mQuestionId, mForceHouseNumber);
            return;
        }
    }

    void sendVenue()
    {
        if (!mIsUpdate)
        {
            Analytics.log("PLACES_NEW_PLACE_SCREEN_DONE_CLICKED", "VENUE_ID", mSelectedVenue.id);
        }
        mIsSending = true;
        mNatMgr.OpenProgressPopup(mNatMgr.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
        if (mPhotoId != null)
        {
            mSelectedVenue.addImage(mPhotoUrl, mPhotoThumbnailUrl, "");
            mSelectedVenue.addNewImageId(mPhotoId);
            reallySendVenue();
        }
    }

    void sendVenue(VenueData venuedata, int i)
    {
        mSelectedVenue = venuedata;
        mPoints = i;
        sendVenue();
    }

    public void wantMore()
    {
        mSelectedVenue.wasLocationChanged = false;
        mSelectedVenue.removeNewImageId(0);
        Intent intent = new Intent(this, com/waze/reports/EditPlaceFlowActivity);
        intent.putExtra(com/waze/reports/VenueData.getName(), mSelectedVenue);
        intent.putExtra("continue_edit", true);
        startActivity(intent);
        mRetain = true;
        finish();
    }









}
