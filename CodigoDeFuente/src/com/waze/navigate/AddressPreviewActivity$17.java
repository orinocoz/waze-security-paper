// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.widget.ProgressBar;
import com.waze.NativeLocListener;
import com.waze.NativeManager;
import com.waze.reports.VenueData;
import com.waze.settings.SettingsNativeManager;
import java.util.Locale;
import org.json.JSONObject;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem

class 
    implements com.waze.essCallback
{

    final AddressPreviewActivity this$0;
    private final  val$ad;

    public void onWebViewPageFinished()
    {
        android.location.Location location = NativeLocListener.getInstance().getLastLocation();
        int i = 0;
        int j = 0;
        if (location != null)
        {
            com.waze.cation cation = NativeLocListener.GetNativeLocation(location);
            j = cation.mLongtitude;
            i = cation.mLatitude;
        }
        String s = "";
        if (AddressPreviewActivity.access$24(AddressPreviewActivity.this) != null)
        {
            s = AddressPreviewActivity.access$24(AddressPreviewActivity.this).event_info;
        }
        String s1 = (new Locale((new SettingsNativeManager()).getLanguagesLocaleNTV())).toString();
        String s2 = "";
        JSONObject jsonobject;
        Object aobj[];
        String s3;
        String s4;
        try
        {
            jsonobject = new JSONObject();
        }
        catch (Exception exception1)
        {
            continue; /* Loop/switch isn't completed */
        }
        jsonobject.put("sessionid", AddressPreviewActivity.access$20(AddressPreviewActivity.this).getServerSessionId());
        jsonobject.put("cookie", AddressPreviewActivity.access$20(AddressPreviewActivity.this).getServerCookie());
        jsonobject.put("venue_context", AddressPreviewActivity.access$6(AddressPreviewActivity.this).venueData.context);
        jsonobject.put("lon", j);
        jsonobject.put("lat", i);
        jsonobject.put("locale", s1);
        jsonobject.put("rtserver-id", AddressPreviewActivity.access$20(AddressPreviewActivity.this).getRTServerId());
        jsonobject.put("source", s);
        s4 = jsonobject.toString();
        s2 = s4;
_L2:
        aobj = new Object[2];
        aobj[0] = val$ad.query;
        aobj[1] = s2;
        s3 = String.format("W.setOffer(%s, %s)", aobj);
        AddressPreviewActivity.access$25(AddressPreviewActivity.this, AddressPreviewActivity.access$3(AddressPreviewActivity.this), 1, s3);
        AddressPreviewActivity.access$13(AddressPreviewActivity.this).setVisibility(8);
        return;
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void onWebViewPageStarted()
    {
        AddressPreviewActivity.access$13(AddressPreviewActivity.this).setVisibility(0);
    }

    ()
    {
        this$0 = final_addresspreviewactivity;
        val$ad = .this;
        super();
    }
}
