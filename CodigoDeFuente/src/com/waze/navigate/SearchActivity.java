// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.DownloadResCallback;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.ResourceDownloadType;
import com.waze.ifs.ui.ActivityBase;
import com.waze.phone.PhoneVerifyYourAccountActivity;
import com.waze.reports.VenueData;
import com.waze.share.ShareUtility;
import com.waze.strings.DisplayStrings;
import com.waze.view.map.ProgressAnimation;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.waze.navigate:
//            DriveToSearchCallback, DriveToGetSearchEnginesCallback, DriveToNavigateCallback, SearchEngine, 
//            SearchButton, DriveToNativeManager, AddressItem, AddFavoriteNameActivity, 
//            AddressPreviewActivity, SortPreferences, SearchMapActivity

public final class SearchActivity extends ActivityBase
    implements DriveToSearchCallback, DriveToGetSearchEnginesCallback, DriveToNavigateCallback, DownloadResCallback
{
    private class SearchResultsListAdapter extends BaseAdapter
    {

        private boolean isAddressItemSeenAlready[];
        private AddressItem searchResultItems[];
        final SearchActivity this$0;

        public int getCount()
        {
            if (searchResultItems == null)
            {
                return 0;
            } else
            {
                return searchResultItems.length;
            }
        }

        public Object getItem(int i)
        {
            return searchResultItems[i];
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            AddressItem addressitem;
            DriveToNativeManager drivetonativemanager;
            addressitem = (AddressItem)getItem(i);
            drivetonativemanager = DriveToNativeManager.getInstance();
            if (view == null)
            {
                view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f03000e, viewgroup, false);
            }
            view.setTag(0x7f09002c, addressitem);
            Integer integer = Integer.valueOf(i);
            view.setTag(integer);
            view.findViewById(0x7f0900e2).setVisibility(0);
            view.findViewById(0x7f0900c3).setVisibility(8);
            view.findViewById(0x7f0900be).setVisibility(8);
            if (addressitem == null) goto _L2; else goto _L1
_L1:
            String as[];
            int j;
            View view2;
            drivetonativemanager.notifyAddressItemShown(addressitem.index, isAddressItemSeenAlready[i]);
            isAddressItemSeenAlready[i] = true;
            TextView textview = (TextView)view.findViewById(0x7f0900c2);
            String s = addressitem.getTitle();
            if (addressitem.getCategory().intValue() == 4)
            {
                s = nativeManager.getLanguageString(addressitem.getTitle());
            }
            TextView textview1;
            android.graphics.drawable.Drawable drawable;
            boolean flag;
            TextView textview2;
            View view1;
            if (s.isEmpty())
            {
                textview.setVisibility(8);
            } else
            {
                textview.setVisibility(0);
                textview.setText(s);
                if (addressitem.getCategory().intValue() != 4)
                {
                    ((LinearLayout)view.findViewById(0x7f0900bd)).setGravity(19);
                } else
                {
                    ((LinearLayout)view.findViewById(0x7f0900bd)).setGravity(17);
                }
            }
            textview1 = (TextView)view.findViewById(0x7f0900c4);
            if (addressitem.getAddress().equals(""))
            {
                textview1.setVisibility(8);
            } else
            {
                textview1.setVisibility(0);
                textview1.setText(addressitem.getAddress());
            }
            view.findViewById(0x7f0900ba).setVisibility(0);
            drawable = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(addressitem.getIcon()))).append(".bin").toString());
            ((ImageView)view.findViewById(0x7f0900bb)).setImageDrawable(drawable);
            if (addressitem.sponsored)
            {
                view.findViewById(0x7f0900bc).setVisibility(0);
                bIsSponserd = true;
            } else
            {
                view.findViewById(0x7f0900bc).setVisibility(8);
            }
            if (addressitem.dealTitle != null && !addressitem.dealTitle.equals(""))
            {
                flag = true;
                view.findViewById(0x7f0900dc).setVisibility(0);
                view.findViewById(0x7f0900dd).setVisibility(0);
                view.findViewById(0x7f0900db).setVisibility(0);
                ((TextView)view.findViewById(0x7f0900dc)).setText(nativeManager.getLanguageString(addressitem.dealTitle));
                ((TextView)view.findViewById(0x7f0900dd)).setText(nativeManager.getLanguageString(addressitem.dealText));
                String s1;
                Object aobj[];
                String s2;
                long l1;
                String s4;
                Object aobj1[];
                if (addressitem.dealType == 1)
                {
                    ((ImageView)view.findViewById(0x7f0900db)).setImageResource(0x7f020343);
                } else
                {
                    ((ImageView)view.findViewById(0x7f0900db)).setImageResource(0x7f020344);
                }
            } else
            {
                view.findViewById(0x7f0900dc).setVisibility(4);
                view.findViewById(0x7f0900dd).setVisibility(4);
                view.findViewById(0x7f0900db).setVisibility(4);
                flag = false;
            }
            if (addressitem.price != 0.0F)
            {
                flag = true;
                view.findViewById(0x7f0900de).setVisibility(0);
                view.findViewById(0x7f0900df).setVisibility(0);
                view.findViewById(0x7f0900e0).setVisibility(0);
                if (addressitem.currency == null)
                {
                    addressitem.currency = "";
                }
                ((TextView)view.findViewById(0x7f0900de)).setText(nativeManager.getLanguageString(addressitem.currency));
                TextView textview4 = (TextView)view.findViewById(0x7f0900df);
                s1 = SearchActivity.getPriceFormatString(addressitem.price_format);
                aobj = new Object[1];
                aobj[0] = Float.valueOf(addressitem.price);
                s2 = String.format(s1, aobj);
                textview4.setText(nativeManager.getLanguageString(s2));
                String s3;
                if (addressitem.range == 1)
                {
                    textview4.setTextColor(getResources().getColor(0x7f08004c));
                } else
                if (addressitem.range == 2)
                {
                    textview4.setTextColor(getResources().getColor(0x7f08004d));
                } else
                if (addressitem.range == 3)
                {
                    textview4.setTextColor(getResources().getColor(0x7f08004e));
                }
                l1 = (System.currentTimeMillis() / 1000L - addressitem.lastUpdated) / 3600L / 24L;
                if (l1 > 0L)
                {
                    s4 = nativeManager.getLanguageString(DisplayStrings.DS_PD_DAYS_AGO);
                    aobj1 = new Object[1];
                    aobj1[0] = Integer.valueOf((int)l1);
                    s3 = String.format(s4, aobj1);
                } else
                {
                    s3 = (new StringBuilder()).append(nativeManager.getLanguageString(DisplayStrings.DS_TODAY)).toString();
                }
                ((TextView)view.findViewById(0x7f0900e0)).setText(s3);
            } else
            {
                view.findViewById(0x7f0900de).setVisibility(8);
                view.findViewById(0x7f0900df).setVisibility(8);
                view.findViewById(0x7f0900e0).setVisibility(8);
            }
            if (flag)
            {
                view.findViewById(0x7f0900da).setVisibility(0);
            } else
            {
                view.findViewById(0x7f0900da).setVisibility(8);
            }
            textview2 = (TextView)view.findViewById(0x7f0900c6);
            if (addressitem.getDistance().equals(""))
            {
                textview2.setVisibility(8);
            } else
            if (nm.isStopPointSearchNTV() && !SearchActivity.bGetTimeOffRoute.booleanValue())
            {
                textview2.setVisibility(0);
                textview2.setText(nativeManager.getLanguageString(DisplayStrings.DS_CALCULATING_TIME_OFF_ROUTEPPP));
            } else
            {
                textview2.setVisibility(0);
                textview2.setText(addressitem.getDistance());
            }
            view.findViewById(0x7f0900d8).setVisibility(8);
            as = addressitem.getAdditions();
            view1 = view.findViewById(0x7f0900c7);
            if (as.length > 0)
            {
                view1.setVisibility(0);
            } else
            {
                view1.setVisibility(8);
            }
            j = 0;
_L6:
            if (j < 6) goto _L4; else goto _L3
_L3:
            view2 = view.findViewById(0x7f09002c);
            if (addressitem.getCategory().intValue() != 4)
            {
                break; /* Loop/switch isn't completed */
            }
            view2.setBackgroundResource(0);
            view.findViewById(0x7f0900ba).setVisibility(8);
_L2:
            return view;
_L4:
            int k = getResources().getIdentifier((new StringBuilder("addressItemAddition")).append(j + 1).append("Img").toString(), "id", getPackageName());
            ImageView imageview = (ImageView)view.findViewById(k);
            int l = getResources().getIdentifier((new StringBuilder("addressItemAddition")).append(j + 1).append("Text").toString(), "id", getPackageName());
            TextView textview3 = (TextView)view.findViewById(l);
            imageview.setVisibility(8);
            textview3.setVisibility(8);
            if (true && j < as.length)
            {
                if (as[j].startsWith("ls_"))
                {
                    android.graphics.drawable.Drawable drawable1 = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(as[j]))).append(".bin").toString());
                    if (drawable1 == null)
                    {
                        ResManager.downloadRes(ResourceDownloadType.RES_DOWNLOAD_IMAGE_JAVA.getValue(), as[j], SearchActivity.this);
                    } else
                    {
                        imageview.setVisibility(0);
                        imageview.setImageDrawable(drawable1);
                    }
                } else
                {
                    textview3.setVisibility(0);
                    textview3.setText(nativeManager.getLanguageString(as[j]));
                }
            }
            j++;
            if (true) goto _L6; else goto _L5
_L5:
            if (addressitem.sponsored)
            {
                view2.setBackgroundResource(0x7f08003b);
                view2.setPadding(0, 0, 0, 0);
                return view;
            } else
            {
                view2.setBackgroundResource(0x7f02021f);
                view2.setPadding(0, 0, 0, 0);
                return view;
            }
        }

        public void setItems(AddressItem aaddressitem[])
        {
            searchResultItems = aaddressitem;
            if (aaddressitem != null)
            {
                isAddressItemSeenAlready = new boolean[aaddressitem.length];
            }
            notifyDataSetChanged();
        }

        public SearchResultsListAdapter()
        {
            this$0 = SearchActivity.this;
            super();
            searchResultItems = null;
            isAddressItemSeenAlready = null;
        }
    }


    public static final String ADDITION_ICON_PREFIX = "ls_";
    private static final String CONTACT_ENGINE = "_contact";
    public static final int MAX_ADDITIONS = 6;
    private static final int RQ_ADDRESS_PREVIEW = 100;
    private static final String WAZE_ENGINE = "waze";
    private static Boolean bGetTimeOffRoute = Boolean.valueOf(false);
    private static String s_priceFormatString = null;
    private SearchEngine activeEngine;
    private SearchResultsListAdapter adapter;
    private boolean bIsSponserd;
    private String category;
    private Map engines;
    private List enginesList;
    private AddressItem mAddressItem;
    private NativeManager nativeManager;
    private DriveToNativeManager nm;
    private boolean progressPopupRunning;
    private boolean resultsArrived;
    private Integer searchMode;
    private String searchStr;
    protected SortPreferences sortPreferences;

    public SearchActivity()
    {
        progressPopupRunning = false;
        enginesList = null;
        bIsSponserd = false;
    }

    private void activateNewSearchEngine(SearchEngine searchengine)
    {
        activeEngine = searchengine;
        ((TitleBar)findViewById(0x7f090283)).setCloseVisibility(activeEngine.canShowOnMap);
        Log.d("WAZE", (new StringBuilder("activateNewSearchEngine new:")).append(activeEngine.getName()).append(",").append(activeEngine.getId()).append(". Searching: ").append(activeEngine.getSearching()).append(". Searched: ").append(activeEngine.getSearched()).toString());
        activeEngine.getButton().selectButton();
        if (activeEngine.getSearched() && !needRetry())
        {
            closeProgressPopup();
            getAddressItems();
        } else
        if (!activeEngine.getSearching())
        {
            adapter.setItems(null);
            activeEngine.setSearching(true);
            DriveToNativeManager drivetonativemanager = nm;
            String s = category;
            String s1 = activeEngine.getProvider();
            String s2 = searchStr;
            boolean flag;
            if (resultsArrived)
            {
                flag = false;
            } else
            {
                flag = true;
            }
            drivetonativemanager.search(s, s1, s2, flag, this);
            openProgressPopup();
        } else
        {
            openProgressPopup();
        }
        if (!activeEngine.requestedResultEta && activeEngine.getResults().length > 0)
        {
            activeEngine.requestedResultEta = true;
            nm.getSearchResultsEta(searchengine.getProvider());
        }
    }

    private void chooseActiveEngine()
    {
        if (activeEngine == null) goto _L2; else goto _L1
_L1:
        SearchEngine searchengine;
        reselectOldActiveEngine();
        searchengine = activeEngine;
_L4:
        final SearchEngine finalEngine = searchengine;
        (new Handler()).postDelayed(new Runnable() {

            final SearchActivity this$0;
            private final SearchEngine val$finalEngine;

            public void run()
            {
                setActiveEngine(finalEngine);
            }

            
            {
                this$0 = SearchActivity.this;
                finalEngine = searchengine;
                super();
            }
        }, 50L);
        return;
_L2:
        if (engines.containsKey("waze"))
        {
            searchengine = (SearchEngine)engines.get("waze");
        } else
        {
            int i = engines.size();
            searchengine = null;
            if (i != 0)
            {
                Iterator iterator = engines.values().iterator();
                boolean flag = iterator.hasNext();
                searchengine = null;
                if (flag)
                {
                    searchengine = (SearchEngine)iterator.next();
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void clearSearchEngines()
    {
        Iterator iterator = engines.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                resultsArrived = false;
                return;
            }
            SearchEngine searchengine = (SearchEngine)iterator.next();
            Log.d("WAZE", (new StringBuilder("Clearing provider: ")).append(searchengine.getProvider()).toString());
            searchengine.clear();
        } while (true);
    }

    private void forButtonsWithoutEngineSetVisibilityToGone()
    {
        int i = 1 + enginesList.size();
        do
        {
            if (i >= 10)
            {
                return;
            }
            ((ImageButton)findViewById(getResources().getIdentifier((new StringBuilder("searchButton")).append(i).toString(), "id", getPackageName()))).setVisibility(8);
            i++;
        } while (true);
    }

    private static int getNumberOfDigits(String s)
    {
        int i = s.indexOf('.');
        if (i == -1)
        {
            return 0;
        } else
        {
            return -1 + (s.length() - i);
        }
    }

    public static String getPriceFormatString(String s)
    {
        if (s_priceFormatString != null)
        {
            return s_priceFormatString;
        }
        int i = getNumberOfDigits(s);
        if (i > 2 && i <= 5)
        {
            s_priceFormatString = (new StringBuilder("%2.")).append(i).append("f").toString();
        } else
        {
            s_priceFormatString = "%2.2f";
        }
        return s_priceFormatString;
    }

    private void initLayout()
    {
        setContentView(0x7f0300dd);
        nativeManager = AppService.getNativeManager();
        TitleBar titlebar = (TitleBar)findViewById(0x7f090283);
        titlebar.init(this, DisplayStrings.DS_SEARCH_RESULTS, DisplayStrings.DS_MAP);
        titlebar.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final SearchActivity this$0;

            public void onClick(View view1)
            {
                if (activeEngine != null)
                {
                    nm.cancelStopPointAndRemoveDeparturePoi();
                    nativeManager.setSearchResults(new ArrayList(Arrays.asList(activeEngine.getResults())));
                    Intent intent = new Intent(SearchActivity.this, com/waze/navigate/SearchMapActivity);
                    intent.putExtra("category", category);
                    intent.putExtra("provider", activeEngine.getProvider());
                    startActivityForResult(intent, 32779);
                }
            }

            
            {
                this$0 = SearchActivity.this;
                super();
            }
        });
        View view = findViewById(0x7f0905e6);
        view.setTag(0x7f09002a, engines);
        view.setTag(0x7f09002b, this);
        ListView listview = (ListView)findViewById(0x7f0905e5);
        adapter = new SearchResultsListAdapter();
        listview.setAdapter(adapter);
        ((ListView)findViewById(0x7f0905e5)).setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final SearchActivity this$0;

            public void onItemClick(AdapterView adapterview, View view1, int i, long l)
            {
                addressItemClicked(view1);
            }

            
            {
                this$0 = SearchActivity.this;
                super();
            }
        });
    }

    private void iterateAllEnginesList()
    {
        int i = 0;
        Iterator iterator = enginesList.iterator();
        do
        {
            SearchEngine searchengine;
            do
            {
                if (!iterator.hasNext())
                {
                    forButtonsWithoutEngineSetVisibilityToGone();
                    return;
                }
                i++;
                searchengine = (SearchEngine)iterator.next();
                Log.d("WAZE", (new StringBuilder("id:")).append(searchengine.getId()).append(" N:").append(searchengine.getName()).append(" P:").append(searchengine.getProvider()).append(" B:").append(searchengine.getButton()).toString());
                int j = getResources().getIdentifier((new StringBuilder("searchButton")).append(i).toString(), "id", getPackageName());
                setDrawables(searchengine, j);
                searchengine.setId(j);
                engines.put(Integer.valueOf(searchengine.getId()), searchengine);
            } while (searchengine != activeEngine);
            final SearchEngine finalActiveEngine = activeEngine;
            (new Handler()).postDelayed(new Runnable() {

                final SearchActivity this$0;
                private final SearchEngine val$finalActiveEngine;

                public void run()
                {
                    setActiveEngine(finalActiveEngine);
                }

            
            {
                this$0 = SearchActivity.this;
                finalActiveEngine = searchengine;
                super();
            }
            }, 200L);
        } while (true);
    }

    private void makeOldActiveEngineIdle()
    {
        Log.d("WAZE", (new StringBuilder("makeOldActiveEngineIdle old:")).append(activeEngine.getName()).append(",").append(activeEngine.getId()).append(". Searching: ").append(activeEngine.getSearching()).append(". Searched: ").append(activeEngine.getSearched()).toString());
        activeEngine.getButton().idleButton();
    }

    private boolean needRetry()
    {
        return activeEngine.getErrorState() == 2;
    }

    private void refreshList()
    {
        runOnUiThread(new Runnable() {

            final SearchActivity this$0;

            public void run()
            {
                ((ListView)findViewById(0x7f0905e5)).invalidateViews();
            }

            
            {
                this$0 = SearchActivity.this;
                super();
            }
        });
    }

    private void refreshSpecificSearchEngine(String s)
    {
        Iterator iterator;
        int i;
        iterator = enginesList.iterator();
        i = 0;
_L2:
        if (iterator.hasNext())
        {
            i++;
            SearchEngine searchengine = (SearchEngine)iterator.next();
            if (!searchengine.getProvider().equalsIgnoreCase(s))
            {
                continue; /* Loop/switch isn't completed */
            }
            Log.d("WAZE", (new StringBuilder("id:")).append(searchengine.getId()).append(" N:").append(searchengine.getName()).append(" P:").append(searchengine.getProvider()).append(" B:").append(searchengine.getButton()).toString());
            int j = getResources().getIdentifier((new StringBuilder("searchButton")).append(i).toString(), "id", getPackageName());
            setDrawables(searchengine, j);
            searchengine.setId(j);
            engines.put(Integer.valueOf(searchengine.getId()), searchengine);
            if (searchengine == activeEngine)
            {
                activeEngine.getButton().selectButton();
                return;
            }
        }
        return;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void reselectOldActiveEngine()
    {
        String s = activeEngine.getProvider();
        Iterator iterator = engines.values().iterator();
        SearchEngine searchengine;
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            searchengine = (SearchEngine)iterator.next();
        } while (!searchengine.getProvider().equals(s));
        activeEngine = searchengine;
    }

    private void setDrawables(SearchEngine searchengine, int i)
    {
        android.graphics.drawable.Drawable drawable = ResManager.GetSkinDrawable((new StringBuilder("engine_")).append(searchengine.getProvider()).append("_selected.bin").toString());
        Log.d("WAZE", (new StringBuilder("drawable selected=")).append(drawable).toString());
        if (drawable == null)
        {
            drawable = ResManager.GetSkinDrawable("engine__generic_selected.bin");
        }
        android.graphics.drawable.Drawable drawable1 = ResManager.GetSkinDrawable((new StringBuilder("engine_")).append(searchengine.getProvider()).append("_idle.bin").toString());
        Log.d("WAZE", (new StringBuilder("drawable idle=")).append(drawable1).toString());
        if (drawable1 == null)
        {
            drawable1 = ResManager.GetSkinDrawable("engine__generic_idle.bin");
        }
        searchengine.setButton(new SearchButton((ImageButton)findViewById(i), drawable, drawable1));
    }

    private String trimSearchEngineName(String s)
    {
        String s1 = null;
        if (s != null)
        {
            int i = 1 + s.indexOf("_");
            int j = 1 + (new StringBuffer(s)).reverse().toString().indexOf("_");
            s1 = s.subSequence(i, s.length() - j).toString();
        }
        return s1;
    }

    public void InitTitle(String s)
    {
        if (s == null)
        {
            ((TitleBar)findViewById(0x7f090283)).setTitle(nativeManager.getLanguageString(DisplayStrings.DS_SEARCH_RESULTS));
            return;
        } else
        {
            ((TitleBar)findViewById(0x7f090283)).setTitle(nativeManager.getLanguageString(s));
            return;
        }
    }

    public void addressItemClicked(View view)
    {
        AddressItem addressitem = (AddressItem)view.getTag(0x7f09002c);
        DriveToNativeManager drivetonativemanager = DriveToNativeManager.getInstance();
        int i = ((Integer)view.getTag()).intValue();
        if (addressitem.getCategory().intValue() == 4)
        {
            return;
        }
        if (addressitem.getCategory().intValue() == 5)
        {
            searchStr = addressitem.getAddress();
            if (searchMode.intValue() != 1)
            {
                searchMode = Integer.valueOf(5);
            }
            clearSearchEngines();
            setActiveEngine((SearchEngine)engines.get("waze"));
            return;
        }
        if (searchMode == null)
        {
            searchMode = Integer.valueOf(2);
        }
        switch (searchMode.intValue())
        {
        default:
            return;

        case 1: // '\001'
            Intent intent4 = new Intent(this, com/waze/navigate/AddFavoriteNameActivity);
            intent4.putExtra("AddressItem", addressitem);
            startActivityForResult(intent4, 1);
            return;

        case 3: // '\003'
            addressitem.setTitle("Home");
            addressitem.setCategory(Integer.valueOf(1));
            Log.d("WAZE", (new StringBuilder("add home ai=")).append(addressitem.toString()).toString());
            drivetonativemanager.StoreAddressItem(addressitem);
            setResult(-1);
            finish();
            return;

        case 4: // '\004'
            addressitem.setTitle("Work");
            addressitem.setCategory(Integer.valueOf(1));
            Log.d("WAZE", (new StringBuilder("add work ai=")).append(addressitem.toString()).toString());
            drivetonativemanager.StoreAddressItem(addressitem);
            setResult(-1);
            finish();
            return;

        case 2: // '\002'
        case 5: // '\005'
            if (drivetonativemanager.isStopPointSearchNTV())
            {
                drivetonativemanager.requestStopPoint(addressitem.index);
            }
            drivetonativemanager.notifyAddressItemClicked(addressitem.index);
            Intent intent3 = new Intent(this, com/waze/navigate/AddressPreviewActivity);
            intent3.putExtra("AddressItemList", new ArrayList(Arrays.asList(activeEngine.getResults())));
            intent3.putExtra("AddressItemSelected", i);
            intent3.putExtra("ActionButton", 1);
            intent3.putExtra("ClearAdsContext", true);
            startActivityForResult(intent3, 100);
            return;

        case 6: // '\006'
            if (drivetonativemanager.isStopPointSearchNTV())
            {
                drivetonativemanager.requestStopPoint(addressitem.index);
            }
            addressitem.setCategory(Integer.valueOf(6));
            addressitem.setTitle(mAddressItem.getTitle());
            addressitem.setMeetingId(mAddressItem.getMeetingId());
            drivetonativemanager.notifyAddressItemClicked(addressitem.index);
            Intent intent2 = new Intent(this, com/waze/navigate/AddressPreviewActivity);
            intent2.putExtra("AddressItemList", new ArrayList(Arrays.asList(activeEngine.getResults())));
            intent2.putExtra("AddressItemSelected", i);
            intent2.putExtra("AddressItem", mAddressItem);
            intent2.putExtra("ActionButton", 1);
            intent2.putExtra("ClearAdsContext", true);
            startActivityForResult(intent2, 100);
            return;

        case 7: // '\007'
            Intent intent1 = new Intent(this, com/waze/phone/PhoneVerifyYourAccountActivity);
            intent1.putExtra("AddressItem", addressitem);
            setResult(-1, intent1);
            finish();
            return;

        case 8: // '\b'
            ShareUtility.OpenShareActivity(com.waze.share.ShareUtility.ShareType.ShareType_ShareSelection, null, addressitem, null);
            return;

        case 9: // '\t'
            addressitem.setCategory(Integer.valueOf(7));
            addressitem.setTitle(mAddressItem.getTitle());
            addressitem.setMeetingId(mAddressItem.getMeetingId());
            drivetonativemanager.notifyAddressItemClicked(addressitem.index);
            Intent intent = new Intent(this, com/waze/navigate/AddressPreviewActivity);
            intent.putExtra("AddressItemList", new ArrayList(Arrays.asList(activeEngine.getResults())));
            intent.putExtra("AddressItemSelected", i);
            intent.putExtra("AddressItem", mAddressItem);
            intent.putExtra("ClearAdsContext", true);
            startActivityForResult(intent, 100);
            return;
        }
    }

    public void buttonBarSizeChanged(View view)
    {
        Log.d("WAZE", "button bar changed");
    }

    public void closeProgressPopup()
    {
        if (progressPopupRunning)
        {
            findViewById(0x7f0905f2).setVisibility(8);
            ((ProgressAnimation)findViewById(0x7f0905f3)).stop();
            progressPopupRunning = false;
        }
    }

    public void downloadResCallback()
    {
        runOnUiThread(new Runnable() {

            final SearchActivity this$0;

            public void run()
            {
                Log.d("WAZE", "in downloadResCallback");
                adapter.notifyDataSetChanged();
            }

            
            {
                this$0 = SearchActivity.this;
                super();
            }
        });
    }

    public void engineClicked(View view)
    {
        Log.d("WAZE", "engine button pressed");
        setActiveEngine((SearchEngine)engines.get(Integer.valueOf(view.getId())));
    }

    void finalizeSearch(String s)
    {
        Log.d("WAZE", (new StringBuilder("Finalizing search. Active provider: ")).append(s).toString());
        Iterator iterator = engines.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                SearchEngine searchengine;
                SearchEngine searchengine1;
                if (resultsArrived)
                {
                    searchengine1 = activeEngine;
                } else
                {
                    searchengine1 = (SearchEngine)engines.get(s);
                }
                if (searchengine1 != null && s != null && !s.equals("_contact"))
                {
                    setActiveEngine(searchengine1);
                    resultsArrived = true;
                }
                return;
            }
            searchengine = (SearchEngine)iterator.next();
            if (category != null && category.equals("gas"))
            {
                searchengine.sortResults(sortPreferences);
            }
            searchengine.finalizeSearch();
        } while (true);
    }

    public void getAddressItems()
    {
        boolean flag = true;
        if (activeEngine.getProvider().equals("waze") && searchMode.intValue() == 5 && activeEngine.getResults().length == flag)
        {
            AddressItem addressitem = activeEngine.getResults()[0];
            if (addressitem.getCategory().intValue() == flag)
            {
                flag = false;
            }
            nm.navigate(addressitem, this, false, flag);
            return;
        } else
        {
            adapter.setItems(activeEngine.getResults());
            return;
        }
    }

    public void getSearchEnginesCallback(List list)
    {
        enginesList = list;
        Log.d("WAZE", (new StringBuilder("in getSearchEnginesCallback count=")).append(enginesList.size()).toString());
        Iterator iterator = enginesList.iterator();
        int i = 0;
        do
        {
            if (!iterator.hasNext())
            {
                chooseActiveEngine();
                forButtonsWithoutEngineSetVisibilityToGone();
                SearchEngine searchengine1 = (SearchEngine)engines.get("_contact");
                if (searchengine1 != null && searchStr != null)
                {
                    searchengine1.setResults(searchContacts(searchStr));
                }
                return;
            }
            i++;
            SearchEngine searchengine = (SearchEngine)iterator.next();
            Log.d("WAZE", (new StringBuilder("id:")).append(searchengine.getId()).append(" N:").append(searchengine.getName()).append(" P:").append(searchengine.getProvider()).append(" B:").append(searchengine.getButton()).toString());
            int j = getResources().getIdentifier((new StringBuilder("searchButton")).append(i).toString(), "id", getPackageName());
            setDrawables(searchengine, j);
            searchengine.setId(j);
            engines.put(Integer.valueOf(searchengine.getId()), searchengine);
            engines.put(searchengine.getProvider(), searchengine);
        } while (true);
    }

    protected boolean myHandleMessage(Message message)
    {
        if (message.what != DriveToNativeManager.UH_ETA) goto _L2; else goto _L1
_L1:
        Bundle bundle2 = message.getData();
        updateEta(bundle2.getString("provider"), bundle2.getString("distance"), bundle2.getString("id"));
_L4:
        return super.myHandleMessage(message);
_L2:
        if (message.what == DriveToNativeManager.UH_SEARCH_ADD_RESULT)
        {
            Bundle bundle1 = message.getData();
            searchAddResult(bundle1.getString("provider"), (AddressItem)bundle1.getSerializable("address_item"));
        } else
        if (message.what == DriveToNativeManager.UH_SEARCH_FINALIZE)
        {
            finalizeSearch(message.getData().getString("provider"));
        } else
        if (message.what == DriveToNativeManager.UH_SEARCH_FAIL)
        {
            Bundle bundle = message.getData();
            searchFail(bundle.getString("provider"), bundle.getString("errMsg"), bundle.getBoolean("canRetry"));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void navigateCallback(int i)
    {
        Log.d("WAZE", (new StringBuilder("navigateCallback:rc=")).append(i).toString());
        setResult(-1);
        finish();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (i == 100 && intent != null && intent.hasExtra("venue") && intent.hasExtra("position"))
        {
            int k = intent.getIntExtra("position", -1);
            android.os.Parcelable parcelable = intent.getParcelableExtra("venue");
            if (activeEngine != null)
            {
                AddressItem addressitem = activeEngine.getResult(k);
                addressitem.venueData = (VenueData)parcelable;
                activeEngine.setResult(k, addressitem);
            }
        }
        if (j != 2)
        {
            if (j == -1)
            {
                setResult(-1);
                finish();
            } else
            {
                if (j == 1)
                {
                    setResult(1);
                    finish();
                    return;
                }
                if (j != 0)
                {
                    setResult(j, intent);
                    finish();
                    return;
                }
            }
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        initLayout();
        nativeManager.GetTitle(category, this);
        refreshSearchEngines(null);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        engines = new HashMap();
        category = getIntent().getExtras().getString("SearchCategory");
        searchStr = getIntent().getExtras().getString("SearchStr");
        searchMode = Integer.valueOf(getIntent().getExtras().getInt("SearchMode"));
        bGetTimeOffRoute = Boolean.valueOf(false);
        if (searchMode.intValue() == 6 || searchMode.intValue() == 9)
        {
            mAddressItem = (AddressItem)getIntent().getExtras().getSerializable("AddressItem");
        }
        resultsArrived = false;
        initLayout();
        nativeManager.GetTitle(category, this);
        nm = DriveToNativeManager.getInstance();
        nm.getSearchEngines(category, this);
        if (category != null)
        {
            nm.getSortPreferences(category, new DriveToNativeManager.SortPreferencesListener() {

                final SearchActivity this$0;

                public void onComplete(SortPreferences sortpreferences)
                {
                    sortPreferences = sortpreferences;
                }

            
            {
                this$0 = SearchActivity.this;
                super();
            }
            });
        }
        nm.setUpdateHandler(DriveToNativeManager.UH_ETA, mHandler);
        nm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        nm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_FINALIZE, mHandler);
        nm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_FAIL, mHandler);
    }

    protected void onDestroy()
    {
        nm.unsetUpdateHandler(DriveToNativeManager.UH_ETA, mHandler);
        nm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        nm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_FINALIZE, mHandler);
        nm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_FAIL, mHandler);
        bGetTimeOffRoute = Boolean.valueOf(false);
        super.onDestroy();
        nativeManager.setSearchResults(null);
    }

    public void openProgressPopup()
    {
        if (!progressPopupRunning)
        {
            findViewById(0x7f0905f2).setVisibility(0);
            ((ProgressAnimation)findViewById(0x7f0905f3)).start();
            ((TextView)findViewById(0x7f0905f4)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SEARCHING_______));
            progressPopupRunning = true;
        }
    }

    public void refreshAdressItemsIcons(int i, String s)
    {
        if (i < adapter.getCount())
        {
            ((AddressItem)adapter.getItem(i)).setIcon(s);
            adapter.notifyDataSetChanged();
        }
    }

    public void refreshSearchEngines(String s)
    {
        if (enginesList == null)
        {
            return;
        }
        if (s == null)
        {
            iterateAllEnginesList();
            return;
        } else
        {
            refreshSpecificSearchEngine(trimSearchEngineName(s));
            return;
        }
    }

    void searchAddResult(String s, AddressItem addressitem)
    {
        SearchEngine searchengine = (SearchEngine)engines.get(s);
        if (searchengine != null && !s.equals("_contact"))
        {
            searchengine.addResult(addressitem);
        }
    }

    public void searchCallback(int i)
    {
        Log.d("WAZE", (new StringBuilder("search rc=")).append(i).toString());
        if (i == -1)
        {
            setResult(-1);
            finish();
        }
    }

    public AddressItem[] searchContacts(String s)
    {
        AddressItem aaddressitem[];
        ContentResolver contentresolver;
        String as[];
        Log.d("WAZE", (new StringBuilder("contact search start ")).append(s).toString());
        aaddressitem = null;
        contentresolver = getContentResolver();
        as = new String[2];
        as[0] = (new StringBuilder("%")).append(s).append("%").toString();
        as[1] = "vnd.android.cursor.item/postal-address_v2";
        Cursor cursor;
        cursor = contentresolver.query(android.provider.ContactsContract.Data.CONTENT_URI, null, "display_name LIKE ? AND mimetype = ?", as, null);
        aaddressitem = new AddressItem[cursor.getCount()];
_L3:
        if (cursor.moveToNext()) goto _L2; else goto _L1
_L1:
        cursor.close();
_L4:
        Log.d("WAZE", (new StringBuilder("contact search end ")).append(s).toString());
        if (aaddressitem == null || aaddressitem.length == 0)
        {
            aaddressitem = new AddressItem[1];
            aaddressitem[0] = AddressItem.NO_RESULT_ADDRESS_ITEM;
        }
        return aaddressitem;
_L2:
        String s1 = cursor.getString(cursor.getColumnIndex("data1"));
        String s2 = cursor.getString(cursor.getColumnIndex("display_name"));
        String s3 = cursor.getString(cursor.getColumnIndex("data10"));
        String s4 = cursor.getString(cursor.getColumnIndex("data8"));
        String s5 = cursor.getString(cursor.getColumnIndex("data7"));
        String s6 = cursor.getString(cursor.getColumnIndex("data4"));
        aaddressitem[cursor.getPosition()] = new AddressItem(null, null, s2, null, s1, null, Boolean.valueOf(false), null, Integer.valueOf(5), null, null, null, null, null, null, s3, s4, s5, s6, "", null);
          goto _L3
        Exception exception;
        exception;
        Log.d("WAZE", exception.toString());
          goto _L4
    }

    void searchFail(String s, String s1, boolean flag)
    {
        SearchEngine searchengine = (SearchEngine)engines.get(s);
        if (searchengine != null && !s.equals("_contact"))
        {
            byte byte0;
            if (flag)
            {
                byte0 = 2;
            } else
            {
                byte0 = 1;
            }
            searchengine.setErrorState(byte0);
            if (searchengine.getResults().length == 0)
            {
                searchengine.addResult(AddressItem.NO_RESULT_ADDRESS_ITEM);
            }
            searchengine.finalizeSearch();
            if (searchengine == activeEngine)
            {
                closeProgressPopup();
                adapter.setItems(searchengine.getResults());
                resultsArrived = true;
            }
        }
    }

    void searchResults(String s, AddressItem aaddressitem[])
    {
        Log.d("WAZE", (new StringBuilder("searchResults provider=")).append(s).toString());
        Log.d("WAZE", (new StringBuilder("searchResults ai=")).append(aaddressitem).toString());
        Log.d("WAZE", (new StringBuilder("searchResults length=")).append(aaddressitem.length).toString());
        Log.d("WAZE", (new StringBuilder("searchResults ai[0]=")).append(aaddressitem[0].toString()).toString());
        SearchEngine searchengine = (SearchEngine)engines.get(s);
        if (searchengine != null && !s.equals("_contact"))
        {
            searchengine.setResults(aaddressitem);
            if (aaddressitem.length > 0 && aaddressitem[0].getCategory().intValue() != 4 && !resultsArrived || searchengine == activeEngine)
            {
                setActiveEngine(searchengine);
                resultsArrived = true;
            }
        }
    }

    public void setActiveEngine(SearchEngine searchengine)
    {
        if (searchengine == null)
        {
            return;
        }
        if (!AppService.isNetworkAvailable())
        {
            android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

                final SearchActivity this$0;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    onBackPressed();
                }

            
            {
                this$0 = SearchActivity.this;
                super();
            }
            };
            MsgBox.openMessageBoxWithCallback(nativeManager.getLanguageString(DisplayStrings.DS_NO_NETWORK_CONNECTION), nativeManager.getLanguageString(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER), false, onclicklistener);
            return;
        }
        bGetTimeOffRoute = Boolean.valueOf(false);
        if (activeEngine != null)
        {
            makeOldActiveEngineIdle();
        }
        activateNewSearchEngine(searchengine);
    }

    void updateEta(String s, String s1, String s2)
    {
        SearchEngine searchengine;
        Log.d("WAZE", (new StringBuilder("updateEta: ")).append(s).append(", ").append(s1).append(", ").append(s2).toString());
        searchengine = (SearchEngine)engines.get(s);
        if (searchengine == null) goto _L2; else goto _L1
_L1:
        AddressItem aaddressitem[];
        int i;
        int j;
        aaddressitem = searchengine.getResults();
        i = aaddressitem.length;
        j = 0;
_L6:
        if (j < i) goto _L3; else goto _L2
_L2:
        refreshList();
        return;
_L3:
        AddressItem addressitem = aaddressitem[j];
        if (addressitem == null || addressitem.getId() == null || !addressitem.getId().equals(s2))
        {
            break; /* Loop/switch isn't completed */
        }
        addressitem.setDistance(s1);
        bGetTimeOffRoute = Boolean.valueOf(true);
        if (true) goto _L2; else goto _L4
_L4:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }








}
