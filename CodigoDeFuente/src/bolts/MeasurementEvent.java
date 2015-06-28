// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package bolts;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package bolts:
//            AppLinks

public class MeasurementEvent
{

    public static final String APP_LINK_NAVIGATE_IN_EVENT_NAME = "al_nav_in";
    public static final String APP_LINK_NAVIGATE_OUT_EVENT_NAME = "al_nav_out";
    public static final String MEASUREMENT_EVENT_ARGS_KEY = "event_args";
    public static final String MEASUREMENT_EVENT_NAME_KEY = "event_name";
    public static final String MEASUREMENT_EVENT_NOTIFICATION_NAME = "com.parse.bolts.measurement_event";
    private Context appContext;
    private Bundle args;
    private String name;

    private MeasurementEvent(Context context, String s, Bundle bundle)
    {
        appContext = context.getApplicationContext();
        name = s;
        args = bundle;
    }

    private static Bundle getApplinkLogData(Context context, String s, Bundle bundle, Intent intent)
    {
        Bundle bundle1;
        ComponentName componentname;
        bundle1 = new Bundle();
        componentname = intent.resolveActivity(context.getPackageManager());
        if (componentname != null)
        {
            bundle1.putString("class", componentname.getShortClassName());
        }
        if (!"al_nav_out".equals(s)) goto _L2; else goto _L1
_L1:
        if (componentname != null)
        {
            bundle1.putString("package", componentname.getPackageName());
        }
        if (intent.getData() != null)
        {
            bundle1.putString("outputURL", intent.getData().toString());
        }
        if (intent.getScheme() != null)
        {
            bundle1.putString("outputURLScheme", intent.getScheme());
        }
_L7:
        Iterator iterator = bundle.keySet().iterator();
_L5:
        String s1;
        Object obj;
        Iterator iterator1;
label0:
        {
            if (!iterator.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
            s1 = (String)iterator.next();
            obj = bundle.get(s1);
            if (obj instanceof Bundle)
            {
                iterator1 = ((Bundle)obj).keySet().iterator();
                break label0;
            }
        }
          goto _L3
_L2:
        if ("al_nav_in".equals(s))
        {
            if (intent.getData() != null)
            {
                bundle1.putString("inputURL", intent.getData().toString());
            }
            if (intent.getScheme() != null)
            {
                bundle1.putString("inputURLScheme", intent.getScheme());
            }
        }
        continue; /* Loop/switch isn't completed */
        while (true) 
        {
            if (!iterator1.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            String s3 = (String)iterator1.next();
            String s4 = objectToJSONString(((Bundle)obj).get(s3));
            if (s1.equals("referer_app_link"))
            {
                if (s3.equalsIgnoreCase("url"))
                {
                    bundle1.putString("refererURL", s4);
                    continue;
                }
                if (s3.equalsIgnoreCase("app_name"))
                {
                    bundle1.putString("refererAppName", s4);
                    continue;
                }
                if (s3.equalsIgnoreCase("package"))
                {
                    bundle1.putString("sourceApplication", s4);
                    continue;
                }
            }
            bundle1.putString((new StringBuilder()).append(s1).append("/").append(s3).toString(), s4);
        }
_L3:
        String s2 = objectToJSONString(obj);
        if (s1.equals("target_url"))
        {
            Uri uri = Uri.parse(s2);
            bundle1.putString("targetURL", uri.toString());
            bundle1.putString("targetURLHost", uri.getHost());
        } else
        {
            bundle1.putString(s1, s2);
        }
        if (true) goto _L5; else goto _L4
_L4:
        return bundle1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static String objectToJSONString(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        if ((obj instanceof JSONArray) || (obj instanceof JSONObject))
        {
            return obj.toString();
        }
        String s;
        try
        {
            if (obj instanceof Collection)
            {
                return (new JSONArray((Collection)obj)).toString();
            }
            if (obj instanceof Map)
            {
                return (new JSONObject((Map)obj)).toString();
            }
            s = obj.toString();
        }
        catch (Exception exception)
        {
            return null;
        }
        return s;
    }

    private void sendBroadcast()
    {
        if (name == null)
        {
            Log.d(getClass().getName(), "Event name is required");
        }
        try
        {
            Class class1 = Class.forName("android.support.v4.content.LocalBroadcastManager");
            Method method = class1.getMethod("getInstance", new Class[] {
                android/content/Context
            });
            Method method1 = class1.getMethod("sendBroadcast", new Class[] {
                android/content/Intent
            });
            Object aobj[] = new Object[1];
            aobj[0] = appContext;
            Object obj = method.invoke(null, aobj);
            Intent intent = new Intent("com.parse.bolts.measurement_event");
            intent.putExtra("event_name", name);
            intent.putExtra("event_args", args);
            method1.invoke(obj, new Object[] {
                intent
            });
            return;
        }
        catch (Exception exception)
        {
            Log.d(getClass().getName(), "LocalBroadcastManager in android support library is required to raise bolts event.");
        }
    }

    static void sendBroadcastEvent(Context context, String s, Intent intent, Map map)
    {
        Bundle bundle = new Bundle();
        if (intent == null) goto _L2; else goto _L1
_L1:
        Bundle bundle1 = AppLinks.getAppLinkData(intent);
        if (bundle1 == null) goto _L4; else goto _L3
_L3:
        bundle = getApplinkLogData(context, s, bundle1, intent);
_L2:
        if (map != null)
        {
            String s1;
            for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); bundle.putString(s1, (String)map.get(s1)))
            {
                s1 = (String)iterator.next();
            }

        }
        break; /* Loop/switch isn't completed */
_L4:
        Uri uri = intent.getData();
        if (uri != null)
        {
            bundle.putString("intentData", uri.toString());
        }
        Bundle bundle2 = intent.getExtras();
        if (bundle2 != null)
        {
            Iterator iterator1 = bundle2.keySet().iterator();
            while (iterator1.hasNext()) 
            {
                String s2 = (String)iterator1.next();
                bundle.putString(s2, objectToJSONString(bundle2.get(s2)));
            }
        }
        if (true) goto _L2; else goto _L5
_L5:
        (new MeasurementEvent(context, s, bundle)).sendBroadcast();
        return;
    }
}
