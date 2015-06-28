// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.os.Handler;
import android.text.Editable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.autocomplete.PlaceData;
import com.waze.autocomplete.PlacesAutoCompleteAdapter;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.navigate:
//            NavigateActivity, AddressItem, DriveToNativeManager

class this._cls0
    implements android.widget.lickListener
{

    final NavigateActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        PlaceData placedata = NavigateActivity.access$4(NavigateActivity.this).getItemByPosition(i);
        if (mCalendarAI != null && placedata.mLocalIndex != -4)
        {
            Analytics.log("CALENDAR_AUTOCOMPLETE_CLICK", "ID|VALUE", (new StringBuilder(String.valueOf(mCalendarAI.getMeetingId()))).append("|").append(searchBox.getText().toString()).toString());
        }
        if (placedata.mVenueId == null || placedata.mVenueId.equals(""))
        {
            if (placedata.mLocalIndex == -4)
            {
                NavigateActivity.access$5(NavigateActivity.this).CalendarAddressRemove(mCalendarAI.getMeetingId());
                mCalendarAI = null;
                NavigateActivity.access$6(NavigateActivity.this).OpenProgressIconPopup(NavigateActivity.access$6(NavigateActivity.this).getLanguageString(DisplayStrings.DS_EVENT_REMOVED), "sign_up_big_v");
                (new Handler()).postDelayed(new Runnable() {

                    final NavigateActivity._cls3 this$1;

                    public void run()
                    {
                        searchBox.setText("");
                        NavigateActivity.access$4(this$0).setIsCalendar(false);
                        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(searchBox.getWindowToken(), 0);
                        NavigateActivity.access$5(this$0).getTopTenFavorites(getTopTenFavoritesCallback);
                        NavigateActivity.access$6(this$0).CloseProgressPopup();
                    }

            
            {
                this$1 = NavigateActivity._cls3.this;
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
            if (NavigateActivity.access$1(NavigateActivity.this)[placedata.mLocalIndex].getType().intValue() == 8)
            {
                Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "HISTORY");
            } else
            {
                Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "FAVORITE");
            }
            if (mCalendarAI != null)
            {
                NavigateActivity.access$7(NavigateActivity.this, NavigateActivity.access$1(NavigateActivity.this)[placedata.mLocalIndex]);
                return;
            } else
            {
                NavigateActivity.access$5(NavigateActivity.this).navigate(NavigateActivity.access$1(NavigateActivity.this)[placedata.mLocalIndex], NavigateActivity.this);
                return;
            }
        }
        if (placedata.mIsAds)
        {
            Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "ADVERTISEMENT");
            NavigateActivity.access$6(NavigateActivity.this).AutoCompleteAdsClicked(placedata.mVenueId, NavigateActivity.access$4(NavigateActivity.this).mInput, i);
        } else
        {
            Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "PLACE");
        }
        PlaceClickedByAutoComplete(view, placedata);
    }


    _cls1.this._cls1()
    {
        this$0 = NavigateActivity.this;
        super();
    }
}
