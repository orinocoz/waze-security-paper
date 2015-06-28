// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.autocomplete;

import android.widget.Filter;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.strings.DisplayStrings;
import java.util.ArrayList;

// Referenced classes of package com.waze.autocomplete:
//            PlacesAutoCompleteAdapter, PlaceData

class this._cls0 extends Filter
{

    final PlacesAutoCompleteAdapter this$0;

    protected android.widget.pter._cls2 performFiltering(CharSequence charsequence)
    {
        android.widget.pter pter = new android.widget.pter();
        if ((0x1000 & PlacesAutoCompleteAdapter.access$1(PlacesAutoCompleteAdapter.this)) != 0 && charsequence == null)
        {
            charsequence = "";
        }
        if (charsequence != null)
        {
            mInput = charsequence.toString();
            ArrayList arraylist = PlacesAutoCompleteAdapter.access$2(PlacesAutoCompleteAdapter.this, charsequence.toString());
            if (PlacesAutoCompleteAdapter.access$3(PlacesAutoCompleteAdapter.this) != null)
            {
                arraylist.add(0, PlacesAutoCompleteAdapter.access$3(PlacesAutoCompleteAdapter.this));
            }
            if (PlacesAutoCompleteAdapter.access$4(PlacesAutoCompleteAdapter.this))
            {
                PlaceData placedata = new PlaceData();
                placedata.mIsAds = false;
                placedata.mLocalIndex = -4;
                placedata.mTitle = PlacesAutoCompleteAdapter.access$5(PlacesAutoCompleteAdapter.this).getLanguageString(DisplayStrings.DS_REMOVE_THIS_EVENT);
                placedata.mReference = null;
                placedata.mSecondaryTitle = null;
                placedata.mVenueId = null;
                arraylist.add(0, placedata);
            }
            if (!PlacesAutoCompleteAdapter.access$6(PlacesAutoCompleteAdapter.this))
            {
                PlacesAutoCompleteAdapter.access$7(PlacesAutoCompleteAdapter.this, true);
                Analytics.log("AUTOCOMPLETE_SHOWN");
            }
            pter.pter = arraylist;
            pter.pter = arraylist.size();
        }
        return pter;
    }

    protected void publishResults(CharSequence charsequence, android.widget.pter._cls2 _pcls2)
    {
        if (_pcls2 != null && _pcls2.pter > 0)
        {
            PlacesAutoCompleteAdapter.access$8(PlacesAutoCompleteAdapter.this, (ArrayList)_pcls2.pter);
            notifyDataSetChanged();
            return;
        } else
        {
            notifyDataSetInvalidated();
            PlacesAutoCompleteAdapter.access$8(PlacesAutoCompleteAdapter.this, null);
            return;
        }
    }

    ()
    {
        this$0 = PlacesAutoCompleteAdapter.this;
        super();
    }
}
