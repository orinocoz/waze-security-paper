// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.NativeManager;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.voice.VoiceData;

// Referenced classes of package com.waze.settings:
//            SettingsValue

public class SettingsNativeManager
{
    public static interface SettingsExistsListener
    {

        public abstract void onComplete(boolean flag);
    }

    public static interface SettingsValuesListener
    {

        public abstract void onComplete(SettingsValue asettingsvalue[]);
    }

    public static interface SettingsVoiceDataValuesListener
    {

        public abstract void onComplete(VoiceData avoicedata[]);
    }


    private static boolean ready = false;

    public SettingsNativeManager()
    {
        init();
    }

    private native SettingsValue[] getGasStationsNTV();

    private native SettingsValue[] getGasTypesNTV();

    private native SettingsValue[] getLanguagesNTV();

    private native SettingsValue[] getNavigationGuidanceNTV();

    private native SettingsValue[] getNavigationGuidanceTypesNTV();

    private native VoiceData[] getVoicesNTV();

    private void init()
    {
        if (!ready)
        {
            initNativeLayerNTV();
            ready = true;
        }
    }

    private native void initNativeLayerNTV();

    private native void setLanguageNTV(String s);

    private native void setNavigationGuidanceNTV(String s);

    private native boolean setNavigationGuidanceTypeNTV(String s, String s1);

    private native void setPreferredStationNTV(int i);

    private native void setPreferredTypeNTV(int i);

    private native void setVoiceNTV(int i);

    public void getLanguages(final SettingsValuesListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            SettingsValue languages[];
            final SettingsNativeManager this$0;
            private final SettingsValuesListener val$listener;

            public void callback()
            {
                listener.onComplete(languages);
            }

            public void event()
            {
                languages = getLanguagesNTV();
            }

            
            {
                this$0 = SettingsNativeManager.this;
                listener = settingsvalueslistener;
                super();
                languages = null;
            }
        });
    }

    public native String getLanguagesLocaleNTV();

    public void getNavigationGuidance(final SettingsValuesListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            final SettingsNativeManager this$0;
            private final SettingsValuesListener val$listener;
            SettingsValue values[];

            public void callback()
            {
                listener.onComplete(values);
            }

            public void event()
            {
                values = getNavigationGuidanceNTV();
            }

            
            {
                this$0 = SettingsNativeManager.this;
                listener = settingsvalueslistener;
                super();
                values = null;
            }
        });
    }

    public void getNavigationGuidanceTypes(final SettingsValuesListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            final SettingsNativeManager this$0;
            private final SettingsValuesListener val$listener;
            SettingsValue values[];

            public void callback()
            {
                listener.onComplete(values);
            }

            public void event()
            {
                values = getNavigationGuidanceTypesNTV();
            }

            
            {
                this$0 = SettingsNativeManager.this;
                listener = settingsvalueslistener;
                super();
                values = null;
            }
        });
    }

    public void getPreferredGasStations(final SettingsValuesListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            SettingsValue gasStations[];
            final SettingsNativeManager this$0;
            private final SettingsValuesListener val$listener;

            public void callback()
            {
                listener.onComplete(gasStations);
            }

            public void event()
            {
                gasStations = getGasStationsNTV();
            }

            
            {
                this$0 = SettingsNativeManager.this;
                listener = settingsvalueslistener;
                super();
                gasStations = null;
            }
        });
    }

    public void getPreferredGasType(final SettingsValuesListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            SettingsValue gasTypes[];
            final SettingsNativeManager this$0;
            private final SettingsValuesListener val$listener;

            public void callback()
            {
                listener.onComplete(gasTypes);
            }

            public void event()
            {
                gasTypes = getGasTypesNTV();
            }

            
            {
                this$0 = SettingsNativeManager.this;
                listener = settingsvalueslistener;
                super();
                gasTypes = null;
            }
        });
    }

    public void getVoices(final SettingsVoiceDataValuesListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            VoiceData languages[];
            final SettingsNativeManager this$0;
            private final SettingsVoiceDataValuesListener val$listener;

            public void callback()
            {
                listener.onComplete(languages);
            }

            public void event()
            {
                languages = getVoicesNTV();
            }

            
            {
                this$0 = SettingsNativeManager.this;
                listener = settingsvoicedatavalueslistener;
                super();
                languages = null;
            }
        });
    }

    public void setLanguage(final String name)
    {
        NativeManager.Post(new Runnable() {

            final SettingsNativeManager this$0;
            private final String val$name;

            public void run()
            {
                setLanguageNTV(name);
            }

            
            {
                this$0 = SettingsNativeManager.this;
                name = s;
                super();
            }
        });
    }

    public void setNavigationGuidance(final String value)
    {
        NativeManager.Post(new Runnable() {

            final SettingsNativeManager this$0;
            private final String val$value;

            public void run()
            {
                setNavigationGuidanceNTV(value);
            }

            
            {
                this$0 = SettingsNativeManager.this;
                value = s;
                super();
            }
        });
    }

    public void setNavigationGuidanceType(final String name, final String display, final SettingsExistsListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            private boolean exists;
            final SettingsNativeManager this$0;
            private final String val$display;
            private final SettingsExistsListener val$listener;
            private final String val$name;

            public void callback()
            {
                listener.onComplete(exists);
            }

            public void event()
            {
                exists = setNavigationGuidanceTypeNTV(name, display);
            }

            
            {
                this$0 = SettingsNativeManager.this;
                name = s;
                display = s1;
                listener = settingsexistslistener;
                super();
            }
        });
    }

    public void setPreferredStation(final int index)
    {
        NativeManager.Post(new Runnable() {

            final SettingsNativeManager this$0;
            private final int val$index;

            public void run()
            {
                setPreferredStationNTV(index);
            }

            
            {
                this$0 = SettingsNativeManager.this;
                index = i;
                super();
            }
        });
    }

    public void setPreferredType(final int index)
    {
        NativeManager.Post(new Runnable() {

            final SettingsNativeManager this$0;
            private final int val$index;

            public void run()
            {
                setPreferredTypeNTV(index);
            }

            
            {
                this$0 = SettingsNativeManager.this;
                index = i;
                super();
            }
        });
    }

    public void setVoice(final int position)
    {
        NativeManager.Post(new Runnable() {

            final SettingsNativeManager this$0;
            private final int val$position;

            public void run()
            {
                setVoiceNTV(position);
            }

            
            {
                this$0 = SettingsNativeManager.this;
                position = i;
                super();
            }
        });
    }













}
