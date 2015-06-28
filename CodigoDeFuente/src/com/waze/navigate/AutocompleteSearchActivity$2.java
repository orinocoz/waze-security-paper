// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;
import android.widget.AdapterView;
import com.waze.autocomplete.PlaceData;
import com.waze.autocomplete.PlacesAutoCompleteAdapter;

// Referenced classes of package com.waze.navigate:
//            AutocompleteSearchActivity

class this._cls0
    implements android.widget.er
{

    final AutocompleteSearchActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        PlaceData placedata = AutocompleteSearchActivity.access$4(AutocompleteSearchActivity.this).getItemByPosition(i);
        if (placedata.mVenueId == null || placedata.mVenueId.equals(""))
        {
            if (placedata.mLocalIndex >= 0)
            {
                AddressItem addressitem = AutocompleteSearchActivity.access$1(AutocompleteSearchActivity.this)[placedata.mLocalIndex];
                AutocompleteSearchActivity.access$5(AutocompleteSearchActivity.this, addressitem);
            }
            return;
        } else
        {
            PlaceClickedByAutoComplete(view, placedata);
            return;
        }
    }

    ()
    {
        this$0 = AutocompleteSearchActivity.this;
        super();
    }
}
