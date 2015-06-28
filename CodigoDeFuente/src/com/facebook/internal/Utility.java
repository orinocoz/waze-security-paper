// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.FacebookException;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.Settings;
import com.facebook.model.GraphObject;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.facebook.internal:
//            ImageDownloader, Validate, AttributionIdentifiers

public final class Utility
{
    public static class DialogFeatureConfig
    {

        private String dialogName;
        private Uri fallbackUrl;
        private String featureName;
        private int featureVersionSpec[];

        private static DialogFeatureConfig parseDialogConfig(JSONObject jsonobject)
        {
            String s = jsonobject.optString("name");
            String as[];
            if (!Utility.isNullOrEmpty(s))
            {
                if ((as = s.split("\\|")).length == 2)
                {
                    String s1 = as[0];
                    String s2 = as[1];
                    if (!Utility.isNullOrEmpty(s1) && !Utility.isNullOrEmpty(s2))
                    {
                        String s3 = jsonobject.optString("url");
                        boolean flag = Utility.isNullOrEmpty(s3);
                        Uri uri = null;
                        if (!flag)
                        {
                            uri = Uri.parse(s3);
                        }
                        return new DialogFeatureConfig(s1, s2, uri, parseVersionSpec(jsonobject.optJSONArray("versions")));
                    }
                }
            }
            return null;
        }

        private static int[] parseVersionSpec(JSONArray jsonarray)
        {
            int ai[] = null;
            if (jsonarray == null) goto _L2; else goto _L1
_L1:
            int i;
            int j;
            i = jsonarray.length();
            ai = new int[i];
            j = 0;
_L5:
            if (j < i) goto _L3; else goto _L2
_L2:
            return ai;
_L3:
            int k;
            String s;
            k = jsonarray.optInt(j, -1);
            if (k != -1)
            {
                break MISSING_BLOCK_LABEL_64;
            }
            s = jsonarray.optString(j);
            if (Utility.isNullOrEmpty(s))
            {
                break MISSING_BLOCK_LABEL_64;
            }
            int l = Integer.parseInt(s);
            k = l;
_L6:
            ai[j] = k;
            j++;
            if (true) goto _L5; else goto _L4
_L4:
            NumberFormatException numberformatexception;
            numberformatexception;
            Utility.logd("FacebookSDK", numberformatexception);
            k = -1;
              goto _L6
        }

        public String getDialogName()
        {
            return dialogName;
        }

        public Uri getFallbackUrl()
        {
            return fallbackUrl;
        }

        public String getFeatureName()
        {
            return featureName;
        }

        public int[] getVersionSpec()
        {
            return featureVersionSpec;
        }


        private DialogFeatureConfig(String s, String s1, Uri uri, int ai[])
        {
            dialogName = s;
            featureName = s1;
            fallbackUrl = uri;
            featureVersionSpec = ai;
        }
    }

    public static class FetchedAppSettings
    {

        private Map dialogConfigMap;
        private String nuxContent;
        private boolean nuxEnabled;
        private boolean supportsAttribution;
        private boolean supportsImplicitLogging;

        public Map getDialogConfigurations()
        {
            return dialogConfigMap;
        }

        public String getNuxContent()
        {
            return nuxContent;
        }

        public boolean getNuxEnabled()
        {
            return nuxEnabled;
        }

        public boolean supportsAttribution()
        {
            return supportsAttribution;
        }

        public boolean supportsImplicitLogging()
        {
            return supportsImplicitLogging;
        }

        private FetchedAppSettings(boolean flag, boolean flag1, String s, boolean flag2, Map map)
        {
            supportsAttribution = flag;
            supportsImplicitLogging = flag1;
            nuxContent = s;
            nuxEnabled = flag2;
            dialogConfigMap = map;
        }

        FetchedAppSettings(boolean flag, boolean flag1, String s, boolean flag2, Map map, FetchedAppSettings fetchedappsettings)
        {
            this(flag, flag1, s, flag2, map);
        }
    }


    private static final String APPLICATION_FIELDS = "fields";
    private static final String APP_SETTINGS_PREFS_KEY_FORMAT = "com.facebook.internal.APP_SETTINGS.%s";
    private static final String APP_SETTINGS_PREFS_STORE = "com.facebook.internal.preferences.APP_SETTINGS";
    private static final String APP_SETTING_DIALOG_CONFIGS = "android_dialog_configs";
    private static final String APP_SETTING_FIELDS[] = {
        "supports_attribution", "supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs"
    };
    private static final String APP_SETTING_NUX_CONTENT = "gdpv4_nux_content";
    private static final String APP_SETTING_NUX_ENABLED = "gdpv4_nux_enabled";
    private static final String APP_SETTING_SUPPORTS_ATTRIBUTION = "supports_attribution";
    private static final String APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING = "supports_implicit_sdk_logging";
    public static final int DEFAULT_STREAM_BUFFER_SIZE = 8192;
    private static final String DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR = "\\|";
    private static final String DIALOG_CONFIG_NAME_KEY = "name";
    private static final String DIALOG_CONFIG_URL_KEY = "url";
    private static final String DIALOG_CONFIG_VERSIONS_KEY = "versions";
    private static final String EXTRA_APP_EVENTS_INFO_FORMAT_VERSION = "a1";
    private static final String HASH_ALGORITHM_MD5 = "MD5";
    private static final String HASH_ALGORITHM_SHA1 = "SHA-1";
    static final String LOG_TAG = "FacebookSDK";
    private static final String URL_SCHEME = "https";
    private static final String UTF8 = "UTF-8";
    private static Map fetchedAppSettings = new ConcurrentHashMap();
    private static AsyncTask initialAppSettingsLoadTask;

    public Utility()
    {
    }

    public static boolean areObjectsEqual(Object obj, Object obj1)
    {
        if (obj == null)
        {
            return obj1 == null;
        } else
        {
            return obj.equals(obj1);
        }
    }

    public static transient ArrayList arrayList(Object aobj[])
    {
        ArrayList arraylist = new ArrayList(aobj.length);
        int i = aobj.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return arraylist;
            }
            arraylist.add(aobj[j]);
            j++;
        } while (true);
    }

    public static transient List asListNoNulls(Object aobj[])
    {
        ArrayList arraylist = new ArrayList();
        int i = aobj.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return arraylist;
            }
            Object obj = aobj[j];
            if (obj != null)
            {
                arraylist.add(obj);
            }
            j++;
        } while (true);
    }

    public static Uri buildUri(String s, String s1, Bundle bundle)
    {
        android.net.Uri.Builder builder = new android.net.Uri.Builder();
        builder.scheme("https");
        builder.authority(s);
        builder.path(s1);
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            String s2;
            Object obj;
            do
            {
                if (!iterator.hasNext())
                {
                    return builder.build();
                }
                s2 = (String)iterator.next();
                obj = bundle.get(s2);
            } while (!(obj instanceof String));
            builder.appendQueryParameter(s2, (String)obj);
        } while (true);
    }

    public static void clearCaches(Context context)
    {
        ImageDownloader.clearCache(context);
    }

    private static void clearCookiesForDomain(Context context, String s)
    {
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookiemanager = CookieManager.getInstance();
        String s1 = cookiemanager.getCookie(s);
        if (s1 == null)
        {
            return;
        }
        String as[] = s1.split(";");
        int i = as.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                cookiemanager.removeExpiredCookie();
                return;
            }
            String as1[] = as[j].split("=");
            if (as1.length > 0)
            {
                cookiemanager.setCookie(s, (new StringBuilder(String.valueOf(as1[0].trim()))).append("=;expires=Sat, 1 Jan 2000 00:00:01 UTC;").toString());
            }
            j++;
        } while (true);
    }

    public static void clearFacebookCookies(Context context)
    {
        clearCookiesForDomain(context, "facebook.com");
        clearCookiesForDomain(context, ".facebook.com");
        clearCookiesForDomain(context, "https://facebook.com");
        clearCookiesForDomain(context, "https://.facebook.com");
    }

    public static void closeQuietly(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        IOException ioexception;
        ioexception;
    }

    public static String coerceValueIfNullOrEmpty(String s, String s1)
    {
        if (isNullOrEmpty(s))
        {
            return s1;
        } else
        {
            return s;
        }
    }

    static Map convertJSONObjectToHashMap(JSONObject jsonobject)
    {
        HashMap hashmap = new HashMap();
        JSONArray jsonarray = jsonobject.names();
        int i = 0;
        do
        {
            if (i >= jsonarray.length())
            {
                return hashmap;
            }
            try
            {
                String s = jsonarray.getString(i);
                Object obj = jsonobject.get(s);
                if (obj instanceof JSONObject)
                {
                    obj = convertJSONObjectToHashMap((JSONObject)obj);
                }
                hashmap.put(s, obj);
            }
            catch (JSONException jsonexception) { }
            i++;
        } while (true);
    }

    public static void deleteDirectory(File file)
    {
        if (!file.exists())
        {
            return;
        }
        if (!file.isDirectory()) goto _L2; else goto _L1
_L1:
        File afile[];
        int i;
        int j;
        afile = file.listFiles();
        i = afile.length;
        j = 0;
_L5:
        if (j < i) goto _L3; else goto _L2
_L2:
        file.delete();
        return;
_L3:
        deleteDirectory(afile[j]);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static void disconnectQuietly(URLConnection urlconnection)
    {
        if (urlconnection instanceof HttpURLConnection)
        {
            ((HttpURLConnection)urlconnection).disconnect();
        }
    }

    public static String getActivityName(Context context)
    {
        if (context == null)
        {
            return "null";
        }
        if (context == context.getApplicationContext())
        {
            return "unknown";
        } else
        {
            return context.getClass().getSimpleName();
        }
    }

    private static GraphObject getAppSettingsQueryResponse(String s)
    {
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join(",", APP_SETTING_FIELDS));
        Request request = Request.newGraphPathRequest(null, s, null);
        request.setSkipClientToken(true);
        request.setParameters(bundle);
        return request.executeAndWait().getGraphObject();
    }

    public static DialogFeatureConfig getDialogFeatureConfig(String s, String s1, String s2)
    {
        FetchedAppSettings fetchedappsettings;
        Map map;
        if (!isNullOrEmpty(s1) && !isNullOrEmpty(s2))
        {
            if ((fetchedappsettings = (FetchedAppSettings)fetchedAppSettings.get(s)) != null && (map = (Map)fetchedappsettings.getDialogConfigurations().get(s1)) != null)
            {
                return (DialogFeatureConfig)map.get(s2);
            }
        }
        return null;
    }

    public static String getHashedDeviceAndAppID(Context context, String s)
    {
        String s1 = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (s1 == null)
        {
            return null;
        } else
        {
            return sha1hash((new StringBuilder(String.valueOf(s1))).append(s).toString());
        }
    }

    public static String getMetadataApplicationId(Context context)
    {
        Validate.notNull(context, "context");
        Settings.loadDefaultsFromMetadata(context);
        return Settings.getApplicationId();
    }

    public static transient Method getMethodQuietly(Class class1, String s, Class aclass[])
    {
        Method method;
        try
        {
            method = class1.getMethod(s, aclass);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return null;
        }
        return method;
    }

    public static transient Method getMethodQuietly(String s, String s1, Class aclass[])
    {
        Method method;
        try
        {
            method = getMethodQuietly(Class.forName(s), s1, aclass);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return null;
        }
        return method;
    }

    public static Object getStringPropertyAsJSON(JSONObject jsonobject, String s, String s1)
        throws JSONException
    {
        Object obj = jsonobject.opt(s);
        if (obj != null && (obj instanceof String))
        {
            obj = (new JSONTokener((String)obj)).nextValue();
        }
        if (obj != null && !(obj instanceof JSONObject) && !(obj instanceof JSONArray))
        {
            if (s1 != null)
            {
                JSONObject jsonobject1 = new JSONObject();
                jsonobject1.putOpt(s1, obj);
                return jsonobject1;
            } else
            {
                throw new FacebookException("Got an unexpected non-JSON object.");
            }
        } else
        {
            return obj;
        }
    }

    private static String hashBytes(MessageDigest messagedigest, byte abyte0[])
    {
        messagedigest.update(abyte0);
        byte abyte1[] = messagedigest.digest();
        StringBuilder stringbuilder = new StringBuilder();
        int i = abyte1.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return stringbuilder.toString();
            }
            byte byte0 = abyte1[j];
            stringbuilder.append(Integer.toHexString(0xf & byte0 >> 4));
            stringbuilder.append(Integer.toHexString(0xf & byte0 >> 0));
            j++;
        } while (true);
    }

    private static String hashWithAlgorithm(String s, String s1)
    {
        return hashWithAlgorithm(s, s1.getBytes());
    }

    private static String hashWithAlgorithm(String s, byte abyte0[])
    {
        MessageDigest messagedigest;
        try
        {
            messagedigest = MessageDigest.getInstance(s);
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            return null;
        }
        return hashBytes(messagedigest, abyte0);
    }

    public static int[] intersectRanges(int ai[], int ai1[])
    {
        int ai2[];
        int i;
        int j;
        int k;
        if (ai == null)
        {
            return ai1;
        }
        if (ai1 == null)
        {
            return ai;
        }
        ai2 = new int[ai.length + ai1.length];
        i = 0;
        j = 0;
        k = 0;
_L3:
        if (j < ai.length && k < ai1.length) goto _L2; else goto _L1
_L1:
        return Arrays.copyOf(ai2, i);
_L2:
        int j2;
        int l = 0x80000000;
        int i1 = 0x7fffffff;
        int j1 = ai[j];
        int k1 = 0x7fffffff;
        int l1 = ai1[k];
        int i2 = 0x7fffffff;
        if (j < -1 + ai.length)
        {
            k1 = ai[j + 1];
        }
        if (k < -1 + ai1.length)
        {
            i2 = ai1[k + 1];
        }
        if (j1 < l1)
        {
            if (k1 > l1)
            {
                l = l1;
                if (k1 > i2)
                {
                    i1 = i2;
                    k += 2;
                } else
                {
                    i1 = k1;
                    j += 2;
                }
            } else
            {
                j += 2;
            }
        } else
        if (i2 > j1)
        {
            l = j1;
            if (i2 > k1)
            {
                i1 = k1;
                j += 2;
            } else
            {
                i1 = i2;
                k += 2;
            }
        } else
        {
            k += 2;
        }
        if (l != 0x80000000)
        {
label0:
            {
                j2 = i + 1;
                ai2[i] = l;
                if (i1 == 0x7fffffff)
                {
                    break label0;
                }
                i = j2 + 1;
                ai2[j2] = i1;
            }
        }
          goto _L3
        i = j2;
          goto _L1
    }

    public static transient Object invokeMethodQuietly(Object obj, Method method, Object aobj[])
    {
        Object obj1;
        try
        {
            obj1 = method.invoke(obj, aobj);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            return null;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            return null;
        }
        return obj1;
    }

    public static boolean isNullOrEmpty(String s)
    {
        return s == null || s.length() == 0;
    }

    public static boolean isNullOrEmpty(Collection collection)
    {
        return collection == null || collection.size() == 0;
    }

    public static boolean isSubset(Collection collection, Collection collection1)
    {
        if (collection1 == null || collection1.size() == 0)
        {
            return collection == null || collection.size() == 0;
        }
        HashSet hashset = new HashSet(collection1);
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return true;
            }
        } while (hashset.contains((Object)iterator.next()));
        return false;
    }

    public static void loadAppSettingsAsync(final Context context, final String applicationId)
    {
        if (!isNullOrEmpty(applicationId) && !fetchedAppSettings.containsKey(applicationId) && initialAppSettingsLoadTask == null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s;
        final String settingsKey = String.format("com.facebook.internal.APP_SETTINGS.%s", new Object[] {
            applicationId
        });
        initialAppSettingsLoadTask = new AsyncTask() {

            private final String val$applicationId;
            private final Context val$context;
            private final String val$settingsKey;

            protected transient GraphObject doInBackground(Void avoid[])
            {
                return Utility.getAppSettingsQueryResponse(applicationId);
            }

            protected volatile transient Object doInBackground(Object aobj[])
            {
                return doInBackground((Void[])aobj);
            }

            protected void onPostExecute(GraphObject graphobject)
            {
                if (graphobject != null)
                {
                    JSONObject jsonobject2 = graphobject.getInnerJSONObject();
                    Utility.parseAppSettingsFromJSON(applicationId, jsonobject2);
                    context.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).edit().putString(settingsKey, jsonobject2.toString()).apply();
                }
                Utility.initialAppSettingsLoadTask = null;
            }

            protected volatile void onPostExecute(Object obj)
            {
                onPostExecute((GraphObject)obj);
            }

            
            {
                applicationId = s;
                context = context1;
                settingsKey = s1;
                super();
            }
        };
        initialAppSettingsLoadTask.execute(null);
        s = context.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).getString(settingsKey, null);
        if (isNullOrEmpty(s))
        {
            continue; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = new JSONObject(s);
        JSONObject jsonobject1 = jsonobject;
_L4:
        if (jsonobject1 != null)
        {
            parseAppSettingsFromJSON(applicationId, jsonobject1);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        JSONException jsonexception;
        jsonexception;
        logd("FacebookSDK", jsonexception);
        jsonobject1 = null;
          goto _L4
    }

    public static void logd(String s, Exception exception)
    {
        if (Settings.isDebugEnabled() && s != null && exception != null)
        {
            Log.d(s, (new StringBuilder(String.valueOf(exception.getClass().getSimpleName()))).append(": ").append(exception.getMessage()).toString());
        }
    }

    public static void logd(String s, String s1)
    {
        if (Settings.isDebugEnabled() && s != null && s1 != null)
        {
            Log.d(s, s1);
        }
    }

    public static void logd(String s, String s1, Throwable throwable)
    {
        if (Settings.isDebugEnabled() && !isNullOrEmpty(s))
        {
            Log.d(s, s1, throwable);
        }
    }

    static String md5hash(String s)
    {
        return hashWithAlgorithm("MD5", s);
    }

    private static FetchedAppSettings parseAppSettingsFromJSON(String s, JSONObject jsonobject)
    {
        FetchedAppSettings fetchedappsettings = new FetchedAppSettings(jsonobject.optBoolean("supports_attribution", false), jsonobject.optBoolean("supports_implicit_sdk_logging", false), jsonobject.optString("gdpv4_nux_content", ""), jsonobject.optBoolean("gdpv4_nux_enabled", false), parseDialogConfigurations(jsonobject.optJSONObject("android_dialog_configs")), null);
        fetchedAppSettings.put(s, fetchedappsettings);
        return fetchedappsettings;
    }

    private static Map parseDialogConfigurations(JSONObject jsonobject)
    {
        HashMap hashmap = new HashMap();
        if (jsonobject == null) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray = jsonobject.optJSONArray("data");
        if (jsonarray == null) goto _L2; else goto _L3
_L3:
        int i = 0;
_L6:
        if (i < jsonarray.length()) goto _L4; else goto _L2
_L2:
        return hashmap;
_L4:
        DialogFeatureConfig dialogfeatureconfig;
        dialogfeatureconfig = DialogFeatureConfig.parseDialogConfig(jsonarray.optJSONObject(i));
        if (dialogfeatureconfig != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L7:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        String s = dialogfeatureconfig.getDialogName();
        Object obj = (Map)hashmap.get(s);
        if (obj == null)
        {
            obj = new HashMap();
            hashmap.put(s, obj);
        }
        ((Map) (obj)).put(dialogfeatureconfig.getFeatureName(), dialogfeatureconfig);
          goto _L7
        if (true) goto _L6; else goto _L8
_L8:
    }

    public static Bundle parseUrlQueryString(String s)
    {
        int i;
        Bundle bundle;
        i = 0;
        bundle = new Bundle();
        if (isNullOrEmpty(s)) goto _L2; else goto _L1
_L1:
        String as[];
        int j;
        as = s.split("&");
        j = as.length;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return bundle;
_L3:
        String as1[] = as[i].split("=");
label0:
        {
            if (as1.length == 2)
            {
                bundle.putString(URLDecoder.decode(as1[0], "UTF-8"), URLDecoder.decode(as1[1], "UTF-8"));
                break label0;
            }
            try
            {
                if (as1.length == 1)
                {
                    bundle.putString(URLDecoder.decode(as1[0], "UTF-8"), "");
                }
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                logd("FacebookSDK", unsupportedencodingexception);
            }
        }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static void putObjectInBundle(Bundle bundle, String s, Object obj)
    {
        if (obj instanceof String)
        {
            bundle.putString(s, (String)obj);
            return;
        }
        if (obj instanceof Parcelable)
        {
            bundle.putParcelable(s, (Parcelable)obj);
            return;
        }
        if (obj instanceof byte[])
        {
            bundle.putByteArray(s, (byte[])obj);
            return;
        } else
        {
            throw new FacebookException("attempted to add unsupported type to Bundle");
        }
    }

    public static FetchedAppSettings queryAppSettings(String s, boolean flag)
    {
        if (!flag && fetchedAppSettings.containsKey(s))
        {
            return (FetchedAppSettings)fetchedAppSettings.get(s);
        }
        GraphObject graphobject = getAppSettingsQueryResponse(s);
        if (graphobject == null)
        {
            return null;
        } else
        {
            return parseAppSettingsFromJSON(s, graphobject.getInnerJSONObject());
        }
    }

    public static String readStreamToString(InputStream inputstream)
        throws IOException
    {
        BufferedInputStream bufferedinputstream = new BufferedInputStream(inputstream);
        InputStreamReader inputstreamreader = new InputStreamReader(bufferedinputstream);
        StringBuilder stringbuilder;
        char ac[];
        stringbuilder = new StringBuilder();
        ac = new char[2048];
_L1:
        int i = inputstreamreader.read(ac);
        if (i != -1)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        String s = stringbuilder.toString();
        closeQuietly(bufferedinputstream);
        closeQuietly(inputstreamreader);
        return s;
        stringbuilder.append(ac, 0, i);
          goto _L1
        Exception exception;
        exception;
        Object obj;
        Object obj1;
        obj = inputstreamreader;
        obj1 = bufferedinputstream;
_L3:
        closeQuietly(((Closeable) (obj1)));
        closeQuietly(((Closeable) (obj)));
        throw exception;
        exception;
        obj1 = null;
        obj = null;
        continue; /* Loop/switch isn't completed */
        exception;
        obj1 = bufferedinputstream;
        obj = null;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static boolean safeGetBooleanFromResponse(GraphObject graphobject, String s)
    {
        Object obj = Boolean.valueOf(false);
        if (graphobject != null)
        {
            obj = graphobject.getProperty(s);
        }
        Object obj1;
        if (!(obj instanceof Boolean))
        {
            obj1 = Boolean.valueOf(false);
        } else
        {
            obj1 = obj;
        }
        return ((Boolean)obj1).booleanValue();
    }

    public static String safeGetStringFromResponse(GraphObject graphobject, String s)
    {
        Object obj = "";
        if (graphobject != null)
        {
            obj = graphobject.getProperty(s);
        }
        Object obj1;
        if (!(obj instanceof String))
        {
            obj1 = "";
        } else
        {
            obj1 = obj;
        }
        return (String)obj1;
    }

    public static void setAppEventAttributionParameters(GraphObject graphobject, AttributionIdentifiers attributionidentifiers, String s, boolean flag)
    {
        if (attributionidentifiers != null && attributionidentifiers.getAttributionId() != null)
        {
            graphobject.setProperty("attribution", attributionidentifiers.getAttributionId());
        }
        boolean flag1;
        if (attributionidentifiers != null && attributionidentifiers.getAndroidAdvertiserId() != null)
        {
            graphobject.setProperty("advertiser_id", attributionidentifiers.getAndroidAdvertiserId());
            boolean flag2;
            if (attributionidentifiers.isTrackingLimited())
            {
                flag2 = false;
            } else
            {
                flag2 = true;
            }
            graphobject.setProperty("advertiser_tracking_enabled", Boolean.valueOf(flag2));
        } else
        if (s != null)
        {
            graphobject.setProperty("advertiser_id", s);
        }
        flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        graphobject.setProperty("application_tracking_enabled", Boolean.valueOf(flag1));
    }

    public static void setAppEventExtendedDeviceInfoParameters(GraphObject graphobject, Context context)
    {
        JSONArray jsonarray = new JSONArray();
        jsonarray.put("a1");
        String s = context.getPackageName();
        int i = -1;
        String s1 = "";
        try
        {
            PackageInfo packageinfo = context.getPackageManager().getPackageInfo(s, 0);
            i = packageinfo.versionCode;
            s1 = packageinfo.versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception) { }
        jsonarray.put(s);
        jsonarray.put(i);
        jsonarray.put(s1);
        graphobject.setProperty("extinfo", jsonarray.toString());
    }

    static String sha1hash(String s)
    {
        return hashWithAlgorithm("SHA-1", s);
    }

    static String sha1hash(byte abyte0[])
    {
        return hashWithAlgorithm("SHA-1", abyte0);
    }

    public static boolean stringsEqualOrEmpty(String s, String s1)
    {
        boolean flag = TextUtils.isEmpty(s);
        boolean flag1 = TextUtils.isEmpty(s1);
        if (flag && flag1)
        {
            return true;
        }
        if (!flag && !flag1)
        {
            return s.equals(s1);
        } else
        {
            return false;
        }
    }

    public static JSONArray tryGetJSONArrayFromResponse(GraphObject graphobject, String s)
    {
        if (graphobject == null)
        {
            return null;
        }
        Object obj = graphobject.getProperty(s);
        if (!(obj instanceof JSONArray))
        {
            return null;
        } else
        {
            return (JSONArray)obj;
        }
    }

    public static JSONObject tryGetJSONObjectFromResponse(GraphObject graphobject, String s)
    {
        if (graphobject == null)
        {
            return null;
        }
        Object obj = graphobject.getProperty(s);
        if (!(obj instanceof JSONObject))
        {
            return null;
        } else
        {
            return (JSONObject)obj;
        }
    }

    public static transient Collection unmodifiableCollection(Object aobj[])
    {
        return Collections.unmodifiableCollection(Arrays.asList(aobj));
    }




}
