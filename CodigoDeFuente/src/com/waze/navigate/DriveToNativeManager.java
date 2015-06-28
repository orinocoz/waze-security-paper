// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.format.DateFormat;
import android.util.Log;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.autocomplete.PlaceData;
import com.waze.ifs.async.RunnableCallback;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.ifs.async.UpdateHandlers;
import com.waze.ifs.ui.ActivityBase;
import com.waze.main.navigate.Category;
import com.waze.main.navigate.EventOnRoute;
import com.waze.main.navigate.LocationData;
import com.waze.main.navigate.MajorEventOnRoute;
import com.waze.mywaze.social.FacebookEventActivity;
import com.waze.navigate.social.AddFriendsData;
import com.waze.navigate.social.EndDriveData;
import com.waze.navigate.social.FriendsListData;
import com.waze.navigate.social.IdsMatchData;
import com.waze.reports.VenueData;
import com.waze.routes.AlternativeRoute;
import com.waze.user.FriendUserData;
import com.waze.utils.TicketRoller;
import com.waze.widget.WazeAppWidgetLog;
import com.waze.widget.WazeAppWidgetProvider;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.navigate:
//            AddressItem, Product, SortPreferences, NearbyStation, 
//            SearchEngine, DriveToGetSearchEnginesCallback, DriveToNavigateCallback, DriveToSearchCallback, 
//            NavigateActivity, AddFavoriteActivity, SearchActivity, AddressPreviewActivity, 
//            CategoriesActivity

public class DriveToNativeManager
{
    public static interface AddFriendsListener
    {

        public abstract void onComplete(AddFriendsData addfriendsdata);
    }

    public static class AddressItemAppData
    {

        public boolean bNearingMinimized;

        public AddressItemAppData()
        {
        }
    }

    public static interface AlternativeRoutesListener
    {

        public abstract void onComplete(AlternativeRoute aalternativeroute[]);
    }

    public static interface AutoCompleteAdsResult
    {

        public abstract void onComplete(PlaceData placedata);
    }

    public static interface CategoriesListener
    {

        public abstract void onComplete(Category acategory[]);
    }

    public static interface DriveToGetAddressItemArrayCallback
    {

        public abstract void getAddressItemArrayCallback(AddressItem aaddressitem[]);
    }

    public static interface EndDriveListener
    {

        public abstract void onComplete(EndDriveData enddrivedata);
    }

    public static interface EventsOnRouteListener
    {

        public abstract void onComplete(EventOnRoute aeventonroute[]);
    }

    public static interface FriendsListListener
    {

        public abstract void onComplete(FriendsListData friendslistdata);
    }

    public static interface IdsMatchListener
    {

        public abstract void onComplete(IdsMatchData idsmatchdata);
    }

    public static interface LocationDataListener
    {

        public abstract void onComplete(LocationData locationdata);
    }

    public static interface MajorEventsOnRouteListener
    {

        public abstract void onComplete(MajorEventOnRoute amajoreventonroute[]);
    }

    public static interface NearbyStationsListener
    {

        public abstract void onComplete(NearbyStation anearbystation[]);
    }

    public static interface NumberOfFriendsDrivingListener
    {

        public abstract void onComplete(int i);
    }

    public static interface ObjectListener
    {

        public abstract void onComplete(Object obj);
    }

    public static interface PersonMappingListener
    {

        public abstract void onComplete(ArrayList arraylist);
    }

    public static interface PriceFormatListener
    {

        public abstract void onComplete(String s);
    }

    public static interface ProductListener
    {

        public abstract void onComplete(Product product);
    }

    public static interface SortPreferencesListener
    {

        public abstract void onComplete(SortPreferences sortpreferences);
    }


    public static final int UH_ETA;
    public static final int UH_MAP_CENTER;
    public static final int UH_SEARCH_ADD_RESULT;
    public static final int UH_SEARCH_FAIL;
    public static final int UH_SEARCH_FINALIZE;
    public static final String VALUES[] = {
        "Online Meeting", "Online", "Skype", "Lync", "Lync Meeting", "Conference Call", "Conference line", "Conf call", "Conf. call", "Webex", 
        "WebEx Online", "Call", "Call in", "RAN-WAZE", "Dial in", "Dial-in", "Phone", "Phone call", "Telephone", "Gotomeeting", 
        "Google Hangout", "Hangout", "Jewish holidays", "Virtual", "I will call you", "Jewish Religious Holidays", "Email", "GVC", "Remote", "Everywhere", 
        "Anywhere", "Teleconference", "Virtual", "AT&T Connect", "\u05D7\u05D2\u05D9\u05DD \u05D3\u05EA\u05D9\u05D9\u05DD \u05D9\u05D4\u05D5\u05D3\u05D9\u05D9\u05DD", "\u05D7\u05D2\u05D9\u05DD \u05D3\u05EA\u05D9\u05D9\u05DD \u05D9\u05D4**\u05D9\u05D9\u05DD", "\u05D7\u05D2\u05D9\u05DD \u05D3\u05EA\u05D9\u05D9\u05DD \u05DE\u05D5\u05E1\u05DC\u05DE\u05D9\u05D9\u05DD", "\u05D7\u05D2\u05D9\u05DD \u05D3\u05EA\u05D9\u05D9\u05DD \u05E0\u05D5\u05E6\u05E8\u05D9\u05D9\u05DD", "\u05D8\u05DC\u05E4\u05D5\u05E0\u05D9", "\u05D8\u05DC\u05E4\u05D5\u05E0\u05D9\u05EA", 
        "\u05E9\u05D9\u05D7\u05D4 \u05D8\u05DC\u05E4\u05D5\u05E0\u05D9\u05EA"
    };
    private static DriveToNativeManager instance = null;
    private static boolean ready = false;
    private UpdateHandlers handlers;
    AddressItem mAddress;

    private DriveToNativeManager()
    {
        init();
        Log.d("WAZE", (new StringBuilder("ctr running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    private native void CalendarAddressRemoveNTV(String s);

    private native boolean CalendarAddressShouldIgnoreNTV(String s, String s1, String s2);

    private native void CalendarAddressVerifiedByIndexNTV(int i, String s);

    private native void CalendarAddressVerifiedNTV(String s, int i, int j, String s1, String s2);

    private native void DriveEventNTV(String s, boolean flag);

    private native PlaceData GetAutoCompleteAds(String s);

    private native String GetPriceFormatNTV(String s);

    private native void InitMeetingNTV(String s);

    private boolean IsIgnoreCalenderLocation(String s)
    {
        int i = 0;
        do
        {
            if (i >= VALUES.length)
            {
                return false;
            }
            if (s.contains(VALUES[i].toLowerCase()))
            {
                return true;
            }
            i++;
        } while (true);
    }

    private native int MaxCalendarEntriesNTV();

    private native int UpdatePriceFormatNTV();

    private native void VerifyEventAndDriveByIndexNTV(int i, String s, String s1);

    private native void VerifyEventByIndexNTV(int i, String s, String s1);

    private native void VerifyEventWithNoAddressNTV(String s);

    private void addCalendarEvent(final String calendarId, final long startTime, final long endTime, final boolean isAllDay, final boolean isRecurring, 
            final String locationStr, final String name, final String displayName)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$calendarId;
            private final String val$displayName;
            private final long val$endTime;
            private final boolean val$isAllDay;
            private final boolean val$isRecurring;
            private final String val$locationStr;
            private final String val$name;
            private final long val$startTime;

            public void run()
            {
                addCalendarEventNTV(calendarId, startTime, endTime, isAllDay, isRecurring, locationStr, name, displayName);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                calendarId = s;
                startTime = l;
                endTime = l1;
                isAllDay = flag;
                isRecurring = flag1;
                locationStr = s1;
                name = s2;
                displayName = s3;
                super();
            }
        });
    }

    private native void addCalendarEventNTV(String s, long l, long l1, boolean flag, boolean flag1, 
            String s1, String s2, String s3);

    private native void cancelStopPointNTV();

    private native void centerMapInAddressOptionsViewNTV(int i, int j, boolean flag, boolean flag1);

    private native void closeAlternativeRoutesViewNTV();

    private native void eraseAddressItemNTV(String s, int i, String s1);

    public static void finalizeSearch(String s)
    {
        Log.d("WAZE", (new StringBuilder("searchResults finalize. Active provider: ")).append(s).toString());
        Bundle bundle = new Bundle();
        bundle.putString("provider", s);
        instance.handlers.sendUpdateMessage(UH_SEARCH_FINALIZE, bundle);
    }

    private native AddFriendsData getAddFriendsDataNTV();

    private native AddressItemAppData getAddressItemAppDataNTV(String s);

    private native AlternativeRoute[] getAlternativeRoutesNTV();

    private native AddressItem[] getAutoCompleteNTV();

    private String getCalendarUriBase()
    {
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            return "content://com.android.calendar/events";
        } else
        {
            return "content://calendar/events";
        }
    }

    private native Category[] getCategoriesNTV();

    private native EndDriveData getEndDriveDataNTV();

    private native EventOnRoute[] getEventsOnRouteNTV();

    private native FriendsListData getFacebookFriendsListDataNTV();

    private native AddressItem[] getFavoritesNTV(boolean flag);

    private native EndDriveData getFriendsDrivingDataNTV(String s);

    private native FriendsListData getFriendsListDataNTV();

    private native AddressItem[] getFriendsSharedPlacesNTV(int i);

    private native AddressItem[] getHistoryNTV();

    private native AddressItem[] getHomeNTV();

    private native IdsMatchData getIdsMatchDataNTV();

    public static DriveToNativeManager getInstance()
    {
        if (instance == null)
        {
            instance = new DriveToNativeManager();
        }
        return instance;
    }

    private native LocationData getLocationDataNTV(int i, int j, int k, String s);

    private native MajorEventOnRoute[] getMajorEventsOnRouteNTV();

    private native com.waze.reports.EditMapLocationFragment.Position getMapCenterNTV();

    private native FriendsListData getMySharedDriveUsersNTV();

    private native NearbyStation[] getNearbyStationsNTV();

    private native int getNumberOfFriendsDrivingNTV();

    private native Product getProductNTV(int i);

    private native FriendsListData getRemovedFriendsDataNTV();

    private native SearchEngine[] getSearchEnginesNTV(String s);

    private native void getSearchResultsEtaNTV(String s);

    private native FriendsListData getShareFriendsListDataNTV(int i, int j);

    private native SortPreferences getSortPreferencesNTV(String s);

    private native AddressItem[] getTopTenFavoritesNTV();

    private native FriendsListData getUsersWithDriveSharingNTV(boolean flag, boolean flag1, boolean flag2);

    private native AddressItem[] getWorkNTV();

    private native void highlightRouteNTV(int i);

    private native void highlightRouteNTV(String s);

    private void init()
    {
        Log.d("WAZE", (new StringBuilder("init driveto ready=")).append(ready).toString());
        if (!ready)
        {
            Log.d("WAZE", (new StringBuilder("initNativeLayerNTV ")).append(Thread.currentThread().getId()).toString());
            initNativeLayerNTV();
            handlers = new UpdateHandlers();
            ready = true;
        }
    }

    private native void initNativeLayerNTV();

    private native boolean isDayModeNTV();

    public static boolean isSameDay(Calendar calendar, Calendar calendar1)
    {
        if (calendar == null || calendar1 == null)
        {
            throw new IllegalArgumentException("The dates must not be null");
        }
        return calendar.get(0) == calendar1.get(0) && calendar.get(1) == calendar1.get(1) && calendar.get(6) == calendar1.get(6);
    }

    public static boolean isSameDay(Date date, Date date1)
    {
        if (date == null || date1 == null)
        {
            throw new IllegalArgumentException("The dates must not be null");
        } else
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            Calendar calendar1 = Calendar.getInstance();
            calendar1.setTime(date1);
            return isSameDay(calendar, calendar1);
        }
    }

    public static boolean isToday(Date date)
    {
        return isSameDay(date, Calendar.getInstance().getTime());
    }

    private boolean loadEvent(Cursor cursor)
    {
        String s = cursor.getString(0);
        String s1 = cursor.getString(1);
        long l = cursor.getLong(2);
        long l1 = cursor.getLong(3);
        boolean flag;
        String s2;
        if (cursor.getString(4).equals("0"))
        {
            flag = false;
        } else
        {
            flag = true;
        }
        s2 = cursor.getString(5);
        if (s2 == null || s2.length() == 0 || s2.toLowerCase().startsWith("http") || s2.matches("[0-9]+") || IsIgnoreCalenderLocation(s2.toLowerCase()))
        {
            return false;
        }
        String s3 = s2.replaceAll("[\\t\\n\\r]+", " ");
        boolean flag1;
        if (cursor.getString(6) != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            s = (new StringBuilder(String.valueOf(s1.hashCode()))).append("_").append(s3.hashCode()).toString();
        }
        System.out.println((new StringBuilder("Id: ")).append(s).append(" Display Name: ").append(s1).append(" Location: ").append(s3).append(" AllDay: ").append(flag).append(" IsRecurring: ").append(flag1).append(" Start: ").append(new Date(l)).append(" End: ").append(new Date(l1)).toString());
        if (CalendarAddressShouldIgnore(s, s1, s3))
        {
            System.out.println((new StringBuilder("Calendar Id: ")).append(s).append(" Is in Ignore list (Display Name: ").append(s1).append(" Location: ").append(s3).append(")").toString());
            return false;
        }
        Date date = new Date(l);
        String s4;
        if (isToday(date))
        {
            SimpleDateFormat simpledateformat;
            if (DateFormat.is24HourFormat(AppService.getAppContext()))
            {
                simpledateformat = new SimpleDateFormat("HH:mm");
            } else
            {
                simpledateformat = new SimpleDateFormat("h:mm a");
            }
            s4 = (new StringBuilder(String.valueOf(simpledateformat.format(date)))).append(" - ").append(s1).toString();
        } else
        {
            s4 = (new StringBuilder(String.valueOf(DateFormat.getDateFormat(AppService.getAppContext()).format(date)))).append(" - ").append(s1).toString();
        }
        addCalendarEvent(s, l / 1000L, l1 / 1000L, flag, flag1, s3, s1, s4);
        return true;
    }

    private native void logAnalyticsOnGoNTV(int i);

    private void navigateAnalytics(final AddressItem aiToGo)
    {
        if (aiToGo.getCategory().intValue() == 1)
        {
            instance.getTopTenFavorites(new DriveToGetAddressItemArrayCallback() {

                final DriveToNativeManager this$0;
                private final AddressItem val$aiToGo;

                public void getAddressItemArrayCallback(AddressItem aaddressitem[])
                {
                    int i = 0;
                    if (aaddressitem == null) goto _L2; else goto _L1
_L1:
                    if (i < aaddressitem.length) goto _L3; else goto _L2
_L2:
                    Analytics.log("NAVIGATE", "SOURCE", "FAVORITE");
                    return;
_L3:
                    if (aaddressitem[i].getId().equals(aiToGo.getId()))
                    {
                        Analytics.log("NAVIGATE", "SOURCE", "TOP_FAVORITE");
                        return;
                    }
                    i++;
                    if (true) goto _L1; else goto _L4
_L4:
                }

            
            {
                this$0 = DriveToNativeManager.this;
                aiToGo = addressitem;
                super();
            }
            });
        }
        if (aiToGo.getCategory().intValue() == 3)
        {
            Analytics.log("NAVIGATE", "SOURCE", "SEARCH");
        }
        if (aiToGo.getCategory().intValue() == 3)
        {
            Analytics.log("NAVIGATE", "SOURCE", "SEARCH");
        }
        if (aiToGo.getCategory().intValue() == 3 && aiToGo.getCategoryDesc() != null)
        {
            Analytics.log("NAVIGATE", "SOURCE", "CATEGORIES");
        }
        if (aiToGo.getCategory().intValue() == 2)
        {
            Analytics.log("NAVIGATE", "SOURCE", "HISTORY");
        }
    }

    private native void navigateNTV(int i, int j, String s, String s1, int k, String s2, String s3, 
            String s4, String s5, String s6, String s7, String s8, String s9);

    private native void navigate_waypoint_clearNTV();

    private native void notifyAddressItemClickedNTV(int i);

    private native void notifyAddressItemNavigateNTV(int i);

    private native void notifyAddressItemShownInNavigateNTV(int i);

    private native void notifyAddressItemShownNTV(int i, boolean flag);

    private native void onAlternativeRoutesClosedNTV();

    private native void openPrivateMessageNTV(int i);

    public static void openSearchActivity(String s, boolean flag)
    {
        Log.d("WAZE", (new StringBuilder("openSearchActivity running in thread ")).append(Thread.currentThread().getId()).toString());
        AppService.Post(new RunnableCallback(flag) {

            private final String val$address;
            private final boolean val$autoNav;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("openSearchActivity callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("openSearchActivity event running in thread ")).append(Thread.currentThread().getId()).toString());
                Log.d("WAZE", (new StringBuilder("address=")).append(address).append(" autoNav=").append(autoNav).toString());
                Intent intent = new Intent(AppService.getActiveActivity(), com/waze/navigate/SearchActivity);
                intent.putExtra("SearchStr", address);
                if (autoNav)
                {
                    intent.putExtra("SearchMode", 5);
                } else
                {
                    intent.putExtra("SearchMode", 2);
                }
                AppService.getActiveActivity().startActivityForResult(intent, 1);
            }

            
            {
                address = s;
                autoNav = flag;
                super(final_executor);
            }
        });
    }

    private native void removeDeparturePoiNTV();

    private native void requestRouteNTV(boolean flag);

    private native void requestStopPointNTV(int i);

    public static void searchFail(String s, String s1, boolean flag)
    {
        Log.d("WAZE", (new StringBuilder("searchResults failure. Provider: ")).append(s).append(". Error: ").append(s1).toString());
        Bundle bundle = new Bundle();
        bundle.putString("provider", s);
        bundle.putString("errMsg", s1);
        bundle.putBoolean("canRetry", flag);
        instance.handlers.sendUpdateMessage(UH_SEARCH_FAIL, bundle);
    }

    private native int searchNTV(boolean flag, String s, String s1, String s2);

    private native void searchNearbyStationsNTV();

    public static void searchResults(String s, AddressItem addressitem)
    {
        Bundle bundle = new Bundle();
        bundle.putString("provider", s);
        bundle.putSerializable("address_item", addressitem);
        instance.handlers.sendUpdateMessage(UH_SEARCH_ADD_RESULT, bundle);
    }

    private native void selectAlternativeRouteNTV(int i);

    private native void setAddressOptionsViewNTV();

    private native void setAlternativeRoutesViewNTV();

    private native void setMapPreviewNTV(int i, int j);

    private native void setMeetingNTV(String s);

    private native void setProductPricesNTV(int i, float af[], int ai[], int j);

    private native void setRoadClosureMapNTV();

    private native void setScreenFreezeNTV(boolean flag);

    private native void setSearchMapViewNTV();

    private native void setSearchModeNTV(boolean flag);

    private native void setSearchResultPinsNTV(String s, String s1);

    private native void setShareMapModeNTV(boolean flag);

    private native void setStartPointNTV();

    private native void setStopPointNTV(boolean flag);

    private native void setStopPointPreviewNTV(int i, int j, int k);

    private native void showOnMapNTV(int i, int j);

    private String storeAddressItemInt(AddressItem addressitem)
    {
        int i;
        int j;
        String s;
        String s1;
        Log.d("WAZE", (new StringBuilder("store ai event running in thread ")).append(Thread.currentThread().getId()).toString());
        Log.d("WAZE", (new StringBuilder("ai= ")).append(addressitem).toString());
        i = addressitem.getLocationX().intValue();
        j = addressitem.getLocationY().intValue();
        s = "";
        s1 = "";
        if (addressitem.venueData != null)
        {
            if (addressitem.venueData.context != null)
            {
                s = addressitem.venueData.context;
            }
            if (addressitem.venueData.RoutingContext != null)
            {
                s1 = addressitem.venueData.RoutingContext;
            }
        }
        if (!addressitem.hasIcon()) goto _L2; else goto _L1
_L1:
        String s3 = addressitem.getIcon();
_L4:
        String s4 = storeAddressItemNTV(addressitem.getId(), addressitem.getCategory().intValue(), addressitem.getCity(), addressitem.getStreet(), addressitem.getHouse(), addressitem.getState(), addressitem.getTitle(), i, j, addressitem.VanueID, s, s1, s3);
        Log.d("WAZE", (new StringBuilder("after storeAddressItemNTV in thread ")).append(Thread.currentThread().getId()).toString());
        return s4;
_L2:
        String s2 = addressitem.mPreviewIcon;
        s3 = null;
        if (s2 != null)
        {
            boolean flag = addressitem.mPreviewIcon.isEmpty();
            s3 = null;
            if (!flag)
            {
                s3 = addressitem.mPreviewIcon;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private native String storeAddressItemNTV(String s, int i, String s1, String s2, String s3, String s4, String s5, 
            int j, int k, String s6, String s7, String s8, String s9);

    private native void unsetAddressOptionsViewNTV();

    private native void unsetMapPreviewNTV();

    private native void unsetMeetingNTV();

    private native void unsetRoadClosureViewNTV();

    private native void unsetSearchMapViewNTV();

    private native void unsetStopPointPreviewNTV();

    private native void updateAddressItemAppDataNTV(String s, AddressItemAppData addressitemappdata);

    public static void updateEta(String s, String s1, String s2)
    {
        Bundle bundle = new Bundle();
        bundle.putString("provider", s);
        bundle.putString("distance", s1);
        bundle.putString("id", s2);
        instance.handlers.sendUpdateMessage(UH_ETA, bundle);
    }

    private native void zoomOnMapNTV(int i, int j, int k);

    public void CalendarAddressRemove(final String MeetingId)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$MeetingId;

            public void run()
            {
                CalendarAddressRemoveNTV(MeetingId);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                MeetingId = s;
                super();
            }
        });
    }

    public boolean CalendarAddressShouldIgnore(String s, String s1, String s2)
    {
        return CalendarAddressShouldIgnoreNTV(s, s1, s2);
    }

    public void CalendarAddressVerified(final String Address, final int Lon, final int Lat, final String MeetingId, final String venue)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$Address;
            private final int val$Lat;
            private final int val$Lon;
            private final String val$MeetingId;
            private final String val$venue;

            public void run()
            {
                CalendarAddressVerifiedNTV(Address, Lat, Lon, MeetingId, venue);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                Address = s;
                Lat = i;
                Lon = j;
                MeetingId = s1;
                venue = s2;
                super();
            }
        });
    }

    public void CalendarAddressVerifiedByIndex(final int index, final String MeetingId)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$MeetingId;
            private final int val$index;

            public void run()
            {
                CalendarAddressVerifiedByIndexNTV(index, MeetingId);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                index = i;
                MeetingId = s;
                super();
            }
        });
    }

    public void InitMeeting(final String sMeetingID)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$sMeetingID;

            public void run()
            {
                InitMeetingNTV(sMeetingID);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                sMeetingID = s;
                super();
            }
        });
    }

    public void OpenAlternativeRoutes()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity == null)
        {
            return;
        } else
        {
            mainactivity.startRoutesActivity();
            return;
        }
    }

    public void OpenCalendarVerifyScreen(final AddressItem ai)
    {
        AppService.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final AddressItem val$ai;

            public void run()
            {
                if (NativeManager.getInstance().getAutoCompleteFeatures() != 0)
                {
                    Intent intent = new Intent(AppService.getActiveActivity(), com/waze/navigate/NavigateActivity);
                    intent.putExtra("AddressItem", ai);
                    AppService.getActiveActivity().startActivityForResult(intent, 1);
                    return;
                } else
                {
                    Intent intent1 = new Intent(AppService.getActiveActivity(), com/waze/navigate/AddFavoriteActivity);
                    intent1.putExtra("SearchStr", ai.getAddress());
                    intent1.putExtra("AddressType", 11);
                    intent1.putExtra("AddressItem", ai);
                    AppService.getActiveActivity().startActivityForResult(intent1, 1);
                    return;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                ai = addressitem;
                super();
            }
        });
    }

    public void OpenFriendOnTheWayPopUp(final FriendUserData friendLocation, final int iTimeOut)
    {
        MainActivity mainactivity = AppService.getMainActivity();
        final LayoutManager layoutMgr;
        if (mainactivity != null)
        {
            if ((layoutMgr = mainactivity.getLayoutMgr()) != null)
            {
                AppService.Post(new Runnable() {

                    final DriveToNativeManager this$0;
                    private final FriendUserData val$friendLocation;
                    private final int val$iTimeOut;
                    private final LayoutManager val$layoutMgr;

                    public void run()
                    {
                        layoutMgr.showFriendOnTheWayPopup(friendLocation, iTimeOut);
                    }

            
            {
                this$0 = DriveToNativeManager.this;
                layoutMgr = layoutmanager;
                friendLocation = frienduserdata;
                iTimeOut = i;
                super();
            }
                });
                return;
            }
        }
    }

    public void OpenVerifyEvent(final AddressItem ad)
    {
        AppService.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final AddressItem val$ad;

            public void run()
            {
                Intent intent = new Intent(AppService.getActiveActivity(), com/waze/mywaze/social/FacebookEventActivity);
                intent.putExtra("AddressItem", ad);
                AppService.getActiveActivity().startActivityForResult(intent, 1);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                ad = addressitem;
                super();
            }
        });
    }

    public void StoreAddressItem(final AddressItem ai)
    {
        Log.d("WAZE", (new StringBuilder("store ai running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            final DriveToNativeManager this$0;
            private final AddressItem val$ai;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("store ai callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                storeAddressItemInt(ai);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                ai = addressitem;
                super();
            }
        });
    }

    public void VerifyEventByIndex(final int index, final String MeetingId, final String Id, final Boolean bToDrive)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$Id;
            private final String val$MeetingId;
            private final Boolean val$bToDrive;
            private final int val$index;

            public void run()
            {
                if (bToDrive.booleanValue())
                {
                    VerifyEventAndDriveByIndexNTV(index, MeetingId, Id);
                    return;
                } else
                {
                    VerifyEventByIndexNTV(index, MeetingId, Id);
                    return;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                bToDrive = boolean1;
                index = i;
                MeetingId = s;
                Id = s1;
                super();
            }
        });
    }

    public void VerifyEventWithNoAddress(final String MeetingId)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$MeetingId;

            public void run()
            {
                VerifyEventWithNoAddressNTV(MeetingId);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                MeetingId = s;
                super();
            }
        });
    }

    public void cancelStopPoint()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                cancelStopPointNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void cancelStopPointAndRemoveDeparturePoi()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                setStopPointNTV(false);
                removeDeparturePoiNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void centerMapInAddressOptionsView(final int index, final int longitude, final int latitude, final boolean setScreen, final String icon)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$icon;
            private final int val$index;
            private final int val$latitude;
            private final int val$longitude;
            private final boolean val$setScreen;

            public void run()
            {
                if (isStopPointSearchNTV() && setScreen)
                {
                    setStopPointPreviewNTV(index, longitude, latitude);
                    return;
                }
                DriveToNativeManager drivetonativemanager = DriveToNativeManager.this;
                int i = longitude;
                int j = latitude;
                boolean flag = setScreen;
                boolean flag1;
                if (icon != null)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                drivetonativemanager.centerMapInAddressOptionsViewNTV(i, j, flag, flag1);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                setScreen = flag;
                index = i;
                longitude = j;
                latitude = k;
                icon = s;
                super();
            }
        });
    }

    public void drive(final String MeetingId, final boolean bIsShare)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$MeetingId;
            private final boolean val$bIsShare;

            public void run()
            {
                DriveEventNTV(MeetingId, bIsShare);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                MeetingId = s;
                bIsShare = flag;
                super();
            }
        });
    }

    public void eraseAddressItem(final AddressItem ai)
    {
        Log.d("WAZE", (new StringBuilder("erase ai running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            final DriveToNativeManager this$0;
            private final AddressItem val$ai;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("erase ai callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("erase ai event running in thread ")).append(Thread.currentThread().getId()).toString());
                Log.d("WAZE", (new StringBuilder("ai= ")).append(ai).toString());
                eraseAddressItemNTV(ai.getId(), ai.getCategory().intValue(), ai.getTitle());
                Log.d("WAZE", (new StringBuilder("erase eraseAddressItemNTV in thread ")).append(Thread.currentThread().getId()).toString());
            }

            
            {
                this$0 = DriveToNativeManager.this;
                ai = addressitem;
                super();
            }
        });
    }

    public int fetchCalendarEvents()
    {
        Cursor cursor;
        int i;
        int j;
        android.net.Uri.Builder builder = Uri.parse("content://com.android.calendar/instances/when").buildUpon();
        long l = (new Date()).getTime();
        ContentUris.appendId(builder, l - 0x36ee80L);
        ContentUris.appendId(builder, l + 0x5265c00L * (long)3);
        cursor = AppService.getAppContext().getContentResolver().query(builder.build(), new String[] {
            "_id", "title", "begin", "end", "allDay", "eventLocation", "rrule"
        }, null, null, "startDay ASC, startMinute ASC");
        if (cursor == null)
        {
            return 0;
        }
        cursor.moveToFirst();
        Analytics.log("CALENDAR_READ", "COUNT", cursor.getCount());
        i = cursor.getCount();
        j = 0;
        if (i <= 0) goto _L2; else goto _L1
_L1:
        int k;
        k = MaxCalendarEntriesNTV();
        boolean flag = loadEvent(cursor);
        j = 0;
        if (flag)
        {
            j = 0 + 1;
        }
_L5:
        if (cursor.moveToNext() && j < k) goto _L3; else goto _L2
_L2:
        return j;
_L3:
        if (loadEvent(cursor))
        {
            j++;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void forceWidgetRefresh()
    {
        if (WazeAppWidgetProvider.isWidgetEnabled(AppService.getAppContext()))
        {
            AppService.Post(new Runnable() {

                final DriveToNativeManager this$0;

                public void run()
                {
                    try
                    {
                        WazeAppWidgetLog.d("in DriveToNativeManager :: forceWidgetRefresh");
                        WazeAppWidgetProvider.getControlIntent(AppService.getActiveActivity(), "AppWidget Action Command Force Refresh").send();
                        return;
                    }
                    catch (Exception exception)
                    {
                        Log.e("WAZE", (new StringBuilder("failed firing widget refresh. exception:")).append(exception.getMessage()).append(" trace:").append(exception.getStackTrace()).toString());
                    }
                }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
            });
        }
    }

    public void getAddFriendsData(final AddFriendsListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private AddFriendsData data;
            final DriveToNativeManager this$0;
            private final AddFriendsListener val$listener;

            public void callback()
            {
                listener.onComplete(data);
            }

            public void event()
            {
                try
                {
                    data = getAddFriendsDataNTV();
                    return;
                }
                catch (Exception exception)
                {
                    data = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = addfriendslistener;
                super();
            }
        });
    }

    public void getAddressItemAppData(final String id, final ObjectListener l)
    {
        if (id == null)
        {
            l.onComplete(null);
        }
        NativeManager.Post(new RunnableUICallback() {

            private AddressItemAppData data;
            final DriveToNativeManager this$0;
            private final String val$id;
            private final ObjectListener val$l;

            public void callback()
            {
                l.onComplete(data);
            }

            public void event()
            {
                try
                {
                    data = getAddressItemAppDataNTV(id);
                    return;
                }
                catch (Exception exception)
                {
                    data = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                id = s;
                l = objectlistener;
                super();
            }
        });
    }

    public void getAlternativeRoutes(final AlternativeRoutesListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private AlternativeRoute routes[];
            final DriveToNativeManager this$0;
            private final AlternativeRoutesListener val$listener;

            public void callback()
            {
                listener.onComplete(routes);
            }

            public void event()
            {
                routes = getAlternativeRoutesNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = alternativerouteslistener;
                super();
            }
        });
    }

    public void getAutoCompleteAdsResult(final AutoCompleteAdsResult listener, final String query)
    {
        NativeManager.Post(new RunnableUICallback() {

            private PlaceData AdsData;
            final DriveToNativeManager this$0;
            private final AutoCompleteAdsResult val$listener;
            private final String val$query;

            public void callback()
            {
                listener.onComplete(AdsData);
            }

            public void event()
            {
                AdsData = GetAutoCompleteAds(query);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                query = s;
                listener = autocompleteadsresult;
                super();
            }
        });
    }

    public PlaceData getAutoCompleteAdsResultNative(String s)
    {
        return GetAutoCompleteAds(s);
    }

    public void getAutoCompleteData(final DriveToGetAddressItemArrayCallback callback)
    {
        Log.d("WAZE", (new StringBuilder("getHistory running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            AddressItem ai[];
            final DriveToNativeManager this$0;
            private final DriveToGetAddressItemArrayCallback val$callback;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("getHistory callback running in thread ")).append(Thread.currentThread().getId()).toString());
                callback.getAddressItemArrayCallback(ai);
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("getHistory event running in thread ")).append(Thread.currentThread().getId()).toString());
                ai = getAutoCompleteNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                callback = drivetogetaddressitemarraycallback;
                super();
                ai = null;
            }
        });
    }

    public void getCategories(final CategoriesListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private Category categories[];
            final DriveToNativeManager this$0;
            private final CategoriesListener val$listener;

            public void callback()
            {
                listener.onComplete(categories);
            }

            public void event()
            {
                try
                {
                    categories = getCategoriesNTV();
                    return;
                }
                catch (Exception exception)
                {
                    categories = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = categorieslistener;
                super();
            }
        });
    }

    public native String getDestinationIdNTV();

    public void getEndDriveData(final EndDriveListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private EndDriveData data;
            final DriveToNativeManager this$0;
            private final EndDriveListener val$listener;

            public void callback()
            {
                listener.onComplete(data);
            }

            public void event()
            {
                try
                {
                    data = getEndDriveDataNTV();
                    return;
                }
                catch (Exception exception)
                {
                    data = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = enddrivelistener;
                super();
            }
        });
    }

    public void getEventsOnRoute(final EventsOnRouteListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private EventOnRoute events[];
            final DriveToNativeManager this$0;
            private final EventsOnRouteListener val$listener;

            public void callback()
            {
                listener.onComplete(events);
            }

            public void event()
            {
                try
                {
                    events = getEventsOnRouteNTV();
                    return;
                }
                catch (Exception exception)
                {
                    events = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = eventsonroutelistener;
                super();
            }
        });
    }

    public void getFacebookFriendsList(final FriendsListListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private FriendsListData data;
            final DriveToNativeManager this$0;
            private final FriendsListListener val$listener;

            public void callback()
            {
                listener.onComplete(data);
            }

            public void event()
            {
                try
                {
                    data = getFacebookFriendsListDataNTV();
                    return;
                }
                catch (Exception exception)
                {
                    data = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = friendslistlistener;
                super();
            }
        });
    }

    public void getFavorites(final DriveToGetAddressItemArrayCallback callback, final boolean bIsAddFavouriteOptional)
    {
        Log.d("WAZE", (new StringBuilder("getFavorites running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            AddressItem ai[];
            final DriveToNativeManager this$0;
            private final boolean val$bIsAddFavouriteOptional;
            private final DriveToGetAddressItemArrayCallback val$callback;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("getFavorites callback running in thread ")).append(Thread.currentThread().getId()).toString());
                callback.getAddressItemArrayCallback(ai);
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("getFavorites event running in thread ")).append(Thread.currentThread().getId()).toString());
                ai = getFavoritesNTV(bIsAddFavouriteOptional);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                bIsAddFavouriteOptional = flag;
                callback = drivetogetaddressitemarraycallback;
                super();
                ai = null;
            }
        });
    }

    public native String getFriendImageNTV(int i, int j);

    public void getFriendsDriveData(final EndDriveListener listener, final String sMeetingID)
    {
        NativeManager.Post(new RunnableUICallback() {

            private EndDriveData data;
            final DriveToNativeManager this$0;
            private final EndDriveListener val$listener;
            private final String val$sMeetingID;

            public void callback()
            {
                listener.onComplete(data);
            }

            public void event()
            {
                try
                {
                    data = getFriendsDrivingDataNTV(sMeetingID);
                    return;
                }
                catch (Exception exception)
                {
                    data = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                sMeetingID = s;
                listener = enddrivelistener;
                super();
            }
        });
    }

    public void getFriendsListData(final FriendsListListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private FriendsListData data;
            final DriveToNativeManager this$0;
            private final FriendsListListener val$listener;

            public void callback()
            {
                listener.onComplete(data);
            }

            public void event()
            {
                try
                {
                    data = getFriendsListDataNTV();
                    return;
                }
                catch (Exception exception)
                {
                    data = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = friendslistlistener;
                super();
            }
        });
    }

    public void getFriendsSharedPlaces(final int friendId, final DriveToGetAddressItemArrayCallback callback)
    {
        Log.d("WAZE", (new StringBuilder("getFriendsSharedPlaces running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            AddressItem ai[];
            final DriveToNativeManager this$0;
            private final DriveToGetAddressItemArrayCallback val$callback;
            private final int val$friendId;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("getFriendsSharedPlaces callback running in thread ")).append(Thread.currentThread().getId()).toString());
                callback.getAddressItemArrayCallback(ai);
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("getFriendsSharedPlaces event running in thread ")).append(Thread.currentThread().getId()).toString());
                ai = getFriendsSharedPlacesNTV(friendId);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                friendId = i;
                callback = drivetogetaddressitemarraycallback;
                super();
                ai = null;
            }
        });
    }

    public void getHistory(final DriveToGetAddressItemArrayCallback callback)
    {
        Log.d("WAZE", (new StringBuilder("getHistory running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            AddressItem ai[];
            final DriveToNativeManager this$0;
            private final DriveToGetAddressItemArrayCallback val$callback;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("getHistory callback running in thread ")).append(Thread.currentThread().getId()).toString());
                callback.getAddressItemArrayCallback(ai);
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("getHistory event running in thread ")).append(Thread.currentThread().getId()).toString());
                ai = getHistoryNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                callback = drivetogetaddressitemarraycallback;
                super();
                ai = null;
            }
        });
    }

    public void getHome(final DriveToGetAddressItemArrayCallback callback)
    {
        Log.d("WAZE", (new StringBuilder("getFavorites running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            AddressItem ai[];
            final DriveToNativeManager this$0;
            private final DriveToGetAddressItemArrayCallback val$callback;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("getFavorites callback running in thread ")).append(Thread.currentThread().getId()).toString());
                callback.getAddressItemArrayCallback(ai);
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("getFavorites event running in thread ")).append(Thread.currentThread().getId()).toString());
                ai = getHomeNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                callback = drivetogetaddressitemarraycallback;
                super();
                ai = null;
            }
        });
    }

    public void getIdsMatchData(final IdsMatchListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private IdsMatchData data;
            final DriveToNativeManager this$0;
            private final IdsMatchListener val$listener;

            public void callback()
            {
                listener.onComplete(data);
            }

            public void event()
            {
                try
                {
                    data = getIdsMatchDataNTV();
                    return;
                }
                catch (Exception exception)
                {
                    data = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = idsmatchlistener;
                super();
            }
        });
    }

    public void getLocationData(final int type, final Integer locationX, final Integer locationY, final LocationDataListener listener, final String Index)
    {
        NativeManager.Post(new RunnableUICallback() {

            private LocationData locationData;
            final DriveToNativeManager this$0;
            private final String val$Index;
            private final LocationDataListener val$listener;
            private final Integer val$locationX;
            private final Integer val$locationY;
            private final int val$type;

            public void callback()
            {
                listener.onComplete(locationData);
            }

            public void event()
            {
                try
                {
                    locationData = getLocationDataNTV(type, locationX.intValue(), locationY.intValue(), Index);
                    return;
                }
                catch (Exception exception)
                {
                    locationData = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                type = i;
                locationX = integer;
                locationY = integer1;
                Index = s;
                listener = locationdatalistener;
                super();
            }
        });
    }

    public void getMajorEventsOnRoute(final MajorEventsOnRouteListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private MajorEventOnRoute events[];
            final DriveToNativeManager this$0;
            private final MajorEventsOnRouteListener val$listener;

            public void callback()
            {
                listener.onComplete(events);
            }

            public void event()
            {
                try
                {
                    events = getMajorEventsOnRouteNTV();
                    return;
                }
                catch (Exception exception)
                {
                    events = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = majoreventsonroutelistener;
                super();
            }
        });
    }

    public void getMapCenter()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                com.waze.reports.EditMapLocationFragment.Position position = getMapCenterNTV();
                Bundle bundle = new Bundle();
                bundle.putSerializable("position", position);
                DriveToNativeManager.instance.handlers.sendUpdateMessage(DriveToNativeManager.UH_MAP_CENTER, bundle);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public native int getMyShareDriveUsersCountNTV();

    public void getMySharedDriveUsers(final FriendsListListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private FriendsListData data;
            final DriveToNativeManager this$0;
            private final FriendsListListener val$listener;

            public void callback()
            {
                listener.onComplete(data);
            }

            public void event()
            {
                try
                {
                    data = getMySharedDriveUsersNTV();
                    return;
                }
                catch (Exception exception)
                {
                    data = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = friendslistlistener;
                super();
            }
        });
    }

    public void getNearbyStations(final NearbyStationsListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private NearbyStation nearbyStations[];
            final DriveToNativeManager this$0;
            private final NearbyStationsListener val$listener;

            public void callback()
            {
                listener.onComplete(nearbyStations);
            }

            public void event()
            {
                try
                {
                    nearbyStations = getNearbyStationsNTV();
                    return;
                }
                catch (Exception exception)
                {
                    nearbyStations = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = nearbystationslistener;
                super();
            }
        });
    }

    public void getNumberOfFriendsDriving(final NumberOfFriendsDrivingListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private int nFriends;
            final DriveToNativeManager this$0;
            private final NumberOfFriendsDrivingListener val$listener;

            public void callback()
            {
                listener.onComplete(nFriends);
            }

            public void event()
            {
                try
                {
                    nFriends = getNumberOfFriendsDrivingNTV();
                    return;
                }
                catch (Exception exception)
                {
                    nFriends = -1;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = numberoffriendsdrivinglistener;
                super();
            }
        });
    }

    public void getPriceFormat(final PriceFormatListener listener, final String prodId)
    {
        NativeManager.Post(new RunnableUICallback() {

            private String priceFormat;
            final DriveToNativeManager this$0;
            private final PriceFormatListener val$listener;
            private final String val$prodId;

            public void callback()
            {
                listener.onComplete(priceFormat);
            }

            public void event()
            {
                priceFormat = GetPriceFormatNTV(prodId);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                prodId = s;
                listener = priceformatlistener;
                super();
            }
        });
    }

    public void getProduct(final int index, final ProductListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private Product product;
            final DriveToNativeManager this$0;
            private final int val$index;
            private final ProductListener val$listener;

            public void callback()
            {
                listener.onComplete(product);
            }

            public void event()
            {
                try
                {
                    product = getProductNTV(index);
                    return;
                }
                catch (Exception exception)
                {
                    product = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                index = i;
                listener = productlistener;
                super();
            }
        });
    }

    public void getRemovedFriendsData(final FriendsListListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private FriendsListData data;
            final DriveToNativeManager this$0;
            private final FriendsListListener val$listener;

            public void callback()
            {
                listener.onComplete(data);
            }

            public void event()
            {
                try
                {
                    data = getRemovedFriendsDataNTV();
                    return;
                }
                catch (Exception exception)
                {
                    data = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                listener = friendslistlistener;
                super();
            }
        });
    }

    public void getSearchEngines(final String category, final DriveToGetSearchEnginesCallback callback)
    {
        Log.d("WAZE", (new StringBuilder("getSearchEngines running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            List enginesList;
            final DriveToNativeManager this$0;
            private final DriveToGetSearchEnginesCallback val$callback;
            private final String val$category;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("getSearchEngines callback running in thread ")).append(Thread.currentThread().getId()).toString());
                callback.getSearchEnginesCallback(enginesList);
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("getSearchEngines event running in thread ")).append(Thread.currentThread().getId()).toString());
                SearchEngine asearchengine[] = getSearchEnginesNTV(category);
                int i = 0;
                do
                {
                    if (i >= asearchengine.length)
                    {
                        return;
                    }
                    enginesList.add((i % 2) * enginesList.size(), asearchengine[i]);
                    i++;
                } while (true);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                category = s;
                callback = drivetogetsearchenginescallback;
                super();
                enginesList = new LinkedList();
            }
        });
    }

    public void getSearchResultsEta(final String provider)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$provider;

            public void run()
            {
                getSearchResultsEtaNTV(provider);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                provider = s;
                super();
            }
        });
    }

    public void getShareFriendsListData(final int locX, final int locY, final FriendsListListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private FriendsListData data;
            final DriveToNativeManager this$0;
            private final FriendsListListener val$listener;
            private final int val$locX;
            private final int val$locY;

            public void callback()
            {
                listener.onComplete(data);
            }

            public void event()
            {
                try
                {
                    data = getShareFriendsListDataNTV(locX, locY);
                    return;
                }
                catch (Exception exception)
                {
                    data = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                locX = i;
                locY = j;
                listener = friendslistlistener;
                super();
            }
        });
    }

    public void getSortPreferences(final String category, final SortPreferencesListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private SortPreferences sortPreferences;
            final DriveToNativeManager this$0;
            private final String val$category;
            private final SortPreferencesListener val$listener;

            public void callback()
            {
                listener.onComplete(sortPreferences);
            }

            public void event()
            {
                sortPreferences = getSortPreferencesNTV(category);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                category = s;
                listener = sortpreferenceslistener;
                super();
            }
        });
    }

    public void getTopTenFavorites(final DriveToGetAddressItemArrayCallback callback)
    {
        Log.d("WAZE", (new StringBuilder("getTopTenFavorites running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            AddressItem ai[];
            final DriveToNativeManager this$0;
            private final DriveToGetAddressItemArrayCallback val$callback;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("getTopTenFavorites callback running in thread ")).append(Thread.currentThread().getId()).toString());
                callback.getAddressItemArrayCallback(ai);
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("getTopTenFavorites event running in thread ")).append(Thread.currentThread().getId()).toString());
                ai = getTopTenFavoritesNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                callback = drivetogetaddressitemarraycallback;
                super();
                ai = null;
            }
        });
    }

    public void getUsersWithDriveSharing(final boolean byMe, final boolean withMe, final boolean watchingMe, final FriendsListListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private FriendsListData data;
            final DriveToNativeManager this$0;
            private final boolean val$byMe;
            private final FriendsListListener val$listener;
            private final boolean val$watchingMe;
            private final boolean val$withMe;

            public void callback()
            {
                listener.onComplete(data);
            }

            public void event()
            {
                try
                {
                    data = getUsersWithDriveSharingNTV(byMe, withMe, watchingMe);
                    return;
                }
                catch (Exception exception)
                {
                    data = null;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                byMe = flag;
                withMe = flag1;
                watchingMe = flag2;
                listener = friendslistlistener;
                super();
            }
        });
    }

    public void getWork(final DriveToGetAddressItemArrayCallback callback)
    {
        Log.d("WAZE", (new StringBuilder("getFavorites running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            AddressItem ai[];
            final DriveToNativeManager this$0;
            private final DriveToGetAddressItemArrayCallback val$callback;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("getFavorites callback running in thread ")).append(Thread.currentThread().getId()).toString());
                callback.getAddressItemArrayCallback(ai);
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("getFavorites event running in thread ")).append(Thread.currentThread().getId()).toString());
                ai = getWorkNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                callback = drivetogetaddressitemarraycallback;
                super();
                ai = null;
            }
        });
    }

    public void highlightRoute(final int route)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$route;

            public void run()
            {
                highlightRouteNTV(route);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                route = i;
                super();
            }
        });
    }

    public boolean isDayMode()
    {
        return isDayModeNTV();
    }

    public native boolean isDrivingHomeNTV();

    public native boolean isStopPointSearchNTV();

    public void navigate(AddressItem addressitem, DriveToNavigateCallback drivetonavigatecallback)
    {
        navigate(addressitem, drivetonavigatecallback, false, false);
    }

    public void navigate(final AddressItem ai, DriveToNavigateCallback drivetonavigatecallback, final boolean onGoAnalytics, final boolean storeAddress)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final AddressItem val$ai;
            private final boolean val$onGoAnalytics;
            private final boolean val$storeAddress;

            public void run()
            {
                Log.d("WAZE", (new StringBuilder("navigate event running in thread ")).append(Thread.currentThread().getId()).toString());
                Log.d("WAZE", (new StringBuilder("ai=")).append(ai).toString());
                if (storeAddress)
                {
                    String s2 = storeAddressItemInt(ai);
                    if (s2 != null)
                    {
                        ai.setId(s2);
                    }
                }
                String s = "";
                if (ai.venueData != null && ai.venueData.RoutingContext != null)
                {
                    s = ai.venueData.RoutingContext;
                }
                if (onGoAnalytics)
                {
                    logAnalyticsOnGoNTV(ai.index);
                }
                String s1 = ai.getTitle();
                if (ai.getCategory().intValue() == 7)
                {
                    s1 = ai.getSecondaryTitle();
                }
                if (s1 == null || s1.isEmpty())
                {
                    s1 = ai.getAddress();
                }
                navigateNTV(ai.getLocationX().intValue(), ai.getLocationY().intValue(), s1, ai.getDealId(), ai.advPointId, ai.VanueID, ai.getId(), ai.getCountry(), ai.getState(), ai.getCity(), ai.getStreet(), ai.getHouse(), s);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                ai = addressitem;
                storeAddress = flag;
                onGoAnalytics = flag1;
                super();
            }
        });
        navigateAnalytics(ai);
    }

    public void notifyAddressItemClicked(final int index)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$index;

            public void run()
            {
                notifyAddressItemClickedNTV(index);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                index = i;
                super();
            }
        });
    }

    public void notifyAddressItemNavigate(final int index)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$index;

            public void run()
            {
                notifyAddressItemNavigateNTV(index);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                index = i;
                super();
            }
        });
    }

    public void notifyAddressItemShown(final int index, final boolean isItemSeenAlready)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$index;
            private final boolean val$isItemSeenAlready;

            public void run()
            {
                notifyAddressItemShownNTV(index, isItemSeenAlready);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                index = i;
                isItemSeenAlready = flag;
                super();
            }
        });
    }

    public void notifyAddressItemShownBeforeNavigate(final int index)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$index;

            public void run()
            {
                notifyAddressItemShownInNavigateNTV(index);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                index = i;
                super();
            }
        });
    }

    public void onAlternativeRoutesClosed()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                onAlternativeRoutesClosedNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void onVenuePinWaitForVenuePreview()
    {
        setUpdateHandler(UH_SEARCH_ADD_RESULT, new Handler() {

            final DriveToNativeManager this$0;

            public void handleMessage(Message message)
            {
                AddressItem addressitem;
                if (message.what != DriveToNativeManager.UH_SEARCH_ADD_RESULT)
                {
                    break MISSING_BLOCK_LABEL_75;
                }
                unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, this);
                addressitem = (AddressItem)message.getData().getSerializable("address_item");
                if (addressitem != null) goto _L2; else goto _L1
_L1:
                MainActivity mainactivity;
                return;
_L2:
                if ((mainactivity = AppService.getMainActivity()) == null) goto _L1; else goto _L3
_L3:
                Intent intent = new Intent(mainactivity, com/waze/navigate/AddressPreviewActivity);
                intent.putExtra("AddressItem", addressitem);
                mainactivity.startActivity(intent);
                return;
                super.handleMessage(message);
                return;
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void openPrivateMessage(final int userId)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$userId;

            public void run()
            {
                openPrivateMessageNTV(userId);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                userId = i;
                super();
            }
        });
    }

    public void refreshAddressItemsIconsOnSearchActivity(final int finalPosition, final String finalIcon)
    {
        AppService.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$finalIcon;
            private final int val$finalPosition;

            public void run()
            {
                ActivityBase activitybase = AppService.getActiveActivity();
                if (activitybase instanceof SearchActivity)
                {
                    Log.d("WAZE", (new StringBuilder("refreshAddressItemsIconsOnSearchActivity callback running in thread ")).append(Thread.currentThread().getId()).toString());
                    ((SearchActivity)activitybase).refreshAdressItemsIcons(finalPosition, finalIcon);
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                finalPosition = i;
                finalIcon = s;
                super();
            }
        });
    }

    public void refreshIconsOnCategoriesActivity()
    {
        AppService.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                ActivityBase activitybase = AppService.getActiveActivity();
                if (activitybase instanceof CategoriesActivity)
                {
                    Log.d("WAZE", (new StringBuilder("refreshIconsOnCategoriesActivity callback running in thread ")).append(Thread.currentThread().getId()).toString());
                    ((CategoriesActivity)activitybase).refreshCategoriesIcons();
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void refreshSearchEnginesIconsOnSearchActivity(final String finalSearchEngineName)
    {
        AppService.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$finalSearchEngineName;

            public void run()
            {
                ActivityBase activitybase = AppService.getActiveActivity();
                if (activitybase instanceof SearchActivity)
                {
                    Log.d("WAZE", (new StringBuilder("refreshSearchEnginesIconsOnSearchActivity callback running in thread ")).append(Thread.currentThread().getId()).toString());
                    ((SearchActivity)activitybase).refreshSearchEngines(finalSearchEngineName);
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                finalSearchEngineName = s;
                super();
            }
        });
    }

    public void requestRoute(final boolean isTripServerResults)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final boolean val$isTripServerResults;

            public void run()
            {
                requestRouteNTV(isTripServerResults);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                isTripServerResults = flag;
                super();
            }
        });
    }

    public void requestStopPoint(final int index)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$index;

            public void run()
            {
                requestStopPointNTV(index);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                index = i;
                super();
            }
        });
    }

    public void search(final String category, final String provider, final String searchStr, final boolean initialSearch, final DriveToSearchCallback callback)
    {
        Log.d("WAZE", (new StringBuilder("search running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            int rc;
            final DriveToNativeManager this$0;
            private final DriveToSearchCallback val$callback;
            private final String val$category;
            private final boolean val$initialSearch;
            private final String val$provider;
            private final String val$searchStr;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("search callback running in thread ")).append(Thread.currentThread().getId()).toString());
                if (callback != null)
                {
                    callback.searchCallback(rc);
                }
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("search event running in thread ")).append(Thread.currentThread().getId()).toString());
                rc = searchNTV(initialSearch, category, provider, searchStr);
                Log.d("WAZE", (new StringBuilder("search rc=")).append(rc).toString());
            }

            
            {
                this$0 = DriveToNativeManager.this;
                initialSearch = flag;
                category = s;
                provider = s1;
                searchStr = s2;
                callback = drivetosearchcallback;
                super();
            }
        });
    }

    public void searchNearbyStations()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                searchNearbyStationsNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void selectAlternativeRoute(final int position)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$position;

            public void run()
            {
                selectAlternativeRouteNTV(position);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                position = i;
                super();
            }
        });
    }

    public void setAddressOptionsView(int i, final int longitude, final int latitude, final boolean icon)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final boolean val$icon;
            private final int val$latitude;
            private final int val$longitude;

            public void run()
            {
                setAddressOptionsViewNTV();
                centerMapInAddressOptionsViewNTV(longitude, latitude, true, icon);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                longitude = i;
                latitude = j;
                icon = flag;
                super();
            }
        });
    }

    public void setAlternativeRoutesView()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                setAlternativeRoutesViewNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void setMapMode(final boolean bIsMapUpdates)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final boolean val$bIsMapUpdates;

            public void run()
            {
                setShareMapModeNTV(bIsMapUpdates);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                bIsMapUpdates = flag;
                super();
            }
        });
    }

    public void setMapPreview(final int longitude, final int latitude)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$latitude;
            private final int val$longitude;

            public void run()
            {
                setMapPreviewNTV(longitude, latitude);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                longitude = i;
                latitude = j;
                super();
            }
        });
    }

    public void setMeeting(final String sMeetingID)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$sMeetingID;

            public void run()
            {
                setMeetingNTV(sMeetingID);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                sMeetingID = s;
                super();
            }
        });
    }

    public void setProductPrices(final int index, final float updatedPrices[], final int updated[], final int size)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$index;
            private final int val$size;
            private final int val$updated[];
            private final float val$updatedPrices[];

            public void run()
            {
                setProductPricesNTV(index, updatedPrices, updated, size);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                index = i;
                updatedPrices = af;
                updated = ai;
                size = j;
                super();
            }
        });
    }

    public void setRoadClosureMap()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                setRoadClosureMapNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void setScreenFreeze(final boolean bFreeze)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final boolean val$bFreeze;

            public void run()
            {
                setScreenFreezeNTV(bFreeze);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                bFreeze = flag;
                super();
            }
        });
    }

    public void setSearchMapView()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                setSearchMapViewNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void setSearchMode(final boolean bIsSearchBar)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final boolean val$bIsSearchBar;

            public void run()
            {
                setSearchModeNTV(bIsSearchBar);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                bIsSearchBar = flag;
                super();
            }
        });
    }

    public void setSearchResultPins(final String category, final String provider)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final String val$category;
            private final String val$provider;

            public void run()
            {
                setSearchResultPinsNTV(category, provider);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                category = s;
                provider = s1;
                super();
            }
        });
    }

    public void setStartPoint()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                setStartPointNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void setStopPoint(final boolean value)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final boolean val$value;

            public void run()
            {
                setStopPointNTV(value);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                value = flag;
                super();
            }
        });
    }

    public void setStopPointPreview(final int index, final int longitude, final int latitude, String s)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$index;
            private final int val$latitude;
            private final int val$longitude;

            public void run()
            {
                setStopPointPreviewNTV(index, longitude, latitude);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                index = i;
                longitude = j;
                latitude = k;
                super();
            }
        });
    }

    public void setUpdateHandler(int i, Handler handler)
    {
        handlers.setUpdateHandler(i, handler);
    }

    public void showOnMap(final int longitude, final int latitude)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$latitude;
            private final int val$longitude;

            public void run()
            {
                showOnMapNTV(longitude, latitude);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                longitude = i;
                latitude = j;
                super();
            }
        });
    }

    public void unsetAddressOptionsView()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                if (isStopPointSearchNTV())
                {
                    unsetStopPointPreviewNTV();
                    return;
                } else
                {
                    unsetAddressOptionsViewNTV();
                    return;
                }
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void unsetAlternativeRoutesView()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                closeAlternativeRoutesViewNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void unsetMapPreview()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                unsetMapPreviewNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void unsetMeeting()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                unsetMeetingNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void unsetRoadClosureView()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                unsetRoadClosureViewNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void unsetSearchMapView()
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;

            public void run()
            {
                unsetSearchMapViewNTV();
            }

            
            {
                this$0 = DriveToNativeManager.this;
                super();
            }
        });
    }

    public void unsetUpdateHandler(int i, Handler handler)
    {
        handlers.unsetUpdateHandler(i, handler);
    }

    public void updateAddressItemAppData(final String id, final AddressItemAppData appData)
    {
        if (id == null)
        {
            return;
        } else
        {
            NativeManager.Post(new Runnable() {

                final DriveToNativeManager this$0;
                private final AddressItemAppData val$appData;
                private final String val$id;

                public void run()
                {
                    updateAddressItemAppDataNTV(id, appData);
                }

            
            {
                this$0 = DriveToNativeManager.this;
                id = s;
                appData = addressitemappdata;
                super();
            }
            });
            return;
        }
    }

    public void zoomOnMap(final int longitude, final int latitude, final int scale)
    {
        NativeManager.Post(new Runnable() {

            final DriveToNativeManager this$0;
            private final int val$latitude;
            private final int val$longitude;
            private final int val$scale;

            public void run()
            {
                zoomOnMapNTV(longitude, latitude, scale);
            }

            
            {
                this$0 = DriveToNativeManager.this;
                longitude = i;
                latitude = j;
                scale = k;
                super();
            }
        });
    }

    static 
    {
        UH_ETA = TicketRoller.get(com.waze.utils.TicketRoller.Type.Handler);
        UH_SEARCH_ADD_RESULT = TicketRoller.get(com.waze.utils.TicketRoller.Type.Handler);
        UH_SEARCH_FINALIZE = TicketRoller.get(com.waze.utils.TicketRoller.Type.Handler);
        UH_SEARCH_FAIL = TicketRoller.get(com.waze.utils.TicketRoller.Type.Handler);
        UH_MAP_CENTER = TicketRoller.get(com.waze.utils.TicketRoller.Type.Handler);
    }






















































































}
