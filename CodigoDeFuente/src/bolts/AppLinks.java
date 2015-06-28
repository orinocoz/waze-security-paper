// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package bolts;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

// Referenced classes of package bolts:
//            MeasurementEvent

public final class AppLinks
{

    static final String KEY_NAME_APPLINK_DATA = "al_applink_data";
    static final String KEY_NAME_EXTRAS = "extras";
    static final String KEY_NAME_TARGET = "target_url";

    public AppLinks()
    {
    }

    public static Bundle getAppLinkData(Intent intent)
    {
        return intent.getBundleExtra("al_applink_data");
    }

    public static Bundle getAppLinkExtras(Intent intent)
    {
        Bundle bundle = getAppLinkData(intent);
        if (bundle == null)
        {
            return null;
        } else
        {
            return bundle.getBundle("extras");
        }
    }

    public static Uri getTargetUrl(Intent intent)
    {
        Bundle bundle = getAppLinkData(intent);
        if (bundle != null)
        {
            String s = bundle.getString("target_url");
            if (s != null)
            {
                return Uri.parse(s);
            }
        }
        return intent.getData();
    }

    public static Uri getTargetUrlFromInboundIntent(Context context, Intent intent)
    {
        Bundle bundle = getAppLinkData(intent);
        Uri uri = null;
        if (bundle != null)
        {
            String s = bundle.getString("target_url");
            uri = null;
            if (s != null)
            {
                MeasurementEvent.sendBroadcastEvent(context, "al_nav_in", intent, null);
                uri = Uri.parse(s);
            }
        }
        return uri;
    }
}
