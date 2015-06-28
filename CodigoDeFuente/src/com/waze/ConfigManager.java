// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

// Referenced classes of package com.waze:
//            ConfigItem, NativeManager

public class ConfigManager
{
    public static interface IConfigUpdater
    {

        public abstract void updateConfigItems(List list);
    }


    public static final int CounterConfig_FriendsTip = 4;
    public static final int CounterConfig_LAST = 6;
    public static final int CounterConfig_PrivacyMessage = 2;
    public static final int CounterConfig_ResidentialConfirmation = 0;
    public static final int CounterConfig_SendLocationButtonBanner = 1;
    public static final int CounterConfig_ShareEtaFriendTip = 5;
    public static final int CounterConfig_ShareEtaTip = 3;
    public static final int SwitchConfig_LAST = 1;
    public static final int SwitchConfig_OptOutOfTargetedAds;
    private static ConfigManager mInstance;

    public ConfigManager()
    {
    }

    private native void InitNativeLayerNTV();

    private List StringToConfigItems(String s)
    {
        ArrayList arraylist = new ArrayList();
        StringTokenizer stringtokenizer = new StringTokenizer(s, "|");
        do
        {
            if (!stringtokenizer.hasMoreTokens())
            {
                return arraylist;
            }
            String s1 = stringtokenizer.nextToken();
            String s2 = s1.substring(0, s1.indexOf("."));
            String s3 = s1.substring(1 + s1.indexOf("."), s1.indexOf(":"));
            String s4 = s1.substring(1 + s1.indexOf(":"));
            ConfigItem configitem = new ConfigItem();
            configitem.setCategory(s2);
            configitem.setName(s3);
            configitem.setValue(s4);
            arraylist.add(configitem);
        } while (true);
    }

    private native void aboutClickNTV();

    private native void askQuestionNTV();

    private native int checkConfigDisplayCounterNTV(int i, boolean flag);

    private String configItemsToStr(List list)
    {
        StringBuffer stringbuffer = new StringBuffer(1024);
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return stringbuffer.toString();
            }
            ConfigItem configitem = (ConfigItem)iterator.next();
            if (configitem == null || configitem.getName() == null || configitem.getName().length() == 0 || configitem.getCategory() == null || configitem.getCategory().length() == 0)
            {
                Log.w("WAZE", (new StringBuilder("ConfigItem is not initialized as expected: ")).append(configitem).toString());
            } else
            {
                stringbuffer.append((new StringBuilder(String.valueOf(configitem.getCategory()))).append(".").append(configitem.getName()).append(":").append(configitem.getValue()).append("|").toString());
            }
        } while (true);
    }

    private native String getConfigNTV(String s, String s1);

    private native boolean getConfigSwitchValueNTV(int i);

    public static ConfigManager getInstance()
    {
        if (mInstance == null)
        {
            mInstance = new ConfigManager();
            mInstance.initNativeLayer();
        }
        return mInstance;
    }

    private void initNativeLayer()
    {
        InitNativeLayerNTV();
    }

    private native void sendLogsClickNTV();

    private native void setConfigDisplayCounterNTV(int i, int j);

    private native void setConfigNTV(String s, String s1);

    private native void setConfigSwitchValueNTV(int i, boolean flag);

    public static native void test_counterConfigEnum();

    private native void toggleConfigSwitchValueNTV(int i);

    public void aboutClick()
    {
        NativeManager.Post(new Runnable() {

            final ConfigManager this$0;

            public void run()
            {
                aboutClickNTV();
            }

            
            {
                this$0 = ConfigManager.this;
                super();
            }
        });
    }

    public int checkConfigDisplayCounter(int i, boolean flag)
    {
        return checkConfigDisplayCounterNTV(i, flag);
    }

    public void getConfig(final IConfigUpdater updater, final List configItems, final String screenName)
    {
        NativeManager.Post(new RunnableUICallback() {

            private String mConfigItems;
            final ConfigManager this$0;
            private final List val$configItems;
            private final String val$screenName;
            private final IConfigUpdater val$updater;

            public void callback()
            {
                Log.i("WAZE", "getConfig - callback");
                List list = StringToConfigItems(mConfigItems);
                updater.updateConfigItems(list);
            }

            public void event()
            {
                Log.i("WAZE", "getConfig - event");
                String s = configItemsToStr(configItems);
                mConfigItems = getConfigNTV(s, screenName);
            }

            
            {
                this$0 = ConfigManager.this;
                configItems = list;
                screenName = s;
                updater = iconfigupdater;
                super();
            }
        });
    }

    public boolean getConfigSwitchValue(int i)
    {
        return getConfigSwitchValueNTV(i);
    }

    public void helpAskQuestion()
    {
        NativeManager.Post(new Runnable() {

            final ConfigManager this$0;

            public void run()
            {
                askQuestionNTV();
            }

            
            {
                this$0 = ConfigManager.this;
                super();
            }
        });
    }

    public void sendLogsClick()
    {
        NativeManager.Post(new Runnable() {

            final ConfigManager this$0;

            public void run()
            {
                sendLogsClickNTV();
            }

            
            {
                this$0 = ConfigManager.this;
                super();
            }
        });
    }

    public void setConfig(final ConfigItem configItem, final String screenName)
    {
        NativeManager.Post(new RunnableUICallback() {

            final ConfigManager this$0;
            private final ConfigItem val$configItem;
            private final String val$screenName;

            public void callback()
            {
            }

            public void event()
            {
                String s = (new StringBuilder(String.valueOf(configItem.getCategory()))).append(".").append(configItem.getName()).append(":").append(configItem.getValue()).toString();
                setConfigNTV(s.toString(), screenName);
            }

            
            {
                this$0 = ConfigManager.this;
                configItem = configitem;
                screenName = s;
                super();
            }
        });
    }

    public void setConfig(final ArrayList configItems, final String screenName)
    {
        NativeManager.Post(new RunnableUICallback() {

            final ConfigManager this$0;
            private final ArrayList val$configItems;
            private final String val$screenName;

            public void callback()
            {
            }

            public void event()
            {
                Log.i("WAZE", "setConfig - event");
                String s = configItemsToStr(configItems);
                setConfigNTV(s.toString(), screenName);
            }

            
            {
                this$0 = ConfigManager.this;
                configItems = arraylist;
                screenName = s;
                super();
            }
        });
    }

    public void setConfigDisplayCounter(int i, int j)
    {
        setConfigDisplayCounterNTV(i, j);
    }

    public void setConfigSwitchValue(int i, boolean flag)
    {
        setConfigSwitchValueNTV(i, flag);
    }

    public void toggleConfigSwitchValue(int i)
    {
        toggleConfigSwitchValueNTV(i);
    }







}
