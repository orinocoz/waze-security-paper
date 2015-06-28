// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableCallback;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.PhoneNumberSignInActivity;
import java.util.Locale;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.install:
//            Lang, WayToGoActivity, LocationFailedActivity, SelectLangActivity, 
//            TermsOfUseActivity

public class InstallNativeManager
{
    public static interface VideoUrlListener
    {

        public abstract void onComplete(String s);
    }


    private static boolean m_CleanInstall = false;
    private static boolean m_MinimalInstallation = false;
    private static boolean ready = false;

    public InstallNativeManager()
    {
        init();
        Log.d("WAZE", (new StringBuilder("ctr running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public static String GetLocale()
    {
        String s = Locale.getDefault().getLanguage();
        if (s.equals("en") && Locale.getDefault().getCountry().equals("GB"))
        {
            s = "en-GB";
        }
        return s;
    }

    public static boolean IsCleanInstallation()
    {
        return m_CleanInstall;
    }

    public static boolean IsMinimalInstallation()
    {
        return m_MinimalInstallation;
    }

    private native void countrySelectedNTV(int i);

    private native String getVideoUrlNTV(boolean flag, int i, int j);

    private void init()
    {
        Log.d("WAZE", (new StringBuilder("init install nm ready=")).append(ready).toString());
        if (!ready)
        {
            Log.d("WAZE", (new StringBuilder("initNativeLayerNTV ")).append(Thread.currentThread().getId()).toString());
            initNativeLayerNTV();
            ready = true;
        }
    }

    private native void initNativeLayerNTV();

    private native void langSelectedNTV(int i);

    public static void openSelectCountryMenu()
    {
        Log.d("WAZE", (new StringBuilder("openSelectCountryMenu running in thread ")).append(Thread.currentThread().getId()).toString());
        AppService.Post(new RunnableCallback(AppService.getNativeManager()) {

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("openSelectCountryMenu callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("openSelectCountryMenu event running in thread ")).append(Thread.currentThread().getId()).toString());
                com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
                activitybase.startActivityForResult(new Intent(activitybase, com/waze/install/LocationFailedActivity), 1);
            }

        });
    }

    public static void openSelectLangMenu(Lang alang[])
    {
        Log.d("WAZE", (new StringBuilder("openSelectLangMenu running in thread ")).append(Thread.currentThread().getId()).toString());
        AppService.Post(new RunnableCallback(alang) {

            private final Lang val$langs[];

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("openSelectLangMenu callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("openSelectLangMenu event running in thread ")).append(Thread.currentThread().getId()).toString());
                String s = Locale.getDefault().getDisplayLanguage();
                if (s.equals("Hebrew"))
                {
                    s = "\u25CA\242\u25CA\353\u25CA\256\u25CA\364\u25CA\u2122";
                }
                Log.d("WAZE", (new StringBuilder("Device lang is ")).append(s).toString());
                if (Locale.getDefault() == Locale.CHINESE)
                {
                    s = "\u2030\u220F\u2260\312\361\341";
                }
                if (Locale.getDefault().getCountry().equals(Locale.UK.getCountry()))
                {
                    s = "English-UK";
                }
                Lang alang1[] = langs;
                int i = alang1.length;
                int j = 0;
                do
                {
                    if (j >= i)
                    {
                        com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
                        Intent intent = new Intent(activitybase, com/waze/install/SelectLangActivity);
                        intent.putExtra("LANGS", langs);
                        activitybase.startActivityForResult(intent, 1);
                        return;
                    }
                    Lang lang = alang1[j];
                    if (s.toLowerCase().equals(lang.getLable().toLowerCase()))
                    {
                        (new InstallNativeManager()).langSelected(lang.getValue());
                        return;
                    }
                    j++;
                } while (true);
            }

            
            {
                langs = alang;
                super(final_executor);
            }
        });
    }

    public static void openTermsOfUse()
    {
        Log.d("WAZE", (new StringBuilder("openTermsOfUse running in thread ")).append(Thread.currentThread().getId()).toString());
        AppService.Post(new RunnableCallback(AppService.getNativeManager()) {

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("openTermsOfUse callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("openTermsOfUse event running in thread ")).append(Thread.currentThread().getId()).toString());
                com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
                activitybase.startActivityForResult(new Intent(activitybase, com/waze/install/TermsOfUseActivity), 1);
            }

        });
    }

    public static void openWayToGo()
    {
        Log.d("WAZE", (new StringBuilder("openWayToGo running in thread ")).append(Thread.currentThread().getId()).toString());
        AppService.Post(new RunnableCallback(AppService.getNativeManager()) {

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("openWayToGo callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("openWayToGo event running in thread ")).append(Thread.currentThread().getId()).toString());
                com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
                activitybase.startActivityForResult(new Intent(activitybase, com/waze/install/WayToGoActivity), 1);
            }

        });
    }

    private native void setCountryNTV(String s);

    public static void staticInit()
    {
        new InstallNativeManager();
    }

    private native void termsOfUseResponseNTV(int i);

    private native void wayToGoContNTV();

    public static void welcomeGuidedTour(String s)
    {
        Log.d("WAZE", (new StringBuilder("welcomeGuidedTour running in thread ")).append(Thread.currentThread().getId()).toString());
        AppService.Post(new RunnableCallback(AppService.getNativeManager()) {

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("welcomeGuidedTour callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("welcomeGuidedTour event running in thread ")).append(Thread.currentThread().getId()).toString());
                AppService.getMainActivity().cancelSplash();
            }

        });
    }

    public void countrySelected(final int country)
    {
        Log.d("WAZE", (new StringBuilder("countrySelected running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            final InstallNativeManager this$0;
            private final int val$country;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("countrySelected callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("countrySelected event running in thread ")).append(Thread.currentThread().getId()).toString());
                Log.d("WAZE", (new StringBuilder("country= ")).append(country).toString());
                countrySelectedNTV(country);
            }

            
            {
                this$0 = InstallNativeManager.this;
                country = i;
                super();
            }
        });
    }

    public void displayWelcome(final boolean bIsCleanInstall, final boolean bIsMinimal, final int Type)
    {
        AppService.Post(new Runnable() {

            final InstallNativeManager this$0;
            private final int val$Type;
            private final boolean val$bIsCleanInstall;
            private final boolean val$bIsMinimal;

            public void run()
            {
                boolean flag = true;
                InstallNativeManager.m_CleanInstall = bIsCleanInstall;
                InstallNativeManager.m_MinimalInstallation = bIsMinimal;
                MainActivity.bReportMapShownAnalytics = flag;
                com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
                if (Type == 0 || Type == flag)
                {
                    if (InstallNativeManager.m_CleanInstall)
                    {
                        if (AppService.getMainActivity() != null)
                        {
                            AppService.getMainActivity().openMeetYourWazer();
                            return;
                        } else
                        {
                            MainActivity.bToOpenMeetYourWazer = flag;
                            return;
                        }
                    }
                    if (AppService.getMainActivity() != null && AppService.getMainActivity().getLayoutMgr().isSplashVisible())
                    {
                        AppService.getMainActivity().getLayoutMgr().cancelSplash();
                    }
                    NativeManager.getInstance().registerOnUserNameResultListerner(AppService.getMainActivity());
                    NativeManager.getInstance().SuggestUserNameInit();
                    NativeManager.getInstance().SuggestUserNameRequest(null, null, MyWazeNativeManager.getInstance().getNameNTV());
                    return;
                }
                Intent intent = new Intent(activitybase, com/waze/phone/PhoneNumberSignInActivity);
                if (bIsCleanInstall)
                {
                    flag = false;
                }
                intent.putExtra("type", flag);
                String s;
                if (bIsCleanInstall)
                {
                    s = "SIGNUP";
                } else
                {
                    s = "UPGRADE";
                }
                intent.putExtra("fon_shon_rea_son", s);
                activitybase.startActivityForResult(intent, 5000);
            }

            
            {
                this$0 = InstallNativeManager.this;
                bIsCleanInstall = flag;
                bIsMinimal = flag1;
                Type = i;
                super();
            }
        });
    }

    public void getVideoUrl(final boolean isUpgrade, final int width, final int height, final VideoUrlListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            final InstallNativeManager this$0;
            String url;
            private final int val$height;
            private final boolean val$isUpgrade;
            private final VideoUrlListener val$listener;
            private final int val$width;

            public void callback()
            {
                listener.onComplete(url);
            }

            public void event()
            {
                url = getVideoUrlNTV(isUpgrade, width, height);
            }

            
            {
                this$0 = InstallNativeManager.this;
                isUpgrade = flag;
                width = i;
                height = j;
                listener = videourllistener;
                super();
                url = null;
            }
        });
    }

    public void langSelected(final int lang)
    {
        Log.d("WAZE", (new StringBuilder("langSelected running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            final InstallNativeManager this$0;
            private final int val$lang;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("langSelected callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("langSelected event running in thread ")).append(Thread.currentThread().getId()).toString());
                Log.d("WAZE", (new StringBuilder("lang= ")).append(lang).toString());
                langSelectedNTV(lang);
            }

            
            {
                this$0 = InstallNativeManager.this;
                lang = i;
                super();
            }
        });
    }

    public void setCountry(final String value)
    {
        NativeManager.Post(new RunnableUICallback() {

            final InstallNativeManager this$0;
            private final String val$value;

            public void callback()
            {
            }

            public void event()
            {
                setCountryNTV(value);
            }

            
            {
                this$0 = InstallNativeManager.this;
                value = s;
                super();
            }
        });
    }

    public void termsOfUseResponse(final int selection)
    {
        Log.d("WAZE", (new StringBuilder("termsOfUseResponse running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            final InstallNativeManager this$0;
            private final int val$selection;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("termsOfUseResponse callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("termsOfUseResponse event running in thread ")).append(Thread.currentThread().getId()).toString());
                Log.d("WAZE", (new StringBuilder("selection= ")).append(selection).toString());
                NativeManager.Post(selection. new Runnable() {

                    final _cls5 this$1;
                    private final int val$selection;

                    public void run()
                    {
                        termsOfUseResponseNTV(selection);
                    }

            
            {
                this$1 = final__pcls5;
                selection = I.this;
                super();
            }
                });
            }


            
            {
                this$0 = InstallNativeManager.this;
                selection = i;
                super();
            }
        });
    }

    public void wayToGoCont()
    {
        Log.d("WAZE", (new StringBuilder("wayToGoCont running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            final InstallNativeManager this$0;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("wayToGoCont callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("wayToGoCont event running in thread ")).append(Thread.currentThread().getId()).toString());
                wayToGoContNTV();
            }

            
            {
                this$0 = InstallNativeManager.this;
                super();
            }
        });
    }










}
