// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.AlertDialog;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.view.View;
import android.view.Window;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.EditTextDialogFragment;
import com.waze.ifs.ui.OmniSelectionFragment;
import com.waze.navigate.DriveToNativeManager;
import com.waze.settings.SettingsValue;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.waze.reports:
//            VenueData, ThankYouDialog, EditPlaceFragment, OpeningHours, 
//            EditPlaceCategoriesHolder, EditMapLocationFragment, EditOpeningHoursFragment, EditPlaceServicesFragment, 
//            TakePhotoFragment, EditPlacePointsHolder, EditPlaceValidatorsHolder

public class EditPlaceFlowActivity extends ActivityBase
    implements TakePhotoFragment.ITakePhoto, com.waze.ifs.ui.OmniSelectionFragment.IOmniSelect, com.waze.ifs.ui.EditTextDialogFragment.IEditText, SimpleChoiceFragment.ISimplyChoose, EditMapLocationFragment.IEditMap
{

    private static final int STATE_ADD_CATEGORY = 8;
    private static final int STATE_DUPLICATE_FIND = 7;
    private static final int STATE_EDIT_ABOUT = 3;
    private static final int STATE_EDIT_REASON = 4;
    private static final int STATE_MAIN = 1;
    private static final int STATE_MAP_LOCATION = 6;
    private static final int STATE_MOVED_CLOSED = 9;
    private static final int STATE_OPENING_HOURS = 5;
    private static final int STATE_SELECT_ADDRESS = 11;
    private static final int STATE_SERVICES = 10;
    private static final int STATE_TAKE_PHOTO = 2;
    private static final String TAG = com/waze/reports/EditPlaceFlowActivity.getName();
    Fragment curFragment;
    private com.waze.NativeManager.AddressStrings mAddressStrings;
    private DriveToNativeManager mDriveTo;
    private int mEarnedPoints;
    private int mFlagType;
    private boolean mIsContinueEdit;
    private boolean mIsSending;
    private boolean mIsWaitingForImage;
    private NativeManager mNm;
    private VenueData mOrigVenue;
    private String mPhotoPath;
    private boolean mRetain;
    private Runnable mRetryImageLoad;
    private int mState;
    private ThankYouDialog mTyd;
    private VenueData mVenue;
    EditPlaceFragment mainFragment;

    public EditPlaceFlowActivity()
    {
        mIsContinueEdit = false;
        mIsSending = false;
        mIsWaitingForImage = false;
        curFragment = null;
        mRetryImageLoad = null;
    }

    private void gotoFindDuplicate()
    {
        mNm.OpenProgressPopup(mNm.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
        mNm.setUpdateHandler(NativeManager.UH_SEARCH_VENUES, mHandler);
        mNm.venueSearch(mVenue.longitude, mVenue.latitude);
    }

    private void gotoFlagResidential()
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final EditPlaceFlowActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (i == 1)
                {
                    mNm.venueFlag(mVenue.id, mFlagType, null, null);
                    thanksForReport();
                }
            }

            
            {
                this$0 = EditPlaceFlowActivity.this;
                super();
            }
        };
        MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(mNm.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), mNm.getLanguageString(DisplayStrings.DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_BODY), true, onclicklistener, mNm.getLanguageString(DisplayStrings.DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_YES), mNm.getLanguageString(DisplayStrings.DS_CANCEL), -1);
    }

    private void gotoIappropreateOrWrongDetails(boolean flag)
    {
        mState = 4;
        EditTextDialogFragment edittextdialogfragment = new EditTextDialogFragment();
        DisplayStrings displaystrings;
        DisplayStrings displaystrings1;
        if (flag)
        {
            displaystrings = DisplayStrings.DS_PLACE_INAPPROPRIATE;
        } else
        {
            displaystrings = DisplayStrings.DS_PLACE_WRONG;
        }
        edittextdialogfragment.setTitle(displaystrings);
        edittextdialogfragment.setSubtitle(DisplayStrings.DS_TELL_US_MORE);
        if (flag)
        {
            displaystrings1 = DisplayStrings.DS_THIS_PLACE_IS_INAPPROPRIATE_BECAUSE___;
        } else
        {
            displaystrings1 = DisplayStrings.DS_THE_DETAILS_ARE_WRONG_BECAUSE___;
        }
        edittextdialogfragment.setHint(displaystrings1);
        edittextdialogfragment.setSingleLine(false);
        edittextdialogfragment.setMinLines(6);
        edittextdialogfragment.setSpeech(false);
        edittextdialogfragment.setInputType(1);
        getFragmentManager().beginTransaction().replace(0x7f0902cc, edittextdialogfragment).addToBackStack(null).commit();
    }

    private void gotoMovedOrClosed()
    {
        mState = 4;
        EditTextDialogFragment edittextdialogfragment = new EditTextDialogFragment();
        edittextdialogfragment.setTitle(DisplayStrings.DS_PLACE_CLOSED_MOVED);
        edittextdialogfragment.setSubtitle(DisplayStrings.DS_WHAT_HAPPENEDQ);
        edittextdialogfragment.setHint(DisplayStrings.DS_ADD_COMMENT);
        edittextdialogfragment.setSingleLine(false);
        edittextdialogfragment.setMinLines(6);
        edittextdialogfragment.setSpeech(false);
        edittextdialogfragment.setInputType(1);
        getFragmentManager().beginTransaction().replace(0x7f0902cc, edittextdialogfragment).addToBackStack(null).commit();
    }

    private void sayThankYou(int i, int j)
    {
        boolean flag = true;
        if (j < 0)
        {
            j = mEarnedPoints;
        }
        DisplayStrings displaystrings;
        DisplayStrings displaystrings1;
        DisplayStrings displaystrings2;
        android.view.View.OnClickListener onclicklistener;
        if (j == 0)
        {
            displaystrings = DisplayStrings.DS_THANK_YOU_TITLE_ZERO_POINTS;
            displaystrings1 = DisplayStrings.DS_THANK_YOU_BODY_ZERO_POINTS;
        } else
        {
            displaystrings = DisplayStrings.DS_THANK_YOU_TITLE_FULL_EDIT;
            displaystrings1 = DisplayStrings.DS_THANK_YOU_BODY_FULL_EDIT;
        }
        displaystrings2 = DisplayStrings.DS_OKAY;
        onclicklistener = new android.view.View.OnClickListener() {

            final EditPlaceFlowActivity this$0;

            public void onClick(View view)
            {
                setResult(3);
                finish();
            }

            
            {
                this$0 = EditPlaceFlowActivity.this;
                super();
            }
        };
        if (i != flag)
        {
            flag = false;
        }
        mTyd = new ThankYouDialog(this, j, false, onclicklistener, null, displaystrings, displaystrings1, null, displaystrings2, flag);
        mTyd.show();
    }

    private void thanksForReport()
    {
        mNm.OpenProgressIconPopup(mNm.getLanguageString(DisplayStrings.DS_REPORT_PLACE_THANK_YOU), "flag_verified");
        postDelayed(new Runnable() {

            final EditPlaceFlowActivity this$0;

            public void run()
            {
                mNm.CloseProgressPopup();
            }

            
            {
                this$0 = EditPlaceFlowActivity.this;
                super();
            }
        }, 4000L);
    }

    public void choiceMade(SimpleChoiceFragment.SimpleChoice simplechoice, String s)
    {
        if (mState == 9)
        {
            mNm.venueFlag(mVenue.id, simplechoice.value, s, null);
            thanksForReport();
        }
        mState = 1;
        getFragmentManager().popBackStack();
    }

    public void doneEditMap(int i, int j)
    {
        mVenue.longitude = i;
        mVenue.latitude = j;
        mVenue.wasLocationChanged = true;
        mainFragment.updateMapLocation(mVenue);
        mState = 1;
        getFragmentManager().popBackStack();
    }

    public void doneOpeningHours(ArrayList arraylist)
    {
        mVenue.numOpeningHours = arraylist.size();
        if (mVenue.numOpeningHours > VenueData.MAX_ARR_SIZE)
        {
            mVenue.numOpeningHours = VenueData.MAX_ARR_SIZE;
        }
        int i = 0;
        do
        {
            if (i >= mVenue.numOpeningHours)
            {
                mainFragment.setOpeningHours(mVenue);
                mState = 1;
                getFragmentManager().popBackStack();
                return;
            }
            mVenue.openingHours[i] = (OpeningHours)arraylist.get(i);
            i++;
        } while (true);
    }

    public void doneServices(List list)
    {
        int i;
        Iterator iterator;
        mVenue.numServices = list.size();
        if (mVenue.numServices > VenueData.MAX_ARR_SIZE)
        {
            mVenue.numServices = VenueData.MAX_ARR_SIZE;
        }
        i = 0;
        iterator = list.iterator();
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        mainFragment.setServices(mVenue);
        mState = 1;
        getFragmentManager().popBackStack();
        return;
_L2:
        String s = (String)iterator.next();
        mVenue.services[i] = s;
        if (++i != mVenue.numServices) goto _L3; else goto _L1
    }

    public void goToAddCategory()
    {
        mState = 8;
        OmniSelectionFragment omniselectionfragment = new OmniSelectionFragment();
        omniselectionfragment.setTitle(mNm.getLanguageString(DisplayStrings.DS_CATEGORIES));
        omniselectionfragment.setValues(EditPlaceCategoriesHolder.getCategoryValues());
        omniselectionfragment.setExpandable(true);
        omniselectionfragment.setAutoComplete(true);
        getFragmentManager().beginTransaction().replace(0x7f0902cc, omniselectionfragment).addToBackStack(null).commit();
    }

    public void goToEditAbout(String s)
    {
        mState = 3;
        EditTextDialogFragment edittextdialogfragment = new EditTextDialogFragment();
        edittextdialogfragment.setTitle(DisplayStrings.DS_EDIT_PLACE);
        edittextdialogfragment.setSubtitle(DisplayStrings.DS_ABOUT2);
        edittextdialogfragment.setHint(DisplayStrings.DS_DESCRIBE_PLACE_HINT);
        String s1 = mNm.getLanguageString(DisplayStrings.DS_MAX_PD_CHARACTERS);
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(300);
        edittextdialogfragment.setExplanation(String.format(s1, aobj));
        edittextdialogfragment.setSingleLine(false);
        edittextdialogfragment.setSpeech(false);
        edittextdialogfragment.setMaxLength(300);
        edittextdialogfragment.setMinLines(6);
        edittextdialogfragment.setInitial(mVenue.about);
        edittextdialogfragment.setInputType(1);
        getFragmentManager().beginTransaction().replace(0x7f0902cc, edittextdialogfragment).addToBackStack(null).commit();
    }

    public void goToEditMap()
    {
        mState = 6;
        EditMapLocationFragment editmaplocationfragment = new EditMapLocationFragment();
        editmaplocationfragment.setLonLat(mVenue.longitude, mVenue.latitude);
        editmaplocationfragment.setTitle(DisplayStrings.DS_LOCATION);
        editmaplocationfragment.setAvoiderPin(mVenue.bResidence);
        getFragmentManager().beginTransaction().replace(0x7f0902cc, editmaplocationfragment).addToBackStack(null).commit();
    }

    public void goToOpeningHours()
    {
        mState = 5;
        ArrayList arraylist = new ArrayList(mVenue.numOpeningHours);
        int i = 0;
        do
        {
            if (i >= mVenue.numOpeningHours)
            {
                EditOpeningHoursFragment editopeninghoursfragment = new EditOpeningHoursFragment();
                editopeninghoursfragment.setOpeningHours(arraylist);
                getFragmentManager().beginTransaction().replace(0x7f0902cc, editopeninghoursfragment).addToBackStack(null).commit();
                return;
            }
            arraylist.add(mVenue.openingHours[i]);
            i++;
        } while (true);
    }

    public void goToPickCityStreet()
    {
        OmniSelectionFragment omniselectionfragment;
        HashSet hashset;
        HashSet hashset1;
        ArrayList arraylist;
        int i;
        mState = 11;
        omniselectionfragment = new OmniSelectionFragment();
        omniselectionfragment.setTitle(mNm.getLanguageString(DisplayStrings.DS_ADDRESS));
        hashset = new HashSet(mAddressStrings.numResults);
        hashset1 = new HashSet(mAddressStrings.numResults);
        arraylist = new ArrayList(mAddressStrings.numResults);
        i = 0;
_L11:
        if (i < mAddressStrings.numResults) goto _L2; else goto _L1
_L2:
        if (mAddressStrings.city[i].isEmpty()) goto _L4; else goto _L3
_L3:
        hashset.add(mAddressStrings.city[i]);
        flag1 = mAddressStrings.street[i].isEmpty();
        jsonobject1 = null;
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_253;
        }
        JSONObject jsonobject2 = new JSONObject();
        jsonobject2.put("STREET", mAddressStrings.street[i]);
        jsonobject2.put("CITY", mAddressStrings.city[i]);
        jsonobject1 = jsonobject2;
_L8:
        if (jsonobject1 == null) goto _L6; else goto _L5
_L4:
        flag = mAddressStrings.street[i].isEmpty();
        jsonobject1 = null;
        if (flag) goto _L8; else goto _L7
_L7:
        jsonobject2 = new JSONObject();
        jsonobject2.put("STREET", mAddressStrings.street[i]);
        jsonobject1 = jsonobject2;
          goto _L8
_L5:
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
_L6:
        if (hashset1.size() < mAddressStrings.numToFilterTo) goto _L9; else goto _L1
_L1:
        Iterator iterator = hashset.iterator();
        do
        {
            JSONObject jsonobject1;
            boolean flag1;
            if (!iterator.hasNext())
            {
                omniselectionfragment.setValues((SettingsValue[])arraylist.toArray(new SettingsValue[arraylist.size()]));
                getFragmentManager().beginTransaction().replace(0x7f0902cc, omniselectionfragment).addToBackStack(null).commit();
                return;
            }
            s = (String)iterator.next();
            jsonobject = new JSONObject();
            try
            {
                jsonobject.put("CITY", s);
                arraylist.add(new SettingsValue(jsonobject.toString(), s, false));
            }
            // Misplaced declaration of an exception variable
            catch (JSONException jsonexception1) { }
        } while (true);
        JSONException jsonexception2;
        jsonexception2;
        jsonobject2;
          goto _L6
_L9:
        i++;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public void goToServices()
    {
        mState = 10;
        ArrayList arraylist = new ArrayList(mVenue.numServices);
        int i = 0;
        do
        {
            if (i >= mVenue.numServices)
            {
                HashSet hashset = new HashSet(arraylist);
                EditPlaceServicesFragment editplaceservicesfragment = new EditPlaceServicesFragment();
                editplaceservicesfragment.setServiceIds(hashset);
                getFragmentManager().beginTransaction().replace(0x7f0902cc, editplaceservicesfragment).addToBackStack(null).commit();
                return;
            }
            arraylist.add(mVenue.services[i]);
            i++;
        } while (true);
    }

    public void goToTakePhoto(Bundle bundle)
    {
        mState = 2;
        TakePhotoFragment takephotofragment = new TakePhotoFragment();
        takephotofragment.setAnimateButton(bundle);
        getFragmentManager().beginTransaction().replace(0x7f0902cc, takephotofragment).addToBackStack(null).commit();
    }

    public void isSearching(int i)
    {
    }

    protected boolean myHandleMessage(Message message)
    {
label0:
        {
            if (message.what != NativeManager.UH_SEARCH_VENUES)
            {
                break label0;
            }
            VenueData avenuedata[] = (VenueData[])message.getData().getParcelableArray("venue_data");
            mNm.unsetUpdateHandler(NativeManager.UH_SEARCH_VENUES, mHandler);
            mNm.CloseProgressPopup();
            if (avenuedata == null || avenuedata.length == 0)
            {
                return true;
            }
            mState = 7;
            OmniSelectionFragment omniselectionfragment = new OmniSelectionFragment();
            omniselectionfragment.setTitle(mNm.getLanguageString(DisplayStrings.DS_PLACE_DUPLICATE));
            omniselectionfragment.setEditBoxHint(mNm.getLanguageString(DisplayStrings.DS_SEARCH_PLACE_TO_MERGE));
            SettingsValue asettingsvalue[] = new SettingsValue[avenuedata.length];
            int k = 0;
            int l = avenuedata.length;
            int i1 = 0;
            do
            {
                if (i1 >= l)
                {
                    if (k < asettingsvalue.length)
                    {
                        asettingsvalue = (SettingsValue[])Arrays.copyOf(asettingsvalue, k);
                    }
                    omniselectionfragment.setValues(asettingsvalue);
                    omniselectionfragment.setSearch(true);
                    omniselectionfragment.setFilter(true);
                    getFragmentManager().beginTransaction().replace(0x7f0902cc, omniselectionfragment).addToBackStack(null).commit();
                    return true;
                }
                VenueData venuedata = avenuedata[i1];
                while (false) 
                {
                    if (!mVenue.id.equals(venuedata.id) && venuedata.name != null && !venuedata.name.isEmpty())
                    {
                        asettingsvalue[k] = new SettingsValue(venuedata.id, venuedata.name, false);
                        asettingsvalue[k].display2 = venuedata.getAddressString();
                        k++;
                    }
                    i1++;
                }
            } while (true);
        }
        if (message.what == NativeManager.UH_VENUE_STATUS)
        {
            mIsSending = false;
            mNm.CloseProgressPopup();
            Bundle bundle1 = message.getData();
            int i = bundle1.getInt("res");
            int j = bundle1.getInt("points");
            bundle1.getString("id");
            if (i >= 0)
            {
                sayThankYou(i, j);
            } else
            {
                MsgBox.openMessageBox(mNm.getLanguageString(DisplayStrings.DS_SORRYE), mNm.getLanguageString(DisplayStrings.DS_PLACE_ADD_ERROR), true);
            }
            return true;
        }
        if (message.what != NativeManager.UH_VENUE_ADD_IMAGE_RESULT) goto _L2; else goto _L1
_L1:
        final String from;
        mNm.unsetUpdateHandler(NativeManager.UH_VENUE_ADD_IMAGE_RESULT, mHandler);
        Bundle bundle = message.getData();
        final String path = bundle.getString("path");
        final String id = bundle.getString("id");
        final String imageUrl = bundle.getString("image_url");
        final String imageThumbnailUrl = bundle.getString("image_thumbnail_url");
        boolean flag = bundle.getBoolean("res");
        if (mIsContinueEdit)
        {
            from = "CONTINUE";
        } else
        {
            from = "PREVIEW";
        }
        if (mPhotoPath == null || !mPhotoPath.equals(path)) goto _L4; else goto _L3
_L3:
        mIsWaitingForImage = false;
        if (!flag) goto _L6; else goto _L5
_L5:
        mRetryImageLoad = new Runnable() {

            final EditPlaceFlowActivity this$0;
            private final String val$from;
            private final String val$id;
            private final com.waze.utils.ImageRepository.ImageRepositoryListener val$imageListener;
            private final String val$imageThumbnailUrl;
            private final String val$imageUrl;
            private final String val$path;

            public void run()
            {
                if (mPhotoPath == null)
                {
                    mRetryImageLoad = null;
                    if (mIsSending)
                    {
                        mNm.venueUpdate(mVenue, mOrigVenue, from, null);
                    }
                } else
                if (mPhotoPath.equals(path))
                {
                    if (mIsSending)
                    {
                        mVenue.replaceImage(mPhotoPath, imageUrl, imageThumbnailUrl);
                        mVenue.addNewImageId(id);
                        mPhotoPath = null;
                        mNm.venueUpdate(mVenue, mOrigVenue, from, null);
                        return;
                    }
                    ImageRepository.instance.getImage(imageThumbnailUrl, true, imageListener);
                    if (mRetryImageLoad != null)
                    {
                        postDelayed(mRetryImageLoad, 3000L);
                        return;
                    }
                }
            }

            
            {
                this$0 = EditPlaceFlowActivity.this;
                from = s;
                path = s1;
                imageUrl = s2;
                imageThumbnailUrl = s3;
                id = s4;
                imageListener = imagerepositorylistener;
                super();
            }
        };
        postDelayed(mRetryImageLoad, 3000L);
_L4:
        return true;
_L6:
        if (mIsSending)
        {
            mNm.venueUpdate(mVenue, mOrigVenue, from, null);
        }
        if (true) goto _L4; else goto _L2
_L2:
        return super.myHandleMessage(message);
    }

    public void omniSelected(int i, String s, String s1, boolean flag)
    {
        if (mState != 8) goto _L2; else goto _L1
_L1:
        mVenue.addCategory(s);
        mVenue.numCategories = EditPlaceCategoriesHolder.sortCategoryIdsArray(mVenue.categories);
        mainFragment.updateCategories(mVenue);
_L8:
        mState = 1;
        getFragmentManager().popBackStack();
        return;
_L2:
        if (mState == 7)
        {
            mNm.venueFlag(mVenue.id, mFlagType, null, s);
            thanksForReport();
            continue; /* Loop/switch isn't completed */
        }
        if (mState != 11)
        {
            continue; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.has("CITY")) goto _L4; else goto _L3
_L3:
        mVenue.city = jsonobject.getString("CITY");
_L5:
        if (!jsonobject.has("STREET"))
        {
            break MISSING_BLOCK_LABEL_192;
        }
        mVenue.street = jsonobject.getString("STREET");
_L6:
        mainFragment.updateAddress(mVenue);
        continue; /* Loop/switch isn't completed */
_L4:
        mVenue.city = "";
          goto _L5
        mVenue.street = "";
          goto _L6
        JSONException jsonexception;
        jsonexception;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        DriveToNativeManager.getInstance().unsetAddressOptionsView();
        super.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        EditPlaceServicesFragment.getServices();
        EditPlaceCategoriesHolder.getCategories();
        EditPlacePointsHolder.getAllPoints();
        EditPlaceValidatorsHolder.getAllValidators();
        String s;
        if (getIntent().hasExtra(com/waze/reports/VenueData.getName()))
        {
            mVenue = (VenueData)getIntent().getParcelableExtra(com/waze/reports/VenueData.getName());
        } else
        {
            mVenue = new VenueData();
        }
        if (getIntent().hasExtra("continue_edit"))
        {
            mIsContinueEdit = true;
        }
        if (bundle != null)
        {
            mVenue = (VenueData)bundle.getParcelable((new StringBuilder(String.valueOf(TAG))).append(".mVenue").toString());
        }
        getWindow().setSoftInputMode(3);
        if (mIsContinueEdit)
        {
            s = "TRUE";
        } else
        {
            s = "FALSE";
        }
        Analytics.log("PLACES_PLACE_DETAILS_SCREEN_SHOWN", "CONTINUE|VENUE_ID", (new StringBuilder(String.valueOf(s))).append("|").append(mVenue.id).toString());
        mDriveTo = DriveToNativeManager.getInstance();
        mNm = NativeManager.getInstance();
        NativeManager.Post(new Runnable() {

            final EditPlaceFlowActivity this$0;

            public void run()
            {
                mAddressStrings = mNm.getAddressByLocationNTV(mVenue.longitude, mVenue.latitude);
            }

            
            {
                this$0 = EditPlaceFlowActivity.this;
                super();
            }
        });
        setContentView(0x7f03005a);
        if (bundle == null)
        {
            mState = 1;
            mainFragment = new EditPlaceFragment();
            mainFragment.setVenue(mVenue);
            getFragmentManager().beginTransaction().add(0x7f0902cc, mainFragment, "EditPlaceFragment").commit();
        } else
        {
            mState = bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mState").toString());
            mFlagType = bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mFlagType").toString());
            mVenue = (VenueData)bundle.getParcelable((new StringBuilder(String.valueOf(TAG))).append(".mVenue").toString());
            mIsContinueEdit = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsContinueEdit").toString());
            mIsSending = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsSending").toString());
            mIsWaitingForImage = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsWaitingForImage").toString());
            mPhotoPath = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mPhotoPath").toString());
            mainFragment = (EditPlaceFragment)getFragmentManager().findFragmentByTag("EditPlaceFragment");
        }
        mRetain = false;
        mNm.setUpdateHandler(NativeManager.UH_VENUE_STATUS, mHandler);
        if (mIsWaitingForImage && mPhotoPath != null)
        {
            mNm.setUpdateHandler(NativeManager.UH_VENUE_ADD_IMAGE_RESULT, mHandler);
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
        mNm.unsetUpdateHandler(NativeManager.UH_VENUE_STATUS, mHandler);
        mNm.unsetUpdateHandler(NativeManager.UH_SEARCH_VENUES, mHandler);
        mNm.unsetUpdateHandler(NativeManager.UH_VENUE_ADD_IMAGE_RESULT, mHandler);
        super.onDestroy();
    }

    protected void onPause()
    {
        DriveToNativeManager.getInstance().unsetAddressOptionsView();
        super.onPause();
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mState").toString(), mState);
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mFlagType").toString(), mFlagType);
        bundle.putParcelable((new StringBuilder(String.valueOf(TAG))).append(".mVenue").toString(), mVenue);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsContinueEdit").toString(), mIsContinueEdit);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsSending").toString(), mIsSending);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsWaitingForImage").toString(), mIsWaitingForImage);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mPhotoPath").toString(), mPhotoPath);
        mRetain = true;
    }

    public void photoTaken(Uri uri, String s)
    {
        mPhotoPath = s;
        mVenue.addImage(s, "", "");
        mIsWaitingForImage = true;
        mNm.setUpdateHandler(NativeManager.UH_VENUE_ADD_IMAGE_RESULT, mHandler);
        NativeManager.Post(new Runnable() {

            final EditPlaceFlowActivity this$0;

            public void run()
            {
                mNm.venueAddImageNTV(mPhotoPath);
            }

            
            {
                this$0 = EditPlaceFlowActivity.this;
                super();
            }
        });
        mainFragment.photoTaken(mVenue);
        mState = 1;
        getFragmentManager().popBackStack();
    }

    public void sendVenue(VenueData venuedata, VenueData venuedata1, boolean flag, int i)
    {
        Analytics.log("PLACES_PLACE_DETAILS_SCREEN_DONE_CLICKED", "VENUE_ID", mVenue.id);
        mIsSending = true;
        mVenue = venuedata;
        mOrigVenue = venuedata1;
        mEarnedPoints = i;
        if (!mIsWaitingForImage)
        {
            String s;
            if (mIsContinueEdit)
            {
                s = "CONTINUE";
            } else
            {
                s = "PREVIEW";
            }
            mNm.venueUpdate(mVenue, mOrigVenue, s, null);
        }
    }

    public void showReportSubmenu()
    {
        Analytics.log("PLACES_PLACE_FLAGGING_POPUP_SHOWN", "VENUE_ID", mVenue.id);
        String s = mNm.getLanguageString(DisplayStrings.DS_WHATS_WRONG_WITH_THIS_PLACEQ);
        String as[] = new String[5];
        as[0] = mNm.getLanguageString(DisplayStrings.DS_PLACE_CLOSED_MOVED);
        as[1] = mNm.getLanguageString(DisplayStrings.DS_PLACE_DUPLICATE);
        as[2] = mNm.getLanguageString(DisplayStrings.DS_PLACE_INAPPROPRIATE);
        as[3] = mNm.getLanguageString(DisplayStrings.DS_RESIDENTIAL_PLACE);
        as[4] = mNm.getLanguageString(DisplayStrings.DS_PLACE_WRONG);
        final int optionValues[] = {
            1, 4, 5, 3, 6
        };
        mFlagType = -1;
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this, 0x7f06000f);
        builder.setTitle(s);
        builder.setItems(as, new android.content.DialogInterface.OnClickListener() );
        builder.setIcon(0x7f02015a);
        builder.setCancelable(true);
        AlertDialog alertdialog = builder.create();
        alertdialog.setCanceledOnTouchOutside(true);
        alertdialog.show();
    }

    public void textEdited(String s)
    {
        if (mState != 3) goto _L2; else goto _L1
_L1:
        mVenue.about = s;
        mainFragment.updateAbout(mVenue);
_L4:
        mState = 1;
        getFragmentManager().popBackStack();
        return;
_L2:
        if (mState == 4)
        {
            mNm.venueFlag(mVenue.id, mFlagType, s, null);
            thanksForReport();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }


















    // Unreferenced inner class com/waze/reports/EditPlaceFlowActivity$7

/* anonymous class */
    class _cls7
        implements com.waze.utils.ImageRepository.ImageRepositoryListener
    {

        final EditPlaceFlowActivity this$0;
        private final String val$id;
        private final String val$imageThumbnailUrl;
        private final String val$imageUrl;

        public void onImageRetrieved(Bitmap bitmap)
        {
            mVenue.replaceImage(mPhotoPath, imageUrl, imageThumbnailUrl);
            mVenue.addNewImageId(id);
            mPhotoPath = null;
            post(new Runnable() {

                final _cls7 this$1;

                public void run()
                {
                    mainFragment.updatePhotos(mVenue);
                }

            
            {
                this$1 = _cls7.this;
                super();
            }
            });
        }


            
            {
                this$0 = EditPlaceFlowActivity.this;
                imageUrl = s;
                imageThumbnailUrl = s1;
                id = s2;
                super();
            }
    }

}
