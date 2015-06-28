// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Looper;
import android.util.Log;
import com.facebook.FacebookException;

// Referenced classes of package com.facebook.internal:
//            Utility

public class AttributionIdentifiers
{

    private static final String ANDROID_ID_COLUMN_NAME = "androidid";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final Uri ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    private static final int CONNECTION_RESULT_SUCCESS = 0;
    private static final long IDENTIFIER_REFRESH_INTERVAL_MILLIS = 0x36ee80L;
    private static final String LIMIT_TRACKING_COLUMN_NAME = "limit_tracking";
    private static final String TAG = com/facebook/internal/AttributionIdentifiers.getCanonicalName();
    private static AttributionIdentifiers recentlyFetchedIdentifiers;
    private String androidAdvertiserId;
    private String attributionId;
    private long fetchTime;
    private boolean limitTracking;

    public AttributionIdentifiers()
    {
    }

    private static AttributionIdentifiers getAndroidId(Context context)
    {
        AttributionIdentifiers attributionidentifiers = new AttributionIdentifiers();
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            throw new FacebookException("getAndroidId cannot be called on the main thread.");
        }
          goto _L1
        Exception exception;
        exception;
        Utility.logd("android_id", exception);
_L3:
        return attributionidentifiers;
_L1:
        java.lang.reflect.Method method = Utility.getMethodQuietly("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] {
            android/content/Context
        });
        if (method == null) goto _L3; else goto _L2
_L2:
        Object obj = Utility.invokeMethodQuietly(null, method, new Object[] {
            context
        });
        if (!(obj instanceof Integer) || ((Integer)obj).intValue() != 0) goto _L3; else goto _L4
_L4:
        java.lang.reflect.Method method1 = Utility.getMethodQuietly("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] {
            android/content/Context
        });
        if (method1 == null) goto _L3; else goto _L5
_L5:
        Object obj1 = Utility.invokeMethodQuietly(null, method1, new Object[] {
            context
        });
        if (obj1 == null) goto _L3; else goto _L6
_L6:
        java.lang.reflect.Method method2;
        java.lang.reflect.Method method3;
        method2 = Utility.getMethodQuietly(obj1.getClass(), "getId", new Class[0]);
        method3 = Utility.getMethodQuietly(obj1.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
        if (method2 == null || method3 == null) goto _L3; else goto _L7
_L7:
        attributionidentifiers.androidAdvertiserId = (String)Utility.invokeMethodQuietly(obj1, method2, new Object[0]);
        attributionidentifiers.limitTracking = ((Boolean)Utility.invokeMethodQuietly(obj1, method3, new Object[0])).booleanValue();
        return attributionidentifiers;
    }

    public static AttributionIdentifiers getAttributionIdentifiers(Context context)
    {
        if (recentlyFetchedIdentifiers == null || System.currentTimeMillis() - recentlyFetchedIdentifiers.fetchTime >= 0x36ee80L) goto _L2; else goto _L1
_L1:
        AttributionIdentifiers attributionidentifiers = recentlyFetchedIdentifiers;
_L4:
        return attributionidentifiers;
_L2:
        Cursor cursor;
        attributionidentifiers = getAndroidId(context);
        cursor = null;
        String as[] = {
            "aid", "androidid", "limit_tracking"
        };
        cursor = context.getContentResolver().query(ATTRIBUTION_ID_CONTENT_URI, as, null, null, null);
        if (cursor == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        boolean flag = cursor.moveToFirst();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        if (cursor == null) goto _L4; else goto _L3
_L3:
        cursor.close();
        return attributionidentifiers;
        int j;
        int k;
        int i = cursor.getColumnIndex("aid");
        j = cursor.getColumnIndex("androidid");
        k = cursor.getColumnIndex("limit_tracking");
        attributionidentifiers.attributionId = cursor.getString(i);
        if (j <= 0 || k <= 0)
        {
            break MISSING_BLOCK_LABEL_186;
        }
        if (attributionidentifiers.getAndroidAdvertiserId() == null)
        {
            attributionidentifiers.androidAdvertiserId = cursor.getString(j);
            attributionidentifiers.limitTracking = Boolean.parseBoolean(cursor.getString(k));
        }
        if (cursor != null)
        {
            cursor.close();
        }
        attributionidentifiers.fetchTime = System.currentTimeMillis();
        recentlyFetchedIdentifiers = attributionidentifiers;
        return attributionidentifiers;
        Exception exception1;
        exception1;
        Log.d(TAG, (new StringBuilder("Caught unexpected exception in getAttributionId(): ")).append(exception1.toString()).toString());
        if (cursor != null)
        {
            cursor.close();
        }
        return null;
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
    }

    public String getAndroidAdvertiserId()
    {
        return androidAdvertiserId;
    }

    public String getAttributionId()
    {
        return attributionId;
    }

    public boolean isTrackingLimited()
    {
        return limitTracking;
    }

}
