// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.autocomplete;

import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.Color;
import android.location.Location;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import com.waze.AppService;
import com.waze.NativeLocListener;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.WazeTextView;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.waze.autocomplete:
//            PlaceData

public class PlacesAutoCompleteAdapter extends ArrayAdapter
    implements Filterable
{
    public static interface IPrepareForSerchResults
    {

        public abstract void onPrepareForSerchResults();
    }

    private static class ItemHolder
    {

        View CompleteTextImage;
        ImageView RowType;
        WazeTextView SecondaryTitle;
        WazeTextView Title;
        View root;

        private ItemHolder()
        {
        }

        ItemHolder(ItemHolder itemholder)
        {
            this();
        }
    }

    private static class ItemHolder2
    {

        WebView AdsText;
        View root;

        private ItemHolder2()
        {
        }

        ItemHolder2(ItemHolder2 itemholder2)
        {
            this();
        }
    }

    final class MyWebChromeClient extends WebChromeClient
    {

        final PlacesAutoCompleteAdapter this$0;

        public boolean onJsConfirm(WebView webview, String s, String s1, JsResult jsresult)
        {
            (new android.app.AlertDialog.Builder(AppService.getActiveActivity())).setTitle("").setMessage(s1).setPositiveButton(0x104000a, jsresult. new android.content.DialogInterface.OnClickListener() {

                final MyWebChromeClient this$1;
                private final JsResult val$result;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    result.confirm();
                }

            
            {
                this$1 = final_mywebchromeclient;
                result = JsResult.this;
                super();
            }
            }).setNegativeButton(0x1040000, jsresult. new android.content.DialogInterface.OnClickListener() {

                final MyWebChromeClient this$1;
                private final JsResult val$result;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    result.cancel();
                }

            
            {
                this$1 = final_mywebchromeclient;
                result = JsResult.this;
                super();
            }
            }).create().show();
            return true;
        }

        MyWebChromeClient()
        {
            this$0 = PlacesAutoCompleteAdapter.this;
            super();
        }
    }


    private static String API_KEY = null;
    public static final int AUTOCOMPLETE_EXT_FEATURE_SHOW_EMPTY = 4096;
    public static final int AUTOCOMPLETE_FEATURE_ADS = 32;
    public static final int AUTOCOMPLETE_FEATURE_CONTACTS = 16;
    public static final int AUTOCOMPLETE_FEATURE_FAVORITES = 4;
    public static final int AUTOCOMPLETE_FEATURE_HISTORY = 8;
    public static final int AUTOCOMPLETE_FEATURE_PLACE = 2;
    public static final int AUTOCOMPLETE_FEATURE_QUERY = 1;
    public static final int AUTOCOMPLETE_FEATURE_WAZE = 64;
    private static final String LOG_TAG = "Waze";
    private static final String OUT_JSON = "/json";
    private static final String PLACES_API_BASE = "https://maps.googleapis.com/maps/api/place";
    private static final String TYPE_AUTOCOMPLETE = "/queryautocomplete";
    private static View mWeb;
    private Runnable _rqLayoutRunnable;
    private boolean bIsAutoCompleteShown;
    private PlaceData mAdsResult;
    private Context mContext;
    private int mFeatures;
    private IPrepareForSerchResults mIPrepareForSerchResults;
    public String mInput;
    private boolean mIsCalendar;
    private boolean mIsWait;
    private AddressItem mLocalData[];
    private NativeManager mNatMgr;
    private View mTextBox;
    private ArrayList resultList;

    public PlacesAutoCompleteAdapter(Context context, int i, AddressItem aaddressitem[], String s, View view, IPrepareForSerchResults iprepareforserchresults)
    {
        super(context, i);
        resultList = null;
        mAdsResult = null;
        mIsWait = false;
        bIsAutoCompleteShown = false;
        mInput = null;
        mIsCalendar = false;
        mNatMgr = NativeManager.getInstance();
        mContext = context;
        mIPrepareForSerchResults = iprepareforserchresults;
        mLocalData = aaddressitem;
        API_KEY = s;
        mTextBox = view;
        mFeatures = mNatMgr.getAutoCompleteFeatures();
        mWeb = ((LayoutInflater)mContext.getSystemService("layout_inflater")).inflate(0x7f0300d4, null);
        WebView webview = (WebView)mWeb.findViewById(0x7f0905bf);
        webview.setWebChromeClient(new MyWebChromeClient());
        webview.setWebViewClient(new WebViewClient() {

            final PlacesAutoCompleteAdapter this$0;

            public boolean shouldOverrideUrlLoading(WebView webview1, String s1)
            {
                return false;
            }

            
            {
                this$0 = PlacesAutoCompleteAdapter.this;
                super();
            }
        });
        webview.getSettings().setJavaScriptEnabled(true);
        webview.loadUrl(mNatMgr.GetWazeAutocompleteAdsUrl());
    }

    private ArrayList autocomplete(String s)
    {
        HttpURLConnection httpurlconnection;
        HttpURLConnection httpurlconnection1;
        int ai[];
        int i;
        AddressItem aaddressitem[];
        StringBuilder stringbuilder;
        StringBuilder stringbuilder1;
        Location location;
        mAdsResult = null;
        httpurlconnection = null;
        httpurlconnection1 = null;
        ai = new int[mLocalData.length];
        i = 0;
        aaddressitem = null;
        stringbuilder = new StringBuilder();
        stringbuilder1 = new StringBuilder();
        location = NativeLocListener.getInstance().getLastLocation();
        if (s.length() >= 3) goto _L2; else goto _L1
_L1:
        int k5 = 0x1000 & mFeatures;
        String s13;
        aaddressitem = null;
        i = 0;
        s13 = null;
        if (k5 == 0) goto _L3; else goto _L2
_L2:
        int k3 = 0x10 & mFeatures;
        aaddressitem = null;
        i = 0;
        httpurlconnection1 = null;
        httpurlconnection = null;
        if (k3 <= 0)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        aaddressitem = searchContacts(s);
        int l3 = 8 & mFeatures;
        i = 0;
        if (l3 <= 0) goto _L5; else goto _L4
_L4:
        int j5 = 0;
_L48:
        if (j5 < mLocalData.length) goto _L6; else goto _L5
_L5:
        int i4 = 0x20 & mFeatures;
        httpurlconnection1 = null;
        httpurlconnection = null;
        if (i4 <= 0)
        {
            break MISSING_BLOCK_LABEL_172;
        }
        mAdsResult = DriveToNativeManager.getInstance().getAutoCompleteAdsResultNative(s);
        int j4 = s.length();
        s13 = null;
        if (j4 < 3) goto _L3; else goto _L7
_L7:
        int k4 = 0x40 & mFeatures;
        s13 = null;
        if (k4 <= 0) goto _L3; else goto _L8
_L8:
        s13 = mNatMgr.GetWazeAutocompleteUrl(URLEncoder.encode(s, "utf8"));
_L3:
        StringBuilder stringbuilder2;
        stringbuilder2 = new StringBuilder("https://maps.googleapis.com/maps/api/place/queryautocomplete/json");
        stringbuilder2.append((new StringBuilder("?sensor=true&key=")).append(API_KEY).toString());
        httpurlconnection1 = null;
        httpurlconnection = null;
        if (location == null)
        {
            break MISSING_BLOCK_LABEL_304;
        }
        stringbuilder2.append((new StringBuilder("&location=")).append(location.getLatitude()).append(",").append(location.getLongitude()).toString());
        InputStreamReader inputstreamreader;
        char ac[];
        stringbuilder2.append("&radius=2000");
        stringbuilder2.append((new StringBuilder("&input=")).append(URLEncoder.encode(s, "utf8")).toString());
        URL url = new URL(stringbuilder2.toString());
        httpurlconnection = (HttpURLConnection)url.openConnection();
        inputstreamreader = new InputStreamReader(httpurlconnection.getInputStream());
        ac = new char[1024];
_L30:
        int l4 = inputstreamreader.read(ac);
        if (l4 != -1) goto _L10; else goto _L9
_L9:
        httpurlconnection1 = null;
        if (s13 == null) goto _L12; else goto _L11
_L11:
        boolean flag1 = s13.isEmpty();
        httpurlconnection1 = null;
        if (flag1) goto _L12; else goto _L13
_L13:
        InputStreamReader inputstreamreader1;
        httpurlconnection1 = (HttpURLConnection)(new URL(s13)).openConnection();
        httpurlconnection1.setRequestProperty("User-Agent", "Mozilla/5.0");
        inputstreamreader1 = new InputStreamReader(httpurlconnection1.getInputStream());
_L31:
        int i5 = inputstreamreader1.read(ac);
        if (i5 != -1) goto _L14; else goto _L12
_L12:
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        if (httpurlconnection1 != null)
        {
            httpurlconnection1.disconnect();
        }
_L32:
        JSONObject jsonobject = new JSONObject(stringbuilder.toString());
        if (stringbuilder1.length() <= 0) goto _L16; else goto _L15
_L15:
        JSONArray jsonarray1;
        JSONArray jsonarray = new JSONArray(stringbuilder1.toString());
        jsonarray1 = jsonarray.getJSONArray(1);
_L33:
        JSONArray jsonarray2 = jsonobject.getJSONArray("predictions");
        if (aaddressitem == null)
        {
            break MISSING_BLOCK_LABEL_553;
        }
        aaddressitem.length;
        ArrayList arraylist1 = new ArrayList();
        if (i <= 0) goto _L18; else goto _L17
_L17:
        int i3 = 0;
_L34:
        if (i3 < i) goto _L19; else goto _L18
_L18:
        if (aaddressitem == null) goto _L21; else goto _L20
_L20:
        int l2 = 0;
_L35:
        if (l2 < aaddressitem.length) goto _L22; else goto _L21
_L21:
        int k;
        k = jsonarray2.length();
        if (jsonarray1.length() > k)
        {
            k = jsonarray1.length();
        }
          goto _L23
_L47:
        int l;
        if (l < k) goto _L25; else goto _L24
_L24:
        if ((1 & mFeatures) <= 0) goto _L27; else goto _L26
_L26:
        PlaceData placedata = new PlaceData();
        placedata.mIsAds = false;
        placedata.mLocalIndex = -3;
        placedata.mTitle = (new StringBuilder(String.valueOf(mNatMgr.getLanguageString(DisplayStrings.DS_MORE_RESULT_FOR)))).append(" ").append(mInput).toString();
        placedata.mReference = null;
        placedata.mSecondaryTitle = null;
        placedata.mVenueId = null;
        arraylist1.add(placedata);
        ArrayList arraylist = arraylist1;
_L45:
        return arraylist;
_L6:
        if (!mLocalData[j5].getTitle().toLowerCase().contains(s.toLowerCase()) && !mLocalData[j5].getAddress().toLowerCase().contains(s.toLowerCase()) && !mLocalData[j5].getSecondaryTitle().toLowerCase().contains(s.toLowerCase())) goto _L29; else goto _L28
_L28:
        ai[i] = j5;
        i++;
          goto _L29
_L10:
        stringbuilder.append(ac, 0, l4);
          goto _L30
        MalformedURLException malformedurlexception;
        malformedurlexception;
        int j3;
        Log.e("Waze", "Error processing Places API URL", malformedurlexception);
        j3 = mFeatures;
        break MISSING_BLOCK_LABEL_847;
_L14:
        stringbuilder1.append(ac, 0, i5);
          goto _L31
        ioexception;
        int j;
        Log.e("Waze", "Error connecting to Places API", ioexception);
        j = mFeatures;
        break MISSING_BLOCK_LABEL_907;
        IOException ioexception;
        if ((j3 & 0x1000) == 0)
        {
            if (httpurlconnection != null)
            {
                httpurlconnection.disconnect();
            }
            if (httpurlconnection1 != null)
            {
                httpurlconnection1.disconnect();
            }
            return null;
        }
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        if (httpurlconnection1 != null)
        {
            httpurlconnection1.disconnect();
        }
          goto _L32
        if ((j & 0x1000) == 0)
        {
            if (httpurlconnection != null)
            {
                httpurlconnection.disconnect();
            }
            if (httpurlconnection1 != null)
            {
                httpurlconnection1.disconnect();
            }
            return null;
        }
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        if (httpurlconnection1 != null)
        {
            httpurlconnection1.disconnect();
        }
          goto _L32
        Exception exception;
        exception;
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        if (httpurlconnection1 != null)
        {
            httpurlconnection1.disconnect();
        }
        throw exception;
_L16:
        jsonarray1 = new JSONArray();
          goto _L33
_L19:
        PlaceData placedata4 = new PlaceData();
        AddressItem addressitem = mLocalData[ai[i3]];
        placedata4.mTitle = addressitem.getTitle();
        if (placedata4.mTitle == null || placedata4.mTitle.equals(""))
        {
            placedata4.mTitle = addressitem.getAddress();
        }
        placedata4.mSecondaryTitle = "";
        if (addressitem.getSecondaryTitle() != null)
        {
            placedata4.mSecondaryTitle = addressitem.getSecondaryTitle();
        }
        placedata4.mLocalIndex = ai[i3];
        arraylist1.add(placedata4);
        i3++;
          goto _L34
_L22:
        PlaceData placedata3 = new PlaceData();
        placedata3.mTitle = aaddressitem[l2].getTitle();
        placedata3.mSecondaryTitle = "";
        if (aaddressitem[l2].getAddress() != null)
        {
            placedata3.mSecondaryTitle = aaddressitem[l2].getAddress();
        }
        placedata3.mLocalIndex = -2;
        arraylist1.add(placedata3);
        l2++;
          goto _L35
_L25:
        int i1 = -1 + jsonarray2.length();
        String s1;
        PlaceData placedata1;
        s1 = null;
        placedata1 = null;
        if (i1 < l) goto _L37; else goto _L36
_L36:
        JSONArray jsonarray3;
        placedata1 = new PlaceData();
        String s2 = jsonarray2.get(l).toString();
        placedata1.mResponse = s2;
        jsonarray3 = jsonarray2.getJSONObject(l).getJSONArray("terms");
        String s3 = jsonarray3.getJSONObject(0).getString("value");
        placedata1.mTitle = s3;
        String s4;
        int j1;
        s4 = "";
        j1 = 1;
_L42:
        int k1 = jsonarray3.length();
        if (j1 < k1) goto _L39; else goto _L38
_L38:
        placedata1.mfeature = 2;
        String s5 = s4;
        placedata1.mSecondaryTitle = s5;
        String s6 = jsonarray2.getJSONObject(l).optString("reference");
        placedata1.mReference = s6;
        String s7 = jsonarray2.getJSONObject(l).optString("id");
        placedata1.mVenueId = s7;
        s1 = jsonarray2.getJSONObject(l).optString("place_id");
        placedata1.mLocalIndex = -1;
        if (placedata1.mVenueId != null && !placedata1.mVenueId.equals("")) goto _L41; else goto _L40
_L40:
        if ((1 & mFeatures) == 0)
        {
            placedata1 = null;
        }
_L37:
        int l1 = -1 + jsonarray1.length();
        String s8;
        PlaceData placedata2;
        s8 = null;
        placedata2 = null;
        if (l1 < l)
        {
            break MISSING_BLOCK_LABEL_1714;
        }
        JSONObject jsonobject1;
        boolean flag;
        placedata2 = new PlaceData();
        JSONArray jsonarray4 = jsonarray1.getJSONArray(l);
        String s9 = jsonarray1.get(l).toString();
        placedata2.mResponse = s9;
        jsonobject1 = jsonarray4.getJSONObject(3);
        String s10 = jsonarray4.getString(0).replace("\f", "").replace("\007", "");
        placedata2.mTitle = s10;
        if (!jsonobject1.isNull("a"))
        {
            String s12 = jsonobject1.getString("a");
            placedata2.mSecondaryTitle = s12;
        }
        flag = jsonobject1.isNull("g");
        s8 = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_1596;
        }
        JSONArray jsonarray5;
        int i2;
        jsonarray5 = jsonobject1.getJSONArray("g");
        i2 = jsonarray5.length();
        s8 = null;
        if (i2 <= 0)
        {
            break MISSING_BLOCK_LABEL_1596;
        }
        s8 = jsonarray5.getString(0);
        if (!jsonobject1.isNull("x"))
        {
            int k2 = (int)(1000000D * jsonobject1.getDouble("x"));
            placedata2.mLocX = k2;
        }
        if (!jsonobject1.isNull("y"))
        {
            int j2 = (int)(1000000D * jsonobject1.getDouble("y"));
            placedata2.mLocY = j2;
        }
        placedata2.mReference = null;
        if (!jsonobject1.isNull("v"))
        {
            String s11 = jsonobject1.getString("v");
            placedata2.mVenueId = s11;
        }
        if (jsonobject1.isNull("c"))
        {
            break MISSING_BLOCK_LABEL_1842;
        }
        placedata2.mLocalIndex = -3;
_L44:
        if (s1 == null || s8 == null)
        {
            break MISSING_BLOCK_LABEL_1749;
        }
        if (!s8.isEmpty() && mNatMgr.AutocompleteIsMatchNTV(s1, s8))
        {
            placedata1 = null;
        }
        if (placedata1 == null)
        {
            break MISSING_BLOCK_LABEL_1762;
        }
        arraylist1.add(placedata1);
        if (placedata2 == null)
        {
            break MISSING_BLOCK_LABEL_1898;
        }
        arraylist1.add(placedata2);
        break MISSING_BLOCK_LABEL_1898;
_L39:
        JSONObject jsonobject2 = jsonarray3.getJSONObject(j1);
        s4 = (new StringBuilder(String.valueOf(s4))).append(jsonobject2.getString("value")).append(" ").toString();
        j1++;
          goto _L42
_L41:
        if ((2 & mFeatures) != 0) goto _L37; else goto _L43
_L43:
        placedata1 = null;
          goto _L37
        placedata2.mLocalIndex = -1;
          goto _L44
        JSONException jsonexception;
        jsonexception;
        arraylist = arraylist1;
_L46:
        Log.e("Waze", "Cannot process JSON results", jsonexception);
          goto _L45
        jsonexception;
        arraylist = null;
          goto _L46
_L27:
        arraylist = arraylist1;
          goto _L45
_L23:
        l = 0;
          goto _L47
_L29:
        j5++;
          goto _L48
        l++;
          goto _L47
    }

    public int getCount()
    {
        if (resultList == null)
        {
            return 0;
        } else
        {
            return resultList.size();
        }
    }

    public int getFeatures()
    {
        return mFeatures;
    }

    public Filter getFilter()
    {
        return new Filter() {

            final PlacesAutoCompleteAdapter this$0;

            protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
            {
                android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
                if ((0x1000 & mFeatures) != 0 && charsequence == null)
                {
                    charsequence = "";
                }
                if (charsequence != null)
                {
                    mInput = charsequence.toString();
                    ArrayList arraylist = autocomplete(charsequence.toString());
                    if (mAdsResult != null)
                    {
                        arraylist.add(0, mAdsResult);
                    }
                    if (mIsCalendar)
                    {
                        PlaceData placedata = new PlaceData();
                        placedata.mIsAds = false;
                        placedata.mLocalIndex = -4;
                        placedata.mTitle = mNatMgr.getLanguageString(DisplayStrings.DS_REMOVE_THIS_EVENT);
                        placedata.mReference = null;
                        placedata.mSecondaryTitle = null;
                        placedata.mVenueId = null;
                        arraylist.add(0, placedata);
                    }
                    if (!bIsAutoCompleteShown)
                    {
                        bIsAutoCompleteShown = true;
                        Analytics.log("AUTOCOMPLETE_SHOWN");
                    }
                    filterresults.values = arraylist;
                    filterresults.count = arraylist.size();
                }
                return filterresults;
            }

            protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
            {
                if (filterresults != null && filterresults.count > 0)
                {
                    resultList = (ArrayList)filterresults.values;
                    notifyDataSetChanged();
                    return;
                } else
                {
                    notifyDataSetInvalidated();
                    resultList = null;
                    return;
                }
            }

            
            {
                this$0 = PlacesAutoCompleteAdapter.this;
                super();
            }
        };
    }

    public volatile Object getItem(int i)
    {
        return getItem(i);
    }

    public String getItem(int i)
    {
        if (((PlaceData)resultList.get(i)).mLocalIndex == -2)
        {
            return ((PlaceData)resultList.get(i)).mSecondaryTitle;
        }
        if (((PlaceData)resultList.get(i)).mLocalIndex == -4)
        {
            return mInput;
        }
        if (((PlaceData)resultList.get(i)).mSecondaryTitle == null || ((PlaceData)resultList.get(i)).mSecondaryTitle.equals(""))
        {
            return ((PlaceData)resultList.get(i)).mTitle;
        } else
        {
            return mInput;
        }
    }

    public PlaceData getItemByPosition(int i)
    {
        return (PlaceData)resultList.get(i);
    }

    public int getItemViewType(int i)
    {
        if (-1 + resultList.size() >= i)
        {
            return !((PlaceData)resultList.get(i)).mIsAds ? 1 : 0;
        } else
        {
            return 1;
        }
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view != null) goto _L2; else goto _L1
_L1:
        LayoutInflater layoutinflater = (LayoutInflater)mContext.getSystemService("layout_inflater");
        if (!((PlaceData)resultList.get(i)).mIsAds) goto _L4; else goto _L3
_L3:
        ItemHolder itemholder;
        ItemHolder2 itemholder2;
        view = mWeb;
        itemholder = null;
        itemholder2 = null;
        if (true)
        {
            itemholder2 = new ItemHolder2(null);
            itemholder2.AdsText = (WebView)view.findViewById(0x7f0905bf);
            itemholder2.root = view.findViewById(0x7f0905b8);
            view.setTag(0x7f0300d4, itemholder2);
        }
_L12:
        if (i >= resultList.size()) goto _L6; else goto _L5
_L5:
        viewgroup.setOnTouchListener(new android.view.View.OnTouchListener() {

            final PlacesAutoCompleteAdapter this$0;

            public boolean onTouch(View view1, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0)
                {
                    ((InputMethodManager)mContext.getSystemService("input_method")).hideSoftInputFromWindow(mTextBox.getWindowToken(), 0);
                }
                return false;
            }

            
            {
                this$0 = PlacesAutoCompleteAdapter.this;
                super();
            }
        });
        if (!((PlaceData)resultList.get(i)).mIsAds) goto _L8; else goto _L7
_L7:
        if (itemholder2 == null)
        {
            itemholder2 = new ItemHolder2(null);
            itemholder2.AdsText = (WebView)mWeb.findViewById(0x7f0905bf);
            itemholder2.root = mWeb.findViewById(0x7f0905b8);
            view.setTag(0x7f0300d4, itemholder2);
        }
        final WebView adsView = itemholder2.AdsText;
        if (adsView != null)
        {
            adsView.loadUrl((new StringBuilder("javascript:window.W.adios.setQueryString(\"")).append(((PlaceData)resultList.get(i)).mAdsUrl).append("\")").toString());
            if (_rqLayoutRunnable == null)
            {
                _rqLayoutRunnable = new Runnable() {

                    final PlacesAutoCompleteAdapter this$0;
                    private final WebView val$adsView;

                    public void run()
                    {
                        _rqLayoutRunnable = null;
                        adsView.requestLayout();
                    }

            
            {
                this$0 = PlacesAutoCompleteAdapter.this;
                adsView = webview;
                super();
            }
                };
                adsView.postDelayed(_rqLayoutRunnable, 100L);
            }
            itemholder2.AdsText.setTag(0x7f0905bf, resultList.get(i));
            itemholder2.AdsText.setOnTouchListener(new android.view.View.OnTouchListener() {

                final PlacesAutoCompleteAdapter this$0;

                public boolean onTouch(View view1, MotionEvent motionevent)
                {
                    PlaceData placedata;
                    switch (motionevent.getAction())
                    {
                    default:
                        return true;

                    case 1: // '\001'
                        placedata = (PlaceData)view1.getTag(0x7f0905bf);
                        break;
                    }
                    if (placedata != null)
                    {
                        Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "ADVERTISEMENT");
                        mIPrepareForSerchResults.onPrepareForSerchResults();
                        mNatMgr.AutoCompleteAdsClicked(placedata.mVenueId, mInput, 0);
                        mNatMgr.AutoCompletePlaceClicked(placedata.mVenueId, placedata.mReference, null, null, false, mInput, false, 0, null, null);
                    }
                    return true;
                }

            
            {
                this$0 = PlacesAutoCompleteAdapter.this;
                super();
            }
            });
            if (!((PlaceData)resultList.get(i)).mWasAdReported)
            {
                ((PlaceData)resultList.get(i)).mWasAdReported = true;
                mNatMgr.AutoCompleteAdsShown(((PlaceData)resultList.get(i)).mVenueId, mInput, i);
            }
        }
_L10:
        return view;
_L4:
        view = layoutinflater.inflate(0x7f0300d3, viewgroup, false);
        itemholder = null;
        itemholder2 = null;
        if (true)
        {
            itemholder = new ItemHolder(null);
            itemholder.Title = (WazeTextView)view.findViewById(0x7f0905bc);
            itemholder.SecondaryTitle = (WazeTextView)view.findViewById(0x7f0905bd);
            itemholder.CompleteTextImage = view.findViewById(0x7f0905be);
            itemholder.RowType = (ImageView)view.findViewById(0x7f0905bb);
            itemholder.root = view.findViewById(0x7f0905b8);
            view.setTag(0x7f0300d3, itemholder);
            itemholder2 = null;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        int j = resultList.size();
        itemholder = null;
        itemholder2 = null;
        if (i < j)
        {
            if (((PlaceData)resultList.get(i)).mIsAds)
            {
                itemholder2 = (ItemHolder2)view.getTag(0x7f0300d4);
                itemholder = null;
                if (itemholder2 == null)
                {
                    itemholder2 = new ItemHolder2(null);
                    itemholder2.AdsText = (WebView)view.findViewById(0x7f0905bf);
                    itemholder2.root = view.findViewById(0x7f0905b8);
                    view.setTag(0x7f0300d4, itemholder2);
                    itemholder = null;
                }
            } else
            {
                itemholder = (ItemHolder)view.getTag(0x7f0300d3);
                itemholder2 = null;
            }
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if (itemholder == null)
        {
            view = ((LayoutInflater)mContext.getSystemService("layout_inflater")).inflate(0x7f0300d3, viewgroup, false);
            itemholder = new ItemHolder(null);
            itemholder.Title = (WazeTextView)view.findViewById(0x7f0905bc);
            itemholder.SecondaryTitle = (WazeTextView)view.findViewById(0x7f0905bd);
            itemholder.CompleteTextImage = view.findViewById(0x7f0905be);
            itemholder.RowType = (ImageView)view.findViewById(0x7f0905bb);
            itemholder.root = view.findViewById(0x7f0905b8);
            view.setTag(0x7f0300d3, itemholder);
        }
        WazeTextView wazetextview;
        String s;
        WazeTextView wazetextview1;
        String s1;
        if (((PlaceData)resultList.get(i)).mLocalIndex == -4)
        {
            itemholder.CompleteTextImage.setVisibility(8);
        } else
        {
            itemholder.CompleteTextImage.setVisibility(0);
            itemholder.CompleteTextImage.setTag(new String(((PlaceData)resultList.get(i)).mTitle));
            itemholder.CompleteTextImage.setOnClickListener(new android.view.View.OnClickListener() {

                final PlacesAutoCompleteAdapter this$0;

                public void onClick(View view1)
                {
                    String s2 = view1.getTag().toString();
                    if (s2 != null)
                    {
                        ((AutoCompleteTextView)mTextBox).setText((new StringBuilder(String.valueOf(s2))).append(" ").toString());
                        ((AutoCompleteTextView)mTextBox).setSelection(1 + s2.length());
                    }
                }

            
            {
                this$0 = PlacesAutoCompleteAdapter.this;
                super();
            }
            });
        }
        wazetextview = itemholder.Title;
        s = ((PlaceData)resultList.get(i)).mTitle;
        wazetextview1 = itemholder.SecondaryTitle;
        itemholder.root.setBackgroundColor(Color.rgb(221, 231, 234));
        if (((PlaceData)resultList.get(i)).mLocalIndex != -1)
        {
            if (((PlaceData)resultList.get(i)).mLocalIndex == -2)
            {
                itemholder.RowType.setImageResource(0x7f020002);
            } else
            if (((PlaceData)resultList.get(i)).mLocalIndex == -3)
            {
                itemholder.RowType.setImageResource(0x7f020006);
            } else
            if (((PlaceData)resultList.get(i)).mLocalIndex == -4)
            {
                itemholder.RowType.setImageResource(0x7f020286);
                itemholder.root.setBackgroundColor(Color.rgb(192, 216, 223));
            } else
            if (mLocalData[((PlaceData)resultList.get(i)).mLocalIndex].getType().intValue() == 5)
            {
                itemholder.RowType.setImageResource(0x7f020003);
            } else
            if (mLocalData[((PlaceData)resultList.get(i)).mLocalIndex].getType().intValue() == 8)
            {
                itemholder.RowType.setImageResource(0x7f020004);
            }
        } else
        if (((PlaceData)resultList.get(i)).mVenueId == null || ((PlaceData)resultList.get(i)).mVenueId.equals(""))
        {
            itemholder.RowType.setImageResource(0x7f020006);
        } else
        {
            itemholder.RowType.setImageResource(0x7f020005);
        }
        s1 = ((PlaceData)resultList.get(i)).mSecondaryTitle;
        if (s1 == null || s1.equals(""))
        {
            wazetextview1.setVisibility(8);
        } else
        {
            wazetextview1.setVisibility(0);
            wazetextview1.setText(s1);
        }
        wazetextview.setText(s);
        return view;
_L6:
        if (itemholder == null) goto _L10; else goto _L9
_L9:
        itemholder.root.setVisibility(4);
        return view;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public int getViewTypeCount()
    {
        return 2;
    }

    public AddressItem[] searchContacts(String s)
    {
        AddressItem aaddressitem[];
        ContentResolver contentresolver;
        String as[];
        Log.d("WAZE", (new StringBuilder("contact search start ")).append(s).toString());
        aaddressitem = null;
        contentresolver = mContext.getContentResolver();
        as = new String[2];
        as[0] = (new StringBuilder("%")).append(s).append("%").toString();
        as[1] = "vnd.android.cursor.item/postal-address_v2";
        Cursor cursor;
        cursor = contentresolver.query(android.provider.ContactsContract.Data.CONTENT_URI, null, "display_name LIKE ? AND mimetype = ?", as, null);
        aaddressitem = new AddressItem[cursor.getCount()];
_L1:
        if (cursor.moveToNext())
        {
            break MISSING_BLOCK_LABEL_122;
        }
        cursor.close();
        return aaddressitem;
        try
        {
            String s1 = cursor.getString(cursor.getColumnIndex("data1"));
            String s2 = cursor.getString(cursor.getColumnIndex("display_name"));
            String s3 = cursor.getString(cursor.getColumnIndex("data10"));
            String s4 = cursor.getString(cursor.getColumnIndex("data8"));
            String s5 = cursor.getString(cursor.getColumnIndex("data7"));
            String s6 = cursor.getString(cursor.getColumnIndex("data4"));
            aaddressitem[cursor.getPosition()] = new AddressItem(null, null, s2, null, s1, null, Boolean.valueOf(false), null, Integer.valueOf(5), null, null, null, null, null, null, s3, s4, s5, s6, "", null);
        }
        catch (Exception exception)
        {
            Log.d("WAZE", exception.toString());
            return aaddressitem;
        }
          goto _L1
    }

    public void setFeatures(int i)
    {
        mFeatures = i;
    }

    public void setIsCalendar(boolean flag)
    {
        mIsCalendar = flag;
    }













}
