// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

// Referenced classes of package com.waze.navigate:
//            AddressItem, SortPreferences, SearchButton

public class SearchEngine
{

    public static final int ERROR_STATE_ERROR_NONE = 0;
    public static final int ERROR_STATE_ERROR_NORETRY = 1;
    public static final int ERROR_STATE_ERROR_RETRY = 2;
    private static final int RESULTS_INIT_CAPACITY = 32;
    private SearchButton button;
    public boolean canShowOnMap;
    private int errorState;
    private int id;
    private String name;
    private String provider;
    public boolean requestedResultEta;
    private List results;
    private boolean searched;
    private boolean searching;

    public SearchEngine(int i, String s, String s1, boolean flag)
    {
        this(i, s, s1, flag, null);
    }

    public SearchEngine(int i, String s, String s1, boolean flag, SearchButton searchbutton)
    {
        results = new ArrayList(32);
        errorState = 0;
        requestedResultEta = false;
        id = i;
        name = s;
        provider = s1;
        button = searchbutton;
        searched = false;
        searching = false;
        canShowOnMap = flag;
    }

    public void addResult(AddressItem addressitem)
    {
        results.add(addressitem);
    }

    public void clear()
    {
        searched = false;
        searching = false;
        results.clear();
        setErrorState(0);
    }

    public void finalizeSearch()
    {
        searching = false;
        int i = results.size();
        boolean flag = false;
        if (i > 0)
        {
            flag = true;
        }
        searched = flag;
    }

    public SearchButton getButton()
    {
        return button;
    }

    public int getErrorState()
    {
        return errorState;
    }

    public int getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public String getProvider()
    {
        return provider;
    }

    public AddressItem getResult(int i)
    {
        return (AddressItem)results.get(i);
    }

    public AddressItem[] getResults()
    {
        AddressItem aaddressitem[] = new AddressItem[results.size()];
        results.toArray(aaddressitem);
        return aaddressitem;
    }

    public boolean getSearched()
    {
        return searched;
    }

    public boolean getSearching()
    {
        return searching;
    }

    public boolean hasError()
    {
        return errorState != 0;
    }

    public void setButton(SearchButton searchbutton)
    {
        button = searchbutton;
    }

    public void setErrorState(int i)
    {
        errorState = i;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setResult(int i, AddressItem addressitem)
    {
        results.set(i, addressitem);
    }

    public void setResults(AddressItem aaddressitem[])
    {
        searching = false;
        if (aaddressitem == null)
        {
            clear();
            return;
        } else
        {
            searched = true;
            results.clear();
            Collections.addAll(results, aaddressitem);
            return;
        }
    }

    public void setSearched(boolean flag)
    {
        searched = flag;
    }

    public void setSearching(boolean flag)
    {
        if (flag)
        {
            clear();
        }
        searching = flag;
    }

    public void sortResults(final SortPreferences sortPreferences)
    {
        List list = results;
        if (sortPreferences.type != 0) goto _L2; else goto _L1
_L1:
        Comparator comparator = new Comparator() {

            final SearchEngine this$0;

            public int compare(AddressItem addressitem, AddressItem addressitem1)
            {
                if (addressitem.sponsored == addressitem1.sponsored) goto _L2; else goto _L1
_L1:
                if (!addressitem.sponsored) goto _L4; else goto _L3
_L3:
                return -1;
_L4:
                return 1;
_L2:
                if (addressitem.price <= addressitem1.price)
                {
                    continue; /* Loop/switch isn't completed */
                }
                if (addressitem1.price == 0.0F) goto _L3; else goto _L5
_L5:
                return 1;
                if (addressitem.price != 0.0F) goto _L3; else goto _L6
_L6:
                return 1;
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((AddressItem)obj, (AddressItem)obj1);
            }

            
            {
                this$0 = SearchEngine.this;
                super();
            }
        };
_L4:
        Collections.sort(list, comparator);
        results = list;
        return;
_L2:
        if (sortPreferences.type == 1)
        {
            comparator = new Comparator() {

                final SearchEngine this$0;

                public int compare(AddressItem addressitem, AddressItem addressitem1)
                {
                    if (addressitem.sponsored == addressitem1.sponsored) goto _L2; else goto _L1
_L1:
                    if (!addressitem.sponsored) goto _L4; else goto _L3
_L3:
                    return -1;
_L4:
                    return 1;
_L2:
                    if (addressitem.distanceMeters > addressitem1.distanceMeters)
                    {
                        return 1;
                    }
                    if (true) goto _L3; else goto _L5
_L5:
                }

                public volatile int compare(Object obj, Object obj1)
                {
                    return compare((AddressItem)obj, (AddressItem)obj1);
                }

            
            {
                this$0 = SearchEngine.this;
                super();
            }
            };
        } else
        {
            int i = sortPreferences.type;
            comparator = null;
            if (i == 2)
            {
                comparator = new Comparator() {

                    final SearchEngine this$0;
                    private final SortPreferences val$sortPreferences;

                    public int compare(AddressItem addressitem, AddressItem addressitem1)
                    {
                        byte byte0 = 1;
                        if (addressitem.sponsored == addressitem1.sponsored) goto _L2; else goto _L1
_L1:
                        if (addressitem.sponsored)
                        {
                            byte0 = -1;
                        }
_L4:
                        return byte0;
_L2:
                        byte byte1;
                        byte byte2;
                        if (addressitem.brand != null && !addressitem.brand.equals(""))
                        {
                            byte1 = 0;
                        } else
                        {
                            byte1 = byte0;
                        }
                        if (addressitem1.brand != null && !addressitem1.brand.equals(""))
                        {
                            byte2 = 0;
                        } else
                        {
                            byte2 = byte0;
                        }
                        if (byte1 != 0 && byte2 != 0)
                        {
                            return addressitem.getTitle().compareTo(addressitem1.getTitle());
                        }
                        if (byte1 != 0 && byte2 == 0)
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        if (byte1 == 0 && byte2 != 0)
                        {
                            return -1;
                        }
                        byte byte3;
                        boolean flag;
                        if (sortPreferences.brand != null && !sortPreferences.brand.equals(""))
                        {
                            byte3 = byte0;
                        } else
                        {
                            byte3 = 0;
                        }
                        if (byte3 == 0)
                        {
                            break; /* Loop/switch isn't completed */
                        }
                        flag = addressitem.brand.equals(sortPreferences.brand);
                        if (flag == addressitem1.brand.equals(sortPreferences.brand))
                        {
                            break; /* Loop/switch isn't completed */
                        }
                        if (flag)
                        {
                            return -1;
                        }
                        if (true) goto _L4; else goto _L3
_L3:
                        return addressitem.brand.compareTo(addressitem1.brand);
                    }

                    public volatile int compare(Object obj, Object obj1)
                    {
                        return compare((AddressItem)obj, (AddressItem)obj1);
                    }

            
            {
                this$0 = SearchEngine.this;
                sortPreferences = sortpreferences;
                super();
            }
                };
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
