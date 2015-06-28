// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Intent;
import android.location.Location;
import android.view.View;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.MsgBox;
import com.waze.NativeLocListener;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            ReportMenu, AddPlaceFlowActivity

class this._cls0
    implements android.view.stener
{

    final ReportMenu this$0;

    public void onClick(View view)
    {
        Analytics.log("PLACES_REPORT_MENU_PLACE_CLICKED", null, null);
        Location location = NativeLocListener.getInstance().getLastLocation();
        if (location == null || System.currentTimeMillis() - location.getTime() > 30000L)
        {
            MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SORRY__THERESS_NO_GPS_RECEPTION_IN_THIS_LOCATION__MAKE_SURE_YOU_ARE_OUTDOORS), false);
            return;
        }
        hideBottomNotification(false);
        Intent intent = new Intent(getContext(), com/waze/reports/AddPlaceFlowActivity);
        if (AppService.getMainActivity() != null)
        {
            AppService.getMainActivity().startActivityForResult(intent, 0);
        }
        dismiss();
    }

    tivity()
    {
        this$0 = ReportMenu.this;
        super();
    }
}
