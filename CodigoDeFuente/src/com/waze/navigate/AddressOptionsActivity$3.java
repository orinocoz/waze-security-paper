// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.os.Handler;
import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity, AddressItem, DriveToNativeManager

class this._cls0
    implements android.view.ty._cls3
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
        Analytics.log("CALENDAR_SAVE", "VAUE", AddressOptionsActivity.access$1(AddressOptionsActivity.this).getMeetingId());
        if (AddressOptionsActivity.access$9(AddressOptionsActivity.this).getisRecurring())
        {
            AddressOptionsActivity.access$10(AddressOptionsActivity.this).OpenProgressIconPopup(AddressOptionsActivity.access$10(AddressOptionsActivity.this).getLanguageString(DisplayStrings.DS_LOCATION_SAVED_ALL_RECURRING_EVENTS), "sign_up_big_v");
            i = 2000;
        } else
        {
            AddressOptionsActivity.access$10(AddressOptionsActivity.this).OpenProgressIconPopup(AddressOptionsActivity.access$10(AddressOptionsActivity.this).getLanguageString(DisplayStrings.DS_LOCATION_SAVED), "sign_up_big_v");
            i = 1000;
        }
        (new Handler()).postDelayed(new Runnable() {

            final AddressOptionsActivity._cls3 this$1;

            public void run()
            {
                AddressOptionsActivity.access$10(this$0).CloseProgressPopup();
                Intent intent = new Intent();
                setResult(32783, intent);
                finish();
            }

            
            {
                this$1 = AddressOptionsActivity._cls3.this;
                super();
            }
        }, i);
    }


    _cls1.this._cls1()
    {
        this$0 = AddressOptionsActivity.this;
        super();
    }
}
