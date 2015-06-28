// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.NativeManager;
import com.waze.autocomplete.PlacesAutoCompleteAdapter;
import com.waze.view.text.InstantAutoComplete;
import java.util.Arrays;
import java.util.Comparator;

// Referenced classes of package com.waze.navigate:
//            AutocompleteSearchActivity, AddressItem

class this._cls0
    implements etAddressItemArrayCallback
{

    final AutocompleteSearchActivity this$0;

    public void getAddressItemArrayCallback(AddressItem aaddressitem[])
    {
        AutocompleteSearchActivity.access$0(AutocompleteSearchActivity.this, aaddressitem);
        AutocompleteSearchActivity.access$3(AutocompleteSearchActivity.this, new PlacesAutoCompleteAdapter(AutocompleteSearchActivity.this, 0x109000a, AutocompleteSearchActivity.access$1(AutocompleteSearchActivity.this), AutocompleteSearchActivity.access$2(AutocompleteSearchActivity.this).getApiKey(), searchBox, new com.waze.autocomplete.PlacesAutoCompleteAdapter.IPrepareForSerchResults() {

            final AutocompleteSearchActivity._cls1 this$1;

            public void onPrepareForSerchResults()
            {
                SetHandlerForAutocomplete();
            }

            
            {
                this$1 = AutocompleteSearchActivity._cls1.this;
                super();
            }
        }));
        Arrays.sort(AutocompleteSearchActivity.access$1(AutocompleteSearchActivity.this), new Comparator() {

            final AutocompleteSearchActivity._cls1 this$1;

            public int compare(AddressItem addressitem, AddressItem addressitem1)
            {
                if (addressitem.getType() == addressitem1.getType())
                {
                    return 0;
                }
                return addressitem.getType().intValue() != 8 ? 1 : -1;
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((AddressItem)obj, (AddressItem)obj1);
            }

            
            {
                this$1 = AutocompleteSearchActivity._cls1.this;
                super();
            }
        });
        int i = 0x1000 | (8 | 0xffffffef & (0xffffffdf & AutocompleteSearchActivity.access$4(AutocompleteSearchActivity.this).getFeatures()));
        AutocompleteSearchActivity.access$4(AutocompleteSearchActivity.this).setFeatures(i);
        searchBox.setAdapter(AutocompleteSearchActivity.access$4(AutocompleteSearchActivity.this));
        searchBox.filterNow();
    }


    _cls2.this._cls1()
    {
        this$0 = AutocompleteSearchActivity.this;
        super();
    }
}
