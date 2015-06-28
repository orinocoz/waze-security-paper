// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import android.view.Window;
import android.widget.TextView;
import com.facebook.Settings;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.menus.MainMenu;
import com.waze.mywaze.MyWazeData;
import com.waze.navigate.AddressItem;
import com.waze.navigate.AddressPreviewActivity;
import java.util.ArrayList;

// Referenced classes of package com.waze.ifs.ui:
//            ActivityLifetimeHandler, ActivityResultCallback

public class ActivityBase extends Activity
{
    class IncomingHandler extends Handler
    {

        final ActivityBase this$0;

        public void handleMessage(Message message)
        {
            if (myHandleMessage(message))
            {
                return;
            } else
            {
                super.handleMessage(message);
                return;
            }
        }

        IncomingHandler()
        {
            this$0 = ActivityBase.this;
            super();
        }
    }


    private static final String LOG_TAG = "WAZE_ActivityBase";
    public static final int MOOD_SET = 4;
    public static final int RESULT_CLOSE_PARENT = 3;
    private static ArrayList mActivitiesList = new ArrayList();
    private static boolean mIsScreenBacklightOn = true;
    private Dialog dialog;
    private ArrayList mActivityResultCallbacks;
    private volatile boolean mAlive;
    protected final IncomingHandler mHandler = new IncomingHandler();
    protected volatile boolean mIsMainActivity;
    final Messenger mMessenger;
    private volatile boolean mRunning;
    private volatile boolean mVisible;

    public ActivityBase()
    {
        mRunning = false;
        mVisible = false;
        mAlive = false;
        mIsMainActivity = false;
        mActivityResultCallbacks = new ArrayList();
        mMessenger = new Messenger(mHandler);
    }

    public static void closeAllActivities()
    {
        int i = 0;
_L2:
        ActivityBase activitybase;
        if (i >= mActivitiesList.size())
        {
            return;
        }
        activitybase = (ActivityBase)mActivitiesList.get(i);
        if (activitybase == null || activitybase.mIsMainActivity)
        {
            break; /* Loop/switch isn't completed */
        }
        Log.d("WAZE_ActivityBase", (new StringBuilder("Finishing activity:  ")).append(activitybase.toString()).toString());
        activitybase.finish();
_L4:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (activitybase == null || !activitybase.mIsMainActivity || ((MainActivity)activitybase).getLayoutMgr().getMainMenu() == null) goto _L4; else goto _L3
_L3:
        ((MainActivity)activitybase).getLayoutMgr().getMainMenu().dismiss();
          goto _L4
    }

    public static void finishAll()
    {
        int i = 0;
        do
        {
            if (i >= mActivitiesList.size())
            {
                return;
            }
            ActivityBase activitybase = (ActivityBase)mActivitiesList.get(i);
            if (activitybase != null)
            {
                Log.d("WAZE_ActivityBase", (new StringBuilder("Finishing activity:  ")).append(activitybase.toString()).toString());
                activitybase.finish();
            }
            i++;
        } while (true);
    }

    public static int getCount()
    {
        int i = 0;
        int j = 0;
        do
        {
            if (j >= mActivitiesList.size())
            {
                return i;
            }
            if ((ActivityBase)mActivitiesList.get(j) != null)
            {
                i++;
            }
            j++;
        } while (true);
    }

    public static int getRunningCount()
    {
        int i = 0;
        int j = 0;
        do
        {
            if (j >= mActivitiesList.size())
            {
                return i;
            }
            if (((ActivityBase)mActivitiesList.get(j)).isRunning())
            {
                i++;
            }
            j++;
        } while (true);
    }

    public static ActivityBase getSingleRunningActivity()
    {
        int i = 0;
        ActivityBase activitybase = null;
        int j = 0;
        do
        {
            ActivityBase activitybase1;
            if (j >= mActivitiesList.size())
            {
                if (i == 1)
                {
                    return activitybase;
                } else
                {
                    return null;
                }
            }
            activitybase1 = (ActivityBase)mActivitiesList.get(j);
            if (activitybase1.isRunning())
            {
                i++;
                activitybase = activitybase1;
            }
            j++;
        } while (true);
    }

    public static int getVisibleCount()
    {
        int i = 0;
        int j = 0;
        do
        {
            if (j >= mActivitiesList.size())
            {
                return i;
            }
            if (((ActivityBase)mActivitiesList.get(j)).isVisible())
            {
                i++;
            }
            j++;
        } while (true);
    }

    public static void sendMessageToActive(int i, int j, int k, Object obj)
    {
        ActivityBase activitybase = AppService.getActiveActivity();
        if (activitybase != null)
        {
            activitybase.sendMessage(i, j, k, obj);
        }
    }

    public static void setGlobalOrientation(int i)
    {
        int j = 0;
        do
        {
            if (j >= mActivitiesList.size())
            {
                return;
            }
            ((ActivityBase)mActivitiesList.get(j)).setRequestedOrientation(i);
            j++;
        } while (true);
    }

    public static void setScreenBacklightOn(boolean flag)
    {
        mIsScreenBacklightOn = flag;
        int i = 0;
        do
        {
            if (i >= mActivitiesList.size())
            {
                return;
            }
            ActivityBase activitybase = (ActivityBase)mActivitiesList.get(i);
            if (activitybase.isAlive())
            {
                if (flag)
                {
                    activitybase.getWindow().addFlags(128);
                } else
                {
                    activitybase.getWindow().clearFlags(128);
                }
            }
            i++;
        } while (true);
    }

    public static void setScreenState(boolean flag)
    {
        if (!flag)
        {
            ActivityLifetimeHandler.screenOffHandler();
        }
    }

    public void IsSeeCloseFriends(boolean flag)
    {
    }

    public void IsSeeFof(boolean flag)
    {
    }

    public void SetMyWazeData(MyWazeData mywazedata)
    {
    }

    public void addActivityResultCallback(ActivityResultCallback activityresultcallback)
    {
        if (activityresultcallback == null || mActivityResultCallbacks.contains(activityresultcallback))
        {
            return;
        } else
        {
            mActivityResultCallbacks.add(activityresultcallback);
            return;
        }
    }

    public void cancel(Runnable runnable)
    {
        mHandler.removeCallbacks(runnable);
    }

    public boolean isAlive()
    {
        return mAlive;
    }

    public boolean isRunning()
    {
        return mRunning;
    }

    public boolean isVisible()
    {
        return mVisible;
    }

    protected boolean myHandleMessage(Message message)
    {
        return false;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        int k = 0;
        do
        {
            if (k >= mActivityResultCallbacks.size())
            {
                if (j == 3)
                {
                    setResult(j);
                    finish();
                }
                return;
            }
            ((ActivityResultCallback)mActivityResultCallbacks.get(k)).onActivitResult(this, i, j, intent);
            k++;
        } while (true);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mAlive = true;
        mActivitiesList.add(this);
        setVolumeControlStream(3);
        if (mIsScreenBacklightOn)
        {
            getWindow().addFlags(128);
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        mAlive = false;
        mActivitiesList.remove(this);
        removeDialogs();
        ActivityLifetimeHandler.destroyHandler();
    }

    protected void onPause()
    {
        super.onPause();
        mRunning = false;
        if (isFinishing() && mActivitiesList.size() == 1)
        {
            ActivityLifetimeHandler.stopHandler();
        }
    }

    protected void onResume()
    {
        super.onResume();
        AppService.setActiveActivity(this);
        mRunning = true;
        Settings.publishInstallAsync(this, getResources().getString(0x7f07003f), null);
    }

    protected void onStart()
    {
        super.onStart();
        mVisible = true;
        if (getVisibleCount() == 1)
        {
            ActivityLifetimeHandler.startHandler(this);
        }
    }

    protected void onStop()
    {
        super.onStop();
        mVisible = false;
        if (getVisibleCount() == 0)
        {
            ActivityLifetimeHandler.stopHandler();
        }
    }

    public void post(Runnable runnable)
    {
        mHandler.post(runnable);
    }

    public void postDelayed(Runnable runnable, long l)
    {
        mHandler.postDelayed(runnable, l);
    }

    public void removeActivityResultCallback(ActivityResultCallback activityresultcallback)
    {
        if (activityresultcallback == null || !mActivityResultCallbacks.contains(activityresultcallback))
        {
            return;
        } else
        {
            mActivityResultCallbacks.remove(activityresultcallback);
            return;
        }
    }

    public void removeDialogs()
    {
        if (dialog != null)
        {
            TextView textview = (TextView)dialog.findViewById(0x7f09022c);
            if (textview != null)
            {
                Log.d("WAZE_ActivityBase", (new StringBuilder("Removing dialog: ")).append(dialog).append(", Confirm: ").append(textview.getText()).toString());
            } else
            {
                Log.d("WAZE_ActivityBase", (new StringBuilder("Removing dialog: ")).append(dialog).append(", nothing").toString());
            }
            dialog.dismiss();
        }
        dialog = null;
    }

    public void sendMessage(int i, int j, int k, Object obj)
    {
        Message message = Message.obtain(null, i, j, k, obj);
        mHandler.sendMessage(message);
    }

    protected void sendMessageToMyself(int i, int j, int k, Object obj, long l)
    {
        Message message = Message.obtain(mHandler, i, j, k, obj);
        message.replyTo = mMessenger;
        mHandler.sendMessageDelayed(message, l);
    }

    public void setDialog(Dialog dialog1)
    {
        dialog = dialog1;
    }

    public void startNativeOptionActivity(String s, String s1, int i, int j, String s2, String s3, AddressItem addressitem, 
            String s4, String s5, String s6, String s7, String s8, AddressItem addressitem1, String s9)
    {
        AddressItem addressitem2 = new AddressItem(Integer.valueOf(j), Integer.valueOf(i), s, null, s1, null, null, null, Integer.valueOf(99), null, Integer.valueOf(6), s2, s3, null, s9, s4, s5, s6, s7, s8, null);
        if (addressitem != null)
        {
            addressitem2.setMeetingId(addressitem.getMeetingId());
            addressitem2.setCategory(Integer.valueOf(7));
            addressitem2.setTitle(addressitem.getTitle());
            Intent intent1 = new Intent(this, com/waze/navigate/AddressPreviewActivity);
            intent1.putExtra("AddressItem", addressitem2);
            intent1.putExtra("CalendarAddressItem", addressitem);
            intent1.putExtra("ActionButton", 1);
            intent1.putExtra("ClearAdsContext", true);
            startActivityForResult(intent1, 1);
            return;
        }
        if (addressitem1 != null)
        {
            addressitem2 = addressitem1;
            if (addressitem2.getCategory() == null)
            {
                addressitem2.setCategory(Integer.valueOf(99));
            }
        }
        Intent intent = new Intent(this, com/waze/navigate/AddressPreviewActivity);
        intent.putExtra("AddressItem", addressitem2);
        if (addressitem2.venueData == null && addressitem2.VanueID != null && !addressitem2.VanueID.isEmpty())
        {
            intent.putExtra("preview_load_venue", true);
        }
        intent.putExtra("ActionButton", 1);
        startActivityForResult(intent, 32778);
    }

}
