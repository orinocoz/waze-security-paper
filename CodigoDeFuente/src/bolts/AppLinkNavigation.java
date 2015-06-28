// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package bolts;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.util.SparseArray;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package bolts:
//            AppLink, WebViewAppLinkResolver, AppLinkResolver, Task, 
//            MeasurementEvent, Continuation

public class AppLinkNavigation
{
    public static final class NavigationResult extends Enum
    {

        private static final NavigationResult $VALUES[];
        public static final NavigationResult APP;
        public static final NavigationResult FAILED;
        public static final NavigationResult WEB;
        private String code;
        private boolean succeeded;

        public static NavigationResult valueOf(String s)
        {
            return (NavigationResult)Enum.valueOf(bolts/AppLinkNavigation$NavigationResult, s);
        }

        public static NavigationResult[] values()
        {
            return (NavigationResult[])$VALUES.clone();
        }

        public String getCode()
        {
            return code;
        }

        public boolean isSucceeded()
        {
            return succeeded;
        }

        static 
        {
            FAILED = new NavigationResult("FAILED", 0, "failed", false);
            WEB = new NavigationResult("WEB", 1, "web", true);
            APP = new NavigationResult("APP", 2, "app", true);
            NavigationResult anavigationresult[] = new NavigationResult[3];
            anavigationresult[0] = FAILED;
            anavigationresult[1] = WEB;
            anavigationresult[2] = APP;
            $VALUES = anavigationresult;
        }

        private NavigationResult(String s, int i, String s1, boolean flag)
        {
            super(s, i);
            code = s1;
            succeeded = flag;
        }
    }


    private static final String KEY_NAME_REFERER_APP_LINK = "referer_app_link";
    private static final String KEY_NAME_REFERER_APP_LINK_APP_NAME = "app_name";
    private static final String KEY_NAME_REFERER_APP_LINK_PACKAGE = "package";
    private static final String KEY_NAME_USER_AGENT = "user_agent";
    private static final String KEY_NAME_VERSION = "version";
    private static final String VERSION = "1.0";
    private static AppLinkResolver defaultResolver;
    private final AppLink appLink;
    private final Bundle appLinkData;
    private final Bundle extras;

    public AppLinkNavigation(AppLink applink, Bundle bundle, Bundle bundle1)
    {
        if (applink == null)
        {
            throw new IllegalArgumentException("appLink must not be null.");
        }
        if (bundle == null)
        {
            bundle = new Bundle();
        }
        if (bundle1 == null)
        {
            bundle1 = new Bundle();
        }
        appLink = applink;
        extras = bundle;
        appLinkData = bundle1;
    }

    private Bundle buildAppLinkDataForNavigation(Context context)
    {
        Bundle bundle = new Bundle();
        Bundle bundle1 = new Bundle();
        if (context != null)
        {
            String s = context.getPackageName();
            if (s != null)
            {
                bundle1.putString("package", s);
            }
            ApplicationInfo applicationinfo = context.getApplicationInfo();
            if (applicationinfo != null)
            {
                String s1 = context.getString(applicationinfo.labelRes);
                if (s1 != null)
                {
                    bundle1.putString("app_name", s1);
                }
            }
        }
        bundle.putAll(getAppLinkData());
        bundle.putString("target_url", getAppLink().getSourceUrl().toString());
        bundle.putString("version", "1.0");
        bundle.putString("user_agent", "Bolts Android 1.1.2");
        bundle.putBundle("referer_app_link", bundle1);
        bundle.putBundle("extras", getExtras());
        return bundle;
    }

    public static AppLinkResolver getDefaultResolver()
    {
        return defaultResolver;
    }

    private JSONObject getJSONForBundle(Bundle bundle)
        throws JSONException
    {
        JSONObject jsonobject = new JSONObject();
        String s;
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext(); jsonobject.put(s, getJSONValue(bundle.get(s))))
        {
            s = (String)iterator.next();
        }

        return jsonobject;
    }

    private Object getJSONValue(Object obj)
        throws JSONException
    {
        if (!(obj instanceof Bundle)) goto _L2; else goto _L1
_L1:
        Object obj1 = getJSONForBundle((Bundle)obj);
_L4:
        return obj1;
_L2:
        if (obj instanceof CharSequence)
        {
            return obj.toString();
        }
        if (!(obj instanceof List))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = new JSONArray();
        Iterator iterator = ((List)obj).iterator();
        while (iterator.hasNext()) 
        {
            ((JSONArray) (obj1)).put(getJSONValue(iterator.next()));
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!(obj instanceof SparseArray))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = new JSONArray();
        SparseArray sparsearray = (SparseArray)obj;
        int i = 0;
        while (i < sparsearray.size()) 
        {
            ((JSONArray) (obj1)).put(sparsearray.keyAt(i), getJSONValue(sparsearray.valueAt(i)));
            i++;
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (obj instanceof Character)
        {
            return obj.toString();
        }
        if (obj instanceof Boolean)
        {
            return obj;
        }
        if (obj instanceof Number)
        {
            if ((obj instanceof Double) || (obj instanceof Float))
            {
                return Double.valueOf(((Number)obj).doubleValue());
            } else
            {
                return Long.valueOf(((Number)obj).longValue());
            }
        }
        if (!(obj instanceof boolean[]))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = new JSONArray();
        boolean aflag[] = (boolean[])(boolean[])obj;
        int j = aflag.length;
        int k = 0;
        while (k < j) 
        {
            ((JSONArray) (obj1)).put(getJSONValue(Boolean.valueOf(aflag[k])));
            k++;
        }
        if (true) goto _L4; else goto _L6
_L6:
        if (!(obj instanceof char[]))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = new JSONArray();
        char ac[] = (char[])(char[])obj;
        int l = ac.length;
        int i1 = 0;
        while (i1 < l) 
        {
            ((JSONArray) (obj1)).put(getJSONValue(Character.valueOf(ac[i1])));
            i1++;
        }
        if (true) goto _L4; else goto _L7
_L7:
        if (!(obj instanceof CharSequence[]))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = new JSONArray();
        CharSequence acharsequence[] = (CharSequence[])(CharSequence[])obj;
        int j1 = acharsequence.length;
        int k1 = 0;
        while (k1 < j1) 
        {
            ((JSONArray) (obj1)).put(getJSONValue(acharsequence[k1]));
            k1++;
        }
        if (true) goto _L4; else goto _L8
_L8:
        if (!(obj instanceof double[]))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = new JSONArray();
        double ad[] = (double[])(double[])obj;
        int l1 = ad.length;
        int i2 = 0;
        while (i2 < l1) 
        {
            ((JSONArray) (obj1)).put(getJSONValue(Double.valueOf(ad[i2])));
            i2++;
        }
        if (true) goto _L4; else goto _L9
_L9:
        if (!(obj instanceof float[]))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = new JSONArray();
        float af[] = (float[])(float[])obj;
        int j2 = af.length;
        int k2 = 0;
        while (k2 < j2) 
        {
            ((JSONArray) (obj1)).put(getJSONValue(Float.valueOf(af[k2])));
            k2++;
        }
        if (true) goto _L4; else goto _L10
_L10:
        if (!(obj instanceof int[]))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = new JSONArray();
        int ai[] = (int[])(int[])obj;
        int l2 = ai.length;
        int i3 = 0;
        while (i3 < l2) 
        {
            ((JSONArray) (obj1)).put(getJSONValue(Integer.valueOf(ai[i3])));
            i3++;
        }
        if (true) goto _L4; else goto _L11
_L11:
        if (!(obj instanceof long[]))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = new JSONArray();
        long al[] = (long[])(long[])obj;
        int j3 = al.length;
        int k3 = 0;
        while (k3 < j3) 
        {
            ((JSONArray) (obj1)).put(getJSONValue(Long.valueOf(al[k3])));
            k3++;
        }
        if (true) goto _L4; else goto _L12
_L12:
        if (!(obj instanceof short[]))
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = new JSONArray();
        short aword0[] = (short[])(short[])obj;
        int l3 = aword0.length;
        int i4 = 0;
        while (i4 < l3) 
        {
            ((JSONArray) (obj1)).put(getJSONValue(Short.valueOf(aword0[i4])));
            i4++;
        }
        if (true) goto _L4; else goto _L13
_L13:
        if (obj instanceof String[])
        {
            obj1 = new JSONArray();
            String as[] = (String[])(String[])obj;
            int j4 = as.length;
            int k4 = 0;
            while (k4 < j4) 
            {
                ((JSONArray) (obj1)).put(getJSONValue(as[k4]));
                k4++;
            }
        } else
        {
            return null;
        }
        if (true) goto _L4; else goto _L14
_L14:
    }

    private static AppLinkResolver getResolver(Context context)
    {
        if (getDefaultResolver() != null)
        {
            return getDefaultResolver();
        } else
        {
            return new WebViewAppLinkResolver(context);
        }
    }

    public static NavigationResult navigate(Context context, AppLink applink)
    {
        return (new AppLinkNavigation(applink, null, null)).navigate(context);
    }

    public static Task navigateInBackground(Context context, Uri uri)
    {
        return navigateInBackground(context, uri, getResolver(context));
    }

    public static Task navigateInBackground(Context context, Uri uri, AppLinkResolver applinkresolver)
    {
        return applinkresolver.getAppLinkFromUrlInBackground(uri).onSuccess(new Continuation(context) {

            final Context val$context;

            public NavigationResult then(Task task)
                throws Exception
            {
                return AppLinkNavigation.navigate(context, (AppLink)task.getResult());
            }

            public volatile Object then(Task task)
                throws Exception
            {
                return then(task);
            }

            
            {
                context = context1;
                super();
            }
        }, Task.UI_THREAD_EXECUTOR);
    }

    public static Task navigateInBackground(Context context, String s)
    {
        return navigateInBackground(context, s, getResolver(context));
    }

    public static Task navigateInBackground(Context context, String s, AppLinkResolver applinkresolver)
    {
        return navigateInBackground(context, Uri.parse(s), applinkresolver);
    }

    public static Task navigateInBackground(Context context, URL url)
    {
        return navigateInBackground(context, url, getResolver(context));
    }

    public static Task navigateInBackground(Context context, URL url, AppLinkResolver applinkresolver)
    {
        return navigateInBackground(context, Uri.parse(url.toString()), applinkresolver);
    }

    private void sendAppLinkNavigateEventBroadcast(Context context, Intent intent, NavigationResult navigationresult, JSONException jsonexception)
    {
        HashMap hashmap = new HashMap();
        if (jsonexception != null)
        {
            hashmap.put("error", jsonexception.getLocalizedMessage());
        }
        String s;
        if (navigationresult.isSucceeded())
        {
            s = "1";
        } else
        {
            s = "0";
        }
        hashmap.put("success", s);
        hashmap.put("type", navigationresult.getCode());
        MeasurementEvent.sendBroadcastEvent(context, "al_nav_out", intent, hashmap);
    }

    public static void setDefaultResolver(AppLinkResolver applinkresolver)
    {
        defaultResolver = applinkresolver;
    }

    public AppLink getAppLink()
    {
        return appLink;
    }

    public Bundle getAppLinkData()
    {
        return appLinkData;
    }

    public Bundle getExtras()
    {
        return extras;
    }

    public NavigationResult navigate(Context context)
    {
        Bundle bundle;
        Intent intent;
        NavigationResult navigationresult;
        Intent intent1;
        PackageManager packagemanager = context.getPackageManager();
        bundle = buildAppLinkDataForNavigation(context);
        Iterator iterator = getAppLink().getTargets().iterator();
        do
        {
            boolean flag = iterator.hasNext();
            intent = null;
            if (!flag)
            {
                break;
            }
            AppLink.Target target = (AppLink.Target)iterator.next();
            Intent intent2 = new Intent("android.intent.action.VIEW");
            if (target.getUrl() != null)
            {
                intent2.setData(target.getUrl());
            } else
            {
                intent2.setData(appLink.getSourceUrl());
            }
            intent2.setPackage(target.getPackageName());
            if (target.getClassName() != null)
            {
                intent2.setClassName(target.getPackageName(), target.getClassName());
            }
            intent2.putExtra("al_applink_data", bundle);
            if (packagemanager.resolveActivity(intent2, 0x10000) == null)
            {
                continue;
            }
            intent = intent2;
            break;
        } while (true);
        navigationresult = NavigationResult.FAILED;
        if (intent == null) goto _L2; else goto _L1
_L1:
        intent1 = intent;
        navigationresult = NavigationResult.APP;
_L4:
        sendAppLinkNavigateEventBroadcast(context, intent1, navigationresult, null);
        if (intent1 != null)
        {
            context.startActivity(intent1);
        }
        return navigationresult;
_L2:
        Uri uri = getAppLink().getWebUrl();
        intent1 = null;
        if (uri != null)
        {
            JSONObject jsonobject;
            try
            {
                jsonobject = getJSONForBundle(bundle);
            }
            catch (JSONException jsonexception)
            {
                sendAppLinkNavigateEventBroadcast(context, intent, NavigationResult.FAILED, jsonexception);
                throw new RuntimeException(jsonexception);
            }
            intent1 = new Intent("android.intent.action.VIEW", uri.buildUpon().appendQueryParameter("al_applink_data", jsonobject.toString()).build());
            navigationresult = NavigationResult.WEB;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
