// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Log;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityLifetimeHandler;
import com.waze.referrer.ReferrerTracker;

// Referenced classes of package com.waze:
//            MainActivity, AppService, NativeManager

public final class IntentManager
{
    private static final class CompatabilityWrapper
    {

        private static String FetchContactAddress(Uri uri, Activity activity)
        {
            String s;
            Cursor cursor;
            s = null;
            long l = ContentUris.parseId(uri);
            String as[] = {
                "data1", "data4", "data7", "data9", "data4", "data8", "data10", "data2"
            };
            String s1 = (new StringBuilder("_id = ")).append(l).append(" AND ContactsContract.Data.MIMETYPE = '").append("vnd.android.cursor.item/postal-address_v2").append("'").toString();
            cursor = activity.managedQuery(android.provider.ContactsContract.Data.CONTENT_URI, as, s1, null, "data10 asc");
            if (cursor != null) goto _L2; else goto _L1
_L1:
            Log.w("WAZE", (new StringBuilder("No data for uri: ")).append(uri.toString()).toString());
_L4:
            return s;
_L2:
            boolean flag = cursor.moveToFirst();
            s = null;
            if (!flag)
            {
                continue; /* Loop/switch isn't completed */
            }
            int i = cursor.getColumnIndex("data1");
            do
            {
                s = cursor.getString(i);
                if (s != null && s.length() > 0)
                {
                    continue; /* Loop/switch isn't completed */
                }
                if (!cursor.moveToNext())
                {
                    return s;
                }
            } while (true);
            if (true) goto _L4; else goto _L3
_L3:
        }


        private CompatabilityWrapper()
        {
        }
    }

    public static class WazeSDCardManager extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            String s = intent.getAction();
            if ("android.intent.action.MEDIA_REMOVED".equals(s) || "android.intent.action.MEDIA_UNMOUNTED".equals(s))
            {
                Log.e("WAZE", "Received media removed/unmounted event. WAZE cannot continue!");
                NativeManager.CheckSDCardAvailable();
            }
        }

        public WazeSDCardManager()
        {
        }
    }


    private static IntentManager mInstance = null;
    private static boolean mReferrerSubmitted = false;

    private IntentManager()
    {
    }

    private static String ConvertGeoUri(String s)
    {
        String s2;
label0:
        {
            boolean flag = s.startsWith("geo:");
            String s1 = null;
            if (flag)
            {
                s2 = s.substring("geo:".length());
                if (!s2.startsWith("0,0?"))
                {
                    break label0;
                }
                s1 = (new StringBuilder(String.valueOf("waze://?"))).append(s2.substring("0,0?".length())).toString();
            }
            return s1;
        }
        String s3 = s2.replace('?', '&');
        return (new StringBuilder(String.valueOf("waze://?"))).append("ll=").append(s3).toString();
    }

    static IntentManager Create()
    {
        mInstance = new IntentManager();
        return mInstance;
    }

    private static String FetchContactAddress(Uri uri, Activity activity)
    {
        String s;
        if (Integer.parseInt(android.os.Build.VERSION.SDK) >= 5)
        {
            s = CompatabilityWrapper.FetchContactAddress(uri, activity);
        } else
        {
            String as[] = {
                "_id", "kind", "data"
            };
            Cursor cursor = activity.managedQuery(android.provider.Contacts.ContactMethods.CONTENT_URI, as, null, null, null);
            if (cursor == null)
            {
                Log.w("WAZE", (new StringBuilder("No data for uri: ")).append(uri.toString()).toString());
                return null;
            }
            boolean flag = cursor.moveToFirst();
            s = null;
            if (flag)
            {
                long l = ContentUris.parseId(uri);
                int i = cursor.getColumnIndex("_id");
                int j = cursor.getColumnIndex("data");
                int k = cursor.getColumnIndex("kind");
                do
                {
                    long l1 = cursor.getLong(i);
                    int i1 = cursor.getInt(k);
                    if (l1 == l && i1 == 2)
                    {
                        return cursor.getString(j);
                    }
                } while (cursor.moveToNext());
                return null;
            }
        }
        return s;
    }

    public static void HandleIntent(Activity activity, boolean flag)
    {
        if (activity == null || !applyIntentHandling(activity.getIntent()))
        {
            return;
        }
        Intent intent = activity.getIntent();
        Uri uri = null;
        if (intent != null)
        {
            uri = activity.getIntent().getData();
            if (uri != null && uri.toString().contains("?a=addplace"))
            {
                MainActivity.sQuestionID = activity.getIntent().getStringExtra("QuestionID");
            }
            String s = activity.getIntent().getStringExtra("PushClicked");
            if (s != null && !s.isEmpty())
            {
                Analytics.log("PUSH_MESSAGE_LAUNCHED", "VAUE", s);
            }
        }
        if (flag)
        {
            activity.setIntent(null);
        }
        HandleUri(uri, activity);
    }

    private static void HandleUri(Uri uri, Activity activity)
    {
        String s;
        String s1;
label0:
        {
label1:
            {
                NativeManager nativemanager = AppService.getNativeManager();
                s = null;
                if (uri == null)
                {
                    break label0;
                }
                String s2 = uri.getScheme();
                String s3 = Uri.decode(uri.toString());
                if (!s2.equals("http"))
                {
                    boolean flag1 = s2.equals("https");
                    s = null;
                    if (!flag1)
                    {
                        break label1;
                    }
                }
                boolean flag = s3.matches(".*daddr=[0-9]+\\.[0-9]+,[0-9]+\\.[0-9]+.*");
                int i = s3.indexOf("daddr");
                if (i == -1)
                {
                    int l = s3.indexOf("?q");
                    String s6;
                    if (l == -1)
                    {
                        s3.substring(34, -5 + s3.length());
                        s = (new StringBuilder("waze://?ll=")).append(s3.substring(34, -4 + s3.length())).toString();
                    } else
                    {
                        int i1 = s3.indexOf("@");
                        if (i1 == -1)
                        {
                            int j1 = s3.indexOf("loc:");
                            if (j1 == -1)
                            {
                                String s10 = s3.substring(l + 1, s3.length());
                                s = (new StringBuilder("waze://?q=")).append(s10).toString();
                            } else
                            {
                                String s9 = s3.substring(j1 + 4, s3.length());
                                s = (new StringBuilder("waze://?ll=")).append(s9).toString();
                            }
                        } else
                        {
                            String s8 = s3.substring(i1 + 1, s3.length());
                            s = (new StringBuilder("waze://?ll=")).append(s8).toString();
                        }
                    }
                } else
                {
                    String s4 = s3.substring(i + 6, s3.length());
                    int j = s4.indexOf("&");
                    if (j == -1)
                    {
                        if (!flag)
                        {
                            s = (new StringBuilder("waze://?q=")).append(s4).toString();
                        } else
                        {
                            s = (new StringBuilder("waze://?ll=")).append(s4).toString();
                        }
                    } else
                    {
                        String s5 = s4.substring(0, j);
                        if (!flag)
                        {
                            int k = s5.indexOf("@");
                            if (k == -1)
                            {
                                s = (new StringBuilder("waze://?q=")).append(s5).toString();
                            } else
                            {
                                String s7 = s5.substring(k + 1, s5.length());
                                s = (new StringBuilder("waze://?ll=")).append(s7).toString();
                            }
                        } else
                        {
                            s = (new StringBuilder("waze://?ll=")).append(s5).toString();
                        }
                    }
                }
            }
            if (s2.equals("WazeUrl"))
            {
                s = s3.substring(3 + s2.length(), s3.length());
            }
            if (s2.equals("waze"))
            {
                nativemanager.setIsAllowTripDialog(false);
                s = s3;
            }
            if (s2.equals("geo"))
            {
                s = (new StringBuilder(String.valueOf(ConvertGeoUri(s3)))).append("&navigate=yes").toString();
            }
            if (s2.equals("content"))
            {
                s6 = FetchContactAddress(uri, activity);
                if (s6 != null)
                {
                    s = (new StringBuilder("waze://?q=")).append(s6).append("&navigate=yes").toString();
                }
            }
        }
        s1 = ReferrerTracker.getReferrer(AppService.getAppContext());
        if (s1 != null)
        {
            if (s == null)
            {
                s = (new StringBuilder("waze://?ref=")).append(s1).toString();
            } else
            {
                s = (new StringBuilder(String.valueOf(s))).append("&ref=").append(s1).toString();
            }
            mReferrerSubmitted = true;
            ReferrerTracker.invalidateReferrer(AppService.getAppContext());
        }
        if (s == null) goto _L2; else goto _L1
_L1:
        if (NativeManager.IsAppStarted()) goto _L4; else goto _L3
_L3:
        s = (new StringBuilder(String.valueOf(s))).append("&startup=yes").toString();
_L2:
        nativemanager.UrlHandler(s);
        return;
_L4:
        if (ActivityLifetimeHandler.isInBackground())
        {
            s = (new StringBuilder(String.valueOf(s))).append("&background=yes").toString();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public static void ParseIntentDataFlags(Activity activity)
    {
        if (activity != null && applyIntentHandling(activity.getIntent()))
        {
            Intent intent = activity.getIntent();
            Uri uri = null;
            if (intent != null)
            {
                uri = activity.getIntent().getData();
            }
            if (uri != null && uri.getScheme().equals("waze"))
            {
                NativeManager.getInstance().bToForceLoginWithSocial = true;
                return;
            }
        }
    }

    public static void RequestRestart(Context context)
    {
        AlarmManager alarmmanager = (AlarmManager)context.getSystemService("alarm");
        PendingIntent pendingintent = PendingIntent.getBroadcast(context, 0, new Intent(context, com/waze/MainActivity), 0);
        alarmmanager.set(2, 5000L + SystemClock.elapsedRealtime(), pendingintent);
    }

    private static boolean applyIntentHandling(Intent intent)
    {
        return intent != null || !mReferrerSubmitted;
    }

}
