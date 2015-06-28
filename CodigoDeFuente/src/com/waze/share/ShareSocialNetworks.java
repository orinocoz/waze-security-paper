// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import com.waze.NativeManager;
import com.waze.settings.SettingsDialogListener;
import com.waze.settings.SettingsUtils;
import com.waze.strings.DisplayStrings;
import java.util.ArrayList;

// Referenced classes of package com.waze.share:
//            ShareNativeManager, ShareFbActivity

public final class ShareSocialNetworks
{

    private static String mNetsMenuValues[] = null;

    public ShareSocialNetworks()
    {
    }

    public static void showNetsMenu(final Activity parentActivity)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        ShareNativeManager sharenativemanager = ShareNativeManager.getInstance();
        String s = nativemanager.getLanguageString(DisplayStrings.DS_SHARE);
        ArrayList arraylist = new ArrayList();
        SettingsDialogListener settingsdialoglistener = new SettingsDialogListener() {

            private final Activity val$parentActivity;

            public void onComplete(int i)
            {
                Log.d("WAZE", (new StringBuilder(String.valueOf(com/waze/share/ShareSocialNetworks.getName()))).append(" ").append("Callback on nets menu listener. Selected: ").append(ShareSocialNetworks.mNetsMenuValues[i]).toString());
                if (ShareSocialNetworks.mNetsMenuValues[i].equals("Post to facebook"))
                {
                    Intent intent = new Intent(parentActivity, com/waze/share/ShareFbActivity);
                    parentActivity.startActivityForResult(intent, 1);
                }
            }

            
            {
                parentActivity = activity;
                super();
            }
        };
        if (sharenativemanager.getFBFeatureEnabled())
        {
            arraylist.add("Post to facebook");
        }
        if (sharenativemanager.getFsqFeatureEnabled())
        {
            arraylist.add("Check in on Foursquare");
        }
        mNetsMenuValues = (String[])arraylist.toArray(new String[arraylist.size()]);
        SettingsUtils.showSubmenu(parentActivity, s, mNetsMenuValues, settingsdialoglistener);
    }


}
