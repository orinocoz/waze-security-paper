// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.os.Handler;
import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity, DriveToNativeManager, AddressItem

class this._cls1
    implements Runnable
{

    final sh this$1;

    public void run()
    {
        AddressOptionsActivity.access$10(_fld0).CloseProgressPopup();
        AddressOptionsActivity.access$0(_fld0).navigate(AddressOptionsActivity.access$1(_fld0), null);
        setResult(-1);
        finish();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/AddressOptionsActivity$4

/* anonymous class */
    class AddressOptionsActivity._cls4
        implements android.view.View.OnClickListener
    {

        final AddressOptionsActivity this$0;

        public void onClick(View view)
        {
            int i;
            if (AddressOptionsActivity.access$1(AddressOptionsActivity.this).index > 0)
            {
                AddressOptionsActivity.access$0(AddressOptionsActivity.this).CalendarAddressVerifiedByIndex(AddressOptionsActivity.access$1(AddressOptionsActivity.this).index, AddressOptionsActivity.access$1(AddressOptionsActivity.this).getMeetingId());
            } else
            {
                AddressOptionsActivity.access$0(AddressOptionsActivity.this).CalendarAddressVerified(AddressOptionsActivity.access$1(AddressOptionsActivity.this).getAddress(), AddressOptionsActivity.access$1(AddressOptionsActivity.this).getLocationX().intValue(), AddressOptionsActivity.access$1(AddressOptionsActivity.this).getLocationY().intValue(), AddressOptionsActivity.access$1(AddressOptionsActivity.this).getMeetingId(), AddressOptionsActivity.access$1(AddressOptionsActivity.this).VanueID);
            }
            Analytics.log("CALENDAR_GO", "VAUE", AddressOptionsActivity.access$1(AddressOptionsActivity.this).getMeetingId());
            Analytics.log("DRIVE_TYPE", "VAUE", "CALENDAR");
            if (AddressOptionsActivity.access$9(AddressOptionsActivity.this).getisRecurring())
            {
                AddressOptionsActivity.access$10(AddressOptionsActivity.this).OpenProgressIconPopup(AddressOptionsActivity.access$10(AddressOptionsActivity.this).getLanguageString(DisplayStrings.DS_LOCATION_SAVED_ALL_RECURRING_EVENTS), "sign_up_big_v");
                i = 2000;
            } else
            {
                AddressOptionsActivity.access$10(AddressOptionsActivity.this).OpenProgressIconPopup(AddressOptionsActivity.access$10(AddressOptionsActivity.this).getLanguageString(DisplayStrings.DS_LOCATION_SAVED), "sign_up_big_v");
                i = 1000;
            }
            (new Handler()).postDelayed(new AddressOptionsActivity._cls4._cls1(), i);
        }


            
            {
                this$0 = AddressOptionsActivity.this;
                super();
            }
    }

}
