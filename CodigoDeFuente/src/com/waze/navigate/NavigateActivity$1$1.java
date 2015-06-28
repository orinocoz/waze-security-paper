// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import com.waze.NativeManager;
import com.waze.autocomplete.PlacesAutoCompleteAdapter;

// Referenced classes of package com.waze.navigate:
//            NavigateActivity, AddressItem

class this._cls1
    implements com.waze.autocomplete.pter.IPrepareForSerchResults
{

    final andlerForAutocomplete this$1;

    public void onPrepareForSerchResultPV¨	    {
        SetHandlerForAutocomplete();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/NavigateActivity$1

/* anonymous class */
    class NavigateActivity._cls1
        implements DriveToNativeManager.DriveToGetAddressItemArrayCallback
    {

        final NavigateActivity this$0;

        public void getAddressItemArrayCallback(AddressItem aaddressitem[])
        {
            NavigateActivity.access$0(NavigateActivity.this, aaddressitem);
            NavigateActivity.access$3(NavigateActivity.this, new PlacesAutoCompleteAdapter(NavigateActivity.this, 0x109000a, NavigateActivity.access$1(NavigateActivity.this), NavigateActivity.access$2(NavigateActivity.this).getApiKey(), searchBox, new NavigateActivity._cls1._cls1()));
            searchBox.setAdapter(NavigateActivity.access$4(NavigateActivity.this));
            if (mCalendarAI == null) goto _L2; else goto _L1
_L1:
            if (mCalendarAI.getAddress() == null || mCalendarAI.getAddress().isEmpty()) goto _L4; else goto _L3
_L3:
            searchBox.setText(mCalendarAI.getAddress());
            searchBox.requestFocus();
            searchBox.setSelection(mCalendarAI.getAddress().length());
_L6:
            NavigateActivity.access$4(NavigateActivity.this).setIsCalendar(true);
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
    }

}
