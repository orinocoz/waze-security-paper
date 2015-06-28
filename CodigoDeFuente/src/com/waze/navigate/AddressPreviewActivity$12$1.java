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
//            AddressPreviewActivity, AddressItem, DriveToNativeManager

class this._cls1
    implements Runnable
{

    final h this$1;

    public void run()
    {
        AddressPreviewActivity.access$20(_fld0).CloseProgressPopup();
        Intent intent = new Intent();
        setResult(32783, intent);
        AddressPreviewActivity.access$22(_fld0, true);
        finish();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/AddressPreviewActivity$12

/* anonymous class */
    class AddressPreviewActivity._cls12
        implements android.view.View.OnClickListener
    {

        final AddressPreviewActivity this$0;

        public void onClick(View view)
        {
            int i;
            if (AddressPreviewActivity.access$6(AddressPreviewActivity.this).index > 0)
            {
                AddressPreviewActivity.access$10(AddressPreviewActivity.this).CalendarAddressVerifiedByIndex(AddressPreviewActivity.access$6(AddressPreviewActivity.this).index, AddressPreviewActivity.access$6(AddressPreviewActivity.this).getMeetingId());
            } else
            {
                AddressPreviewActivity.access$10(AddressPreviewActivity.this).CalendarAddressVerified(AddressPreviewActivity.access$6(AddressPreviewActivity.this).getAddress(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).getMeetingId(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).VanueID);
            }
            Analytics.log("CALENDAR_SAVE", "VAUE", AddressPreviewActivity.access$6(AddressPreviewActivity.this).getMeetingId());
            if (AddressPreviewActivity.access$21(AddressPreviewActivity.this).getisRecurring())
            {
                AddressPreviewActivity.access$20(AddressPreviewActivity.this).OpenProgressIconPopup(AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_LOCATION_SAVED_ALL_RECURRING_EVENTS), "sign_up_big_v");
                i = 2000;
            } else
            {
                AddressPreviewActivity.access$20(AddressPreviewActivity.this).OpenProgressIconPopup(AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_LOCATION_SAVED), "sign_up_big_v");
                i = 1000;
            }
            (new Handler()).postDelayed(new AddressPreviewActivity._cls12._cls1(), i);
        }


            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
    }

}
