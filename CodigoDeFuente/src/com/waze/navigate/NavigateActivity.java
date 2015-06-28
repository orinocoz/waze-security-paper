// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.analytics.Analytics;
import com.waze.autocomplete.PlaceData;
import com.waze.autocomplete.PlacesAutoCompleteAdapter;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.mywaze.social.FacebookEventActivity;
import com.waze.navigate.social.AddFriendsActivity;
import com.waze.navigate.social.MyFriendsActivity;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.utils.EditTextUtils;
import com.waze.utils.ImageRepository;
import com.waze.view.title.TitleBar;
import java.util.List;

// Referenced classes of package com.waze.navigate:
//            DriveToNavigateCallback, AddressItem, AddressPreviewActivity, DriveToNativeManager, 
//            AddHomeWorkActivity, AddFavoriteActivity, SearchActivity, CategoriesActivity, 
//            FavoritesActivity

public final class NavigateActivity extends ActivityBase
    implements DriveToNavigateCallback
{
    private class NavListAdapter extends BaseAdapter
    {

        private AddressItem favoriteItems[];
        final NavigateActivity this$0;

        public int getCount()
        {
            return Math.max(favoriteItems.length, 6);
        }

        public Object getItem(int i)
        {
            if (i < favoriteItems.length)
            {
                return favoriteItems[i];
            } else
            {
                return null;
            }
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            View view1;
            if (view == null)
            {
                view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f03000e, null);
            }
            AddressItem addressitem = (AddressItem)getItem(i);
            view.setTag(0x7f09002c, addressitem);
            view.findViewById(0x7f0900e1).setVisibility(0);
            ImageView imageview = (ImageView)view.findViewById(0x7f0900be);
            ImageView imageview1 = (ImageView)view.findViewById(0x7f0900c0);
            FrameLayout framelayout = (FrameLayout)view.findViewById(0x7f0900bf);
            boolean flag;
            byte byte0;
            if (addressitem != null)
            {
                view.findViewById(0x7f0900c2).setVisibility(0);
                ((TextView)view.findViewById(0x7f0900c2)).setText(addressitem.getTitle());
                Integer integer;
                RelativeLayout relativelayout;
                if (addressitem.getSecondaryTitle().equals(""))
                {
                    view.findViewById(0x7f0900c3).setVisibility(8);
                } else
                {
                    view.findViewById(0x7f0900c3).setVisibility(0);
                    if (addressitem.getType() != null && (addressitem.getType().intValue() == 2 || addressitem.getType().intValue() == 4 || addressitem.getType().intValue() == 12 || addressitem.getType().intValue() == 10 || addressitem.getType().intValue() == 9 && !addressitem.getIsValidate().booleanValue()))
                    {
                        ((TextView)view.findViewById(0x7f0900c3)).setTextColor(AppService.getAppResources().getColor(0x7f08002d));
                    } else
                    {
                        ((TextView)view.findViewById(0x7f0900c3)).setTextColor(AppService.getAppResources().getColor(0x7f080032));
                    }
                    ((TextView)view.findViewById(0x7f0900c3)).setText(addressitem.getSecondaryTitle());
                }
                view.findViewById(0x7f0900c4).setVisibility(8);
                view.findViewById(0x7f0900c6).setVisibility(8);
                imageview.setTag(null);
                imageview1.setTag(null);
                integer = addressitem.getImage();
                framelayout.setVisibility(8);
                if (addressitem.getType().intValue() == 13)
                {
                    imageview.setVisibility(8);
                    String s = addressitem.mImageURL;
                    framelayout.setVisibility(0);
                    imageview1.setImageResource(0x7f02011b);
                    if (s != null)
                    {
                        ImageRepository.instance.getImage(s, true, imageview1, null, NavigateActivity.this);
                    }
                } else
                if (addressitem.hasIcon())
                {
                    imageview.setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(addressitem.getIcon()))).append(".bin").toString()));
                    imageview.setVisibility(0);
                } else
                if (integer != null)
                {
                    imageview.setImageResource(integer.intValue());
                    imageview.setVisibility(0);
                } else
                {
                    imageview.setVisibility(8);
                }
                relativelayout = (RelativeLayout)view.findViewById(0x7f0900d9);
                relativelayout.setTag(0x7f09002c, addressitem);
                if (addressitem.getMoreAction().booleanValue())
                {
                    relativelayout.setVisibility(0);
                } else
                {
                    relativelayout.setVisibility(8);
                }
            } else
            {
                view.findViewById(0x7f0900c2).setVisibility(8);
                view.findViewById(0x7f0900c3).setVisibility(8);
                view.findViewById(0x7f0900c4).setVisibility(8);
                view.findViewById(0x7f0900c6).setVisibility(8);
                imageview.setVisibility(8);
                imageview.setVisibility(8);
                view.findViewById(0x7f0900d9).setVisibility(8);
            }
            view1 = view.findViewById(0x7f09002c);
            if (i == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (i == -1 + getCount())
            {
                byte0 = 2;
            } else
            {
                byte0 = 0;
            }
            flag | byte0;
            JVM INSTR tableswitch 0 3: default 348
        //                       0 690
        //                       1 700
        //                       2 710
        //                       3 720;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            view1.setPadding(0, 0, 0, 0);
            return view;
_L2:
            view1.setBackgroundResource(0x7f02021f);
            continue; /* Loop/switch isn't completed */
_L3:
            view1.setBackgroundResource(0x7f02021f);
            continue; /* Loop/switch isn't completed */
_L4:
            view1.setBackgroundResource(0x7f02021f);
            continue; /* Loop/switch isn't completed */
_L5:
            view1.setBackgroundResource(0x7f020220);
            if (true) goto _L1; else goto _L6
_L6:
        }

        public NavListAdapter(Context context, AddressItem aaddressitem[])
        {
            this$0 = NavigateActivity.this;
            super();
            favoriteItems = aaddressitem;
        }
    }


    protected static final float HINT_SIZE = 14F;
    private static final int RQ_ADD_FAVORITE = 1002;
    private static final int RQ_ADD_HOME_WORK = 1001;
    protected static final float TEXT_SIZE = 16F;
    DriveToNativeManager.DriveToGetAddressItemArrayCallback getHistoryCallback;
    DriveToNativeManager.DriveToGetAddressItemArrayCallback getTopTenFavoritesCallback;
    private boolean isKeyboardVisible;
    private boolean isStopPoint;
    private boolean isStopPointMessage;
    private AddressItem mAddresses[];
    AddressItem mCalendarAI;
    private AddressItem mLastAddressItem;
    private PlacesAutoCompleteAdapter mPlaceAdapter;
    private NativeManager natMgr;
    private NativeManager nativeManager;
    private DriveToNativeManager nm;
    AutoCompleteTextView searchBox;
    private String speechString;

    public NavigateActivity()
    {
        mAddresses = null;
        mLastAddressItem = null;
        getHistoryCallback = new DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

            final NavigateActivity this$0;

            public void getAddressItemArrayCallback(AddressItem aaddressitem[])
            {
                mAddresses = aaddressitem;
                mPlaceAdapter = new PlacesAutoCompleteAdapter(NavigateActivity.this, 0x109000a, mAddresses, natMgr.getApiKey(), searchBox, new com.waze.autocomplete.PlacesAutoCompleteAdapter.IPrepareForSerchResults() {

                    final _cls1 this$1;

                    public void onPrepareForSerchResults()
                    {
                        SetHandlerForAutocomplete();
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
                searchBox.setAdapter(mPlaceAdapter);
                if (mCalendarAI == null) goto _L2; else goto _L1
_L1:
                if (mCalendarAI.getAddress() == null || mCalendarAI.getAddress().isEmpty()) goto _L4; else goto _L3
_L3:
                searchBox.setText(mCalendarAI.getAddress());
                searchBox.requestFocus();
                searchBox.setSelection(mCalendarAI.getAddress().length());
_L6:
                mPlaceAdapter.setIsCalendar(true);
                ((InputMethodManager)getSystemService("input_method")).showSoftInput(searchBox, 2);
_L2:
                return;
_L4:
                if (mCalendarAI.getSecondaryTitle() != null && !mCalendarAI.getSecondaryTitle().isEmpty())
                {
                    searchBox.setText(mCalendarAI.getSecondaryTitle());
                    searchBox.requestFocus();
                    searchBox.setSelection(mCalendarAI.getSecondaryTitle().length());
                }
                if (true) goto _L6; else goto _L5
_L5:
            }


            
            {
                this$0 = NavigateActivity.this;
                super();
            }
        };
        getTopTenFavoritesCallback = new DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

            final NavigateActivity this$0;

            public void getAddressItemArrayCallback(AddressItem aaddressitem[])
            {
                ((ListView)findViewById(0x7f09046c)).setAdapter(new NavListAdapter(NavigateActivity.this, aaddressitem));
            }

            
            {
                this$0 = NavigateActivity.this;
                super();
            }
        };
    }

    private void calendarOptions(AddressItem addressitem)
    {
        addressitem.setMeetingId(mCalendarAI.getMeetingId());
        addressitem.setCategory(Integer.valueOf(7));
        addressitem.setTitle(mCalendarAI.getTitle());
        Intent intent = new Intent(this, com/waze/navigate/AddressPreviewActivity);
        intent.putExtra("AddressItem", addressitem);
        intent.putExtra("CalendarAddressItem", mCalendarAI);
        intent.putExtra("ClearAdsContext", true);
        startActivityForResult(intent, 1);
    }

    private void initLayout()
    {
        setContentView(0x7f030095);
        nativeManager = AppService.getNativeManager();
        ((TitleBar)findViewById(0x7f090058)).init(this, nativeManager.getLanguageString(DisplayStrings.DS_NAVIGATE));
        ((TextView)findViewById(0x7f090472)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FAVORITES));
        ((TextView)findViewById(0x7f090470)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CATEGORIES));
        ((TextView)findViewById(0x7f090474)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FRIENDS));
        ImageButton imagebutton;
        final ListView listView;
        if (nativeManager.isGasUpdateable())
        {
            ((ImageView)findViewById(0x7f09046f)).setImageResource(0x7f0201aa);
            ((TextView)findViewById(0x7f090470)).setText(nativeManager.getLanguageString(DisplayStrings.DS_GAS));
        } else
        {
            ((ImageView)findViewById(0x7f09046f)).setImageResource(0x7f0201a1);
            ((TextView)findViewById(0x7f090470)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CATEGORIES));
        }
        searchBox = (AutoCompleteTextView)findViewById(0x7f090061);
        if (android.os.Build.VERSION.SDK_INT <= 19)
        {
            searchBox.setDropDownBackgroundDrawable(new ColorDrawable(Color.parseColor("#cbd6da")));
        } else
        {
            searchBox.setDropDownBackgroundDrawable(null);
        }
        searchBox.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final NavigateActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                PlaceData placedata = mPlaceAdapter.getItemByPosition(i);
                if (mCalendarAI != null && placedata.mLocalIndex != -4)
                {
                    Analytics.log("CALENDAR_AUTOCOMPLETE_CLICK", "ID|VALUE", (new StringBuilder(String.valueOf(mCalendarAI.getMeetingId()))).append("|").append(searchBox.getText().toString()).toString());
                }
                if (placedata.mVenueId == null || placedata.mVenueId.equals(""))
                {
                    if (placedata.mLocalIndex == -4)
                    {
                        nm.CalendarAddressRemove(mCalendarAI.getMeetingId());
                        mCalendarAI = null;
                        nativeManager.OpenProgressIconPopup(nativeManager.getLanguageString(DisplayStrings.DS_EVENT_REMOVED), "sign_up_big_v");
                        (new Handler()).postDelayed(new Runnable() {

                            final _cls3 this$1;

                            public void run()
                            {
                                searchBox.setText("");
                                mPlaceAdapter.setIsCalendar(false);
                                ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(searchBox.getWindowToken(), 0);
                                nm.getTopTenFavorites(getTopTenFavoritesCallback);
                                nativeManager.CloseProgressPopup();
                            }

            
            {
                this$1 = _cls3.this;
                super();
            }
                        }, 1000L);
                        return;
                    }
                    if (placedata.mLocalIndex == -1 || placedata.mLocalIndex == -2 || placedata.mLocalIndex == -3)
                    {
                        searchClickedByAutoComplete(view);
                        if (placedata.mLocalIndex == -1)
                        {
                            Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "QUERY");
                            return;
                        }
                        if (placedata.mLocalIndex == -3)
                        {
                            Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "SEARCH");
                            return;
                        } else
                        {
                            Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "CONTACT");
                            return;
                        }
                    }
                    if (mAddresses[placedata.mLocalIndex].getType().intValue() == 8)
                    {
                        Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "HISTORY");
                    } else
                    {
                        Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "FAVORITE");
                    }
                    if (mCalendarAI != null)
                    {
                        calendarOptions(mAddresses[placedata.mLocalIndex]);
                        return;
                    } else
                    {
                        nm.navigate(mAddresses[placedata.mLocalIndex], NavigateActivity.this);
                        return;
                    }
                }
                if (placedata.mIsAds)
                {
                    Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "ADVERTISEMENT");
                    nativeManager.AutoCompleteAdsClicked(placedata.mVenueId, mPlaceAdapter.mInput, i);
                } else
                {
                    Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "PLACE");
                }
                PlaceClickedByAutoComplete(view, placedata);
            }


            
            {
                this$0 = NavigateActivity.this;
                super();
            }
        });
        searchBox.setOnTouchListener(EditTextUtils.getKeyboardLockOnTouchListener(this, searchBox, null));
        searchBox.setHint(nativeManager.getLanguageString(DisplayStrings.DS_SEARCH_ADDRESS__PLACE_OR_CONTACT));
        searchBox.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final NavigateActivity this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                Log.d("WAZE", (new StringBuilder("a:")).append(i).append(" ke:").append(keyevent).toString());
                if (i == 3)
                {
                    searchClicked(textview);
                }
                if (keyevent != null && keyevent.getAction() == 1)
                {
                    searchClicked(textview);
                }
                return true;
            }

            
            {
                this$0 = NavigateActivity.this;
                super();
            }
        });
        searchBox.addTextChangedListener(new TextWatcher() {

            final NavigateActivity this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                if (charsequence.length() == 0)
                {
                    searchBox.setTextSize(1, 14F);
                    return;
                } else
                {
                    searchBox.setTextSize(1, 16F);
                    return;
                }
            }

            
            {
                this$0 = NavigateActivity.this;
                super();
            }
        });
        nm.getTopTenFavorites(getTopTenFavoritesCallback);
        nm.getAutoCompleteData(getHistoryCallback);
        imagebutton = (ImageButton)findViewById(0x7f090062);
        if (getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).size() == 0)
        {
            imagebutton.setVisibility(8);
        }
        listView = (ListView)findViewById(0x7f09046c);
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final NavigateActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                addressItemClicked(view);
            }

            
            {
                this$0 = NavigateActivity.this;
                super();
            }
        });
        listView.setOnScrollListener(new android.widget.AbsListView.OnScrollListener() {

            final NavigateActivity this$0;
            private final ListView val$listView;

            public void onScroll(AbsListView abslistview, int i, int j, int k)
            {
            }

            public void onScrollStateChanged(AbsListView abslistview, int i)
            {
                if (i == 1 && !listView.hasFocus())
                {
                    listView.requestFocus();
                    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(searchBox.getWindowToken(), 0);
                }
            }

            
            {
                this$0 = NavigateActivity.this;
                listView = listview;
                super();
            }
        });
    }

    public void PlaceClickedByAutoComplete(View view, PlaceData placedata)
    {
        if (mCalendarAI == null && placedata.hasLocation())
        {
            AddressItem addressitem = new AddressItem(placedata);
            Intent intent = new Intent(this, com/waze/navigate/AddressPreviewActivity);
            intent.putExtra("AddressItem", addressitem);
            intent.putExtra("preview_load_venue", true);
            startActivityForResult(intent, 1);
            return;
        }
        nm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        String s = placedata.mTitle;
        if (placedata.mSecondaryTitle != null)
        {
            s = (new StringBuilder(String.valueOf(placedata.mTitle))).append(" ").append(placedata.mSecondaryTitle).toString();
        }
        natMgr.AutoCompletePlaceClicked(placedata.mVenueId, placedata.mReference, mCalendarAI, null, false, s, false, placedata.mfeature, placedata.mResponse, searchBox.getText().toString());
    }

    public void SetHandlerForAutocomplete()
    {
        nm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        nm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
    }

    public void addressItemClicked(View view)
    {
        AddressItem addressitem;
        Integer integer;
label0:
        {
            addressitem = (AddressItem)view.getTag(0x7f09002c);
            mPlaceAdapter.setIsCalendar(false);
            if (addressitem != null)
            {
                integer = addressitem.getType();
                if (integer == null || integer.intValue() != 2 && integer.intValue() != 4)
                {
                    break label0;
                }
                Intent intent3 = new Intent(this, com/waze/navigate/AddHomeWorkActivity);
                intent3.putExtra("AddressType", integer);
                startActivityForResult(intent3, 1001);
            }
            return;
        }
        if (integer != null && integer.intValue() == 6)
        {
            Intent intent2 = new Intent(this, com/waze/navigate/AddFavoriteActivity);
            intent2.putExtra("AddressType", integer);
            startActivityForResult(intent2, 1002);
            return;
        }
        if (integer == null || integer.intValue() != 1) goto _L2; else goto _L1
_L1:
        Analytics.log("DRIVE_TYPE", "VAUE", "HOME");
_L4:
        if (integer != null && integer.intValue() == 10)
        {
            Analytics.log("FACEBOOK_CONNECT_CLICK", "VAUE", "NAVIGATE_SCREEN");
            FacebookWrapper.getInstance().authorize(this, new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                final NavigateActivity this$0;

                public void onAuthorizeCompleted(boolean flag, int i)
                {
                    setResult(-1);
                    finish();
                }

            
            {
                this$0 = NavigateActivity.this;
                super();
            }
            }, true);
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (integer != null && integer.intValue() == 3)
        {
            Analytics.log("DRIVE_TYPE", "VAUE", "WORK");
        } else
        if (integer != null && integer.intValue() == 5)
        {
            Analytics.log("DRIVE_TYPE", "VAUE", "OTHER_FAV");
        } else
        if (integer != null && integer.intValue() == 8)
        {
            Analytics.log("DRIVE_TYPE", "VAUE", "HISTORY");
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (integer != null && integer.intValue() == 9)
        {
            if (addressitem.getIsValidate().booleanValue())
            {
                Analytics.log("DRIVE_TYPE", "VAUE", "FB_EVENT");
                nm.drive(addressitem.getMeetingId(), false);
                setResult(-1);
                finish();
                return;
            } else
            {
                Intent intent1 = new Intent(this, com/waze/mywaze/social/FacebookEventActivity);
                intent1.putExtra("AddressItem", addressitem);
                startActivityForResult(intent1, 1);
                return;
            }
        }
        if (integer != null && integer.intValue() == 13)
        {
            Analytics.log("DRIVE_TYPE", "VAUE", "HISTORY");
            nm.drive(addressitem.getMeetingId(), true);
            setResult(-1);
            finish();
            return;
        }
        if (integer != null && integer.intValue() == 12)
        {
            nativeManager.CalendaRequestAccessNTV();
            nm.fetchCalendarEvents();
            String s = nativeManager.getLanguageString(DisplayStrings.DS_DONT_FORGET_TO_INCLUDE_LOCATIONS);
            nativeManager.OpenProgressIconPopup(s, "calendar_added");
            nm.getTopTenFavorites(getTopTenFavoritesCallback);
            (new Handler()).postDelayed(new Runnable() {

                final NavigateActivity this$0;

                public void run()
                {
                    nativeManager.CloseProgressPopup();
                }

            
            {
                this$0 = NavigateActivity.this;
                super();
            }
            }, 3000L);
            return;
        }
        if (integer.intValue() == 8 && addressitem.getMeetingId() != null)
        {
            natMgr.AutoCompletePlaceClicked(addressitem.VanueID, null, null, addressitem.getMeetingId(), true, null, true, 0, null, null);
            return;
        }
        if (integer != null && integer.intValue() == 11)
        {
            if (addressitem.getIsValidate().booleanValue())
            {
                Analytics.log("DRIVE_TO_CALENDAR", "VAUE", addressitem.getMeetingId());
                Analytics.log("DRIVE_TYPE", "VAUE", "CALENDAR");
                nm.navigate(addressitem, this);
                return;
            }
            Analytics.log("CALENDAR_EVENT_PRESSED", "VAUE", addressitem.getMeetingId());
            if (natMgr.getAutoCompleteFeatures() != 0)
            {
                mCalendarAI = addressitem;
                searchBox.setText(addressitem.getAddress());
                mPlaceAdapter.setIsCalendar(true);
                searchBox.requestFocus();
                searchBox.setSelection(addressitem.getAddress().length());
                ((InputMethodManager)getSystemService("input_method")).showSoftInput(searchBox, 2);
                return;
            } else
            {
                Intent intent = new Intent(this, com/waze/navigate/AddFavoriteActivity);
                intent.putExtra("SearchStr", addressitem.getAddress());
                intent.putExtra("AddressType", integer);
                intent.putExtra("AddressItem", addressitem);
                startActivityForResult(intent, 1002);
                return;
            }
        } else
        {
            addressitem.setCategory(Integer.valueOf(2));
            nm.navigate(addressitem, this, false, true);
            return;
        }
    }

    public void categoriesClicked(View view)
    {
        natMgr.OpenSearchIntent();
        Log.d("WAZE", "categories pressed");
        if (nativeManager.isGasUpdateable())
        {
            Analytics.log("MAIN_MENU_CLICK", "VAUE", "GAS");
            Intent intent = new Intent(this, com/waze/navigate/SearchActivity);
            intent.putExtra("SearchCategory", "GAS_STATION");
            intent.putExtra("SearchMode", 2);
            startActivityForResult(intent, 1);
            return;
        } else
        {
            Analytics.log("MAIN_MENU_CLICK", "VAUE", "CATEGORIES");
            startActivityForResult(new Intent(this, com/waze/navigate/CategoriesActivity), 1);
            return;
        }
    }

    public void favoritesClicked(View view)
    {
        Log.d("WAZE", "favs pressed");
        startActivityForResult(new Intent(this, com/waze/navigate/FavoritesActivity), 1);
    }

    public void moreActionClicked(View view)
    {
        AddressItem addressitem = (AddressItem)view.getTag(0x7f09002c);
        if (addressitem.getType().intValue() == 13)
        {
            natMgr.setSharedAddressItem(addressitem);
            nm.InitMeeting(addressitem.getMeetingId());
            return;
        }
        if (addressitem != null && addressitem.getType().intValue() == 8 && addressitem.getMeetingId() != null)
        {
            nm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
            mLastAddressItem = addressitem;
            natMgr.AutoCompletePlaceClicked(addressitem.VanueID, null, null, addressitem.getMeetingId(), false, null, true, 0, null, null);
            return;
        }
        Intent intent = new Intent(this, com/waze/navigate/AddressPreviewActivity);
        intent.putExtra("AddressItem", addressitem);
        if (addressitem != null && addressitem.VanueID != null && !addressitem.VanueID.isEmpty())
        {
            intent.putExtra("preview_load_venue", true);
        }
        startActivityForResult(intent, 1);
    }

    protected boolean myHandleMessage(Message message)
    {
        if (message.what == DriveToNativeManager.UH_SEARCH_ADD_RESULT)
        {
            nm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
            natMgr.CloseProgressPopup();
            AddressItem addressitem = (AddressItem)message.getData().getSerializable("address_item");
            if (mLastAddressItem != null)
            {
                addressitem.setType(mLastAddressItem.getType());
                addressitem.setId(mLastAddressItem.getId());
                mLastAddressItem = null;
            }
            Intent intent = new Intent(this, com/waze/navigate/AddressPreviewActivity);
            intent.putExtra("AddressItem", addressitem);
            startActivityForResult(intent, 1);
            return true;
        } else
        {
            return super.myHandleMessage(message);
        }
    }

    public void navigateCallback(int i)
    {
        Log.d("WAZE", (new StringBuilder("navigateCallback:rc=")).append(i).toString());
        setResult(-1);
        finish();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        Log.d("WAZE", (new StringBuilder("Navigate onActRes requestCode=")).append(i).append(" resultCode=").append(j).append(" Intent=").append(intent).toString());
        if (i != 1234) goto _L2; else goto _L1
_L1:
        if (j == -1)
        {
            java.util.ArrayList arraylist = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            if (arraylist.size() > 0)
            {
                Analytics.log("VOICE_SEARCH_RECOGNIZED");
                searchBox.setText((CharSequence)arraylist.get(0));
                ((InputMethodManager)getSystemService("input_method")).showSoftInput(searchBox, 2);
            }
        }
_L4:
        super.onActivityResult(i, j, intent);
        return;
_L2:
        if (j == 1)
        {
            setResult(1);
            finish();
        } else
        if (j == 32783)
        {
            nm.getTopTenFavorites(getTopTenFavoritesCallback);
        } else
        if (j != 0)
        {
            setResult(j, intent);
            finish();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onBackPressed()
    {
        nm.cancelStopPointAndRemoveDeparturePoi();
        super.onBackPressed();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        initLayout();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        nm = DriveToNativeManager.getInstance();
        natMgr = NativeManager.getInstance();
        natMgr.OpenSearchIntent();
        natMgr.OpenRoutingIntent();
        isStopPoint = getIntent().getBooleanExtra("stopPoint", false);
        isKeyboardVisible = getIntent().getBooleanExtra("keyboard", false);
        isStopPointMessage = getIntent().getBooleanExtra("stopPointMessage", false);
        speechString = getIntent().getStringExtra("Speech");
        mCalendarAI = null;
        initLayout();
        if (speechString != null)
        {
            searchBox.setText(speechString);
        }
        if (isKeyboardVisible || speechString != null)
        {
            Analytics.log("SEARCH_BAR");
            nm.setSearchMode(true);
            ((InputMethodManager)getSystemService("input_method")).toggleSoftInput(2, 0);
        } else
        {
            Analytics.log("SEARCH_MENU");
            nm.setSearchMode(false);
        }
        if (nativeManager.isNavigatingNTV())
        {
            nm.setStopPoint(true);
        } else
        {
            nm.setStopPoint(isStopPoint);
        }
        if (isStopPointMessage)
        {
            MsgBox.getInstance().OpenMessageBoxTimeoutCb(nativeManager.getLanguageString(DisplayStrings.DS_STOP_POINT), nativeManager.getLanguageString(DisplayStrings.DS_YOU_SHOULD_NOW_SEARCH_FOR_AND_SELECT_YOUR_STOP_POINT), 8, 0L);
        }
        if (getIntent().hasExtra("AddressItem"))
        {
            mCalendarAI = (AddressItem)getIntent().getExtras().getSerializable("AddressItem");
            ((TitleBar)findViewById(0x7f090058)).setTitle(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_VERIFY_ADDRESS));
        }
    }

    protected void onDestroy()
    {
        nm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        nm.setStopPoint(false);
        super.onDestroy();
    }

    public void onPause()
    {
        super.onPause();
        nm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(searchBox.getWindowToken(), 0);
    }

    public void pickupClicked(View view)
    {
        if (!MyWazeNativeManager.getInstance().getFacebookLoggedInNTV() && !MyWazeNativeManager.getInstance().getContactLoggedInNTV())
        {
            startActivityForResult(new Intent(this, com/waze/navigate/social/AddFriendsActivity), 1);
            return;
        } else
        {
            startActivityForResult(new Intent(this, com/waze/navigate/social/MyFriendsActivity), 1);
            return;
        }
    }

    public void searchClicked(View view)
    {
        Log.d("WAZE", "Search pressed");
        String s = nativeManager.isCategorySearchNTV(searchBox.getText().toString());
        if (searchBox.getText().toString().startsWith("#test#"))
        {
            nm.search(s, null, searchBox.getText().toString(), true, null);
            finish();
            return;
        }
        Intent intent = new Intent(this, com/waze/navigate/SearchActivity);
        if (s == null || s.equals(""))
        {
            intent.putExtra("SearchStr", searchBox.getText().toString());
        } else
        {
            intent.putExtra("SearchCategory", s);
        }
        if (mCalendarAI != null)
        {
            intent.putExtra("SearchMode", 9);
            intent.putExtra("AddressItem", mCalendarAI);
        } else
        {
            intent.putExtra("SearchMode", 2);
        }
        startActivityForResult(intent, 1);
    }

    public void searchClickedByAutoComplete(View view)
    {
        Log.d("WAZE", "Search pressed");
        Intent intent = new Intent(this, com/waze/navigate/SearchActivity);
        String s = nativeManager.isCategorySearchNTV(searchBox.getText().toString());
        if (s == null || s.equals(""))
        {
            intent.putExtra("SearchStr", searchBox.getText().toString());
        } else
        {
            intent.putExtra("SearchCategory", s);
        }
        if (mCalendarAI != null)
        {
            intent.putExtra("SearchMode", 9);
            intent.putExtra("AddressItem", mCalendarAI);
        } else
        {
            intent.putExtra("SearchMode", 2);
        }
        startActivityForResult(intent, 1);
    }

    public void speechRecognitionClicked(View view)
    {
        Log.d("WAZE", "SR pressed");
        Analytics.log("VOICE_SEARCH");
        try
        {
            Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
            intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
            startActivityForResult(intent, 1234);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }








}
