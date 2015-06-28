// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.autocomplete;

import android.view.MotionEvent;
import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.autocomplete:
//            PlacesAutoCompleteAdapter, PlaceData

class this._cls0
    implements android.view.dapter._cls5
{

    final PlacesAutoCompleteAdapter this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        PlaceData placedata;
        switch (motionevent.getAction())
        {
        default:
            return true;

        case 1: // '\001'
            placedata = (PlaceData)view.getTag(0x7f0905bf);
            break;
        }
        if (placedata != null)
        {
            Analytics.log("AUTOCOMPLETE_CLICK", "VAUE", "ADVERTISEMENT");
            PlacesAutoCompleteAdapter.access$12(PlacesAutoCompleteAdapter.this).onPrepareForSerchResults();
            PlacesAutoCompleteAdapter.access$5(PlacesAutoCompleteAdapter.this).AutoCompleteAdsClicked(placedata.mVenueId, mInput, 0);
            PlacesAutoCompleteAdapter.access$5(PlacesAutoCompleteAdapter.this).AutoCompletePlaceClicked(placedata.mVenueId, placedata.mReference, null, null, false, mInput, false, 0, null, null);
        }
        return true;
    }

    repareForSerchResults()
    {
        this$0 = PlacesAutoCompleteAdapter.this;
        super();
    }
}
