// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import com.waze.settings.SettingsDialogListener;

// Referenced classes of package com.waze.share:
//            ShareSocialNetworks, ShareFbActivity

class val.parentActivity
    implements SettingsDialogListener
{

    private final Activity val$parentActivity;

    public void onComplete(int i)
    {
        Log.d("WAZE", (new StringBuilder(String.valueOf(com/waze/share/ShareSocialNetworks.getName()))).append(" ").append("Callback on nets menu listener. Selected: ").append(ShareSocialNetworks.access$0()[i]).toString());
        if (ShareSocialNetworks.access$0()[i].equals("Post to facebook"))
        {
            Intent intent = new Intent(val$parentActivity, com/waze/share/ShareFbActivity);
            val$parentActivity.startActivityForResult(intent, 1);
        }
    }

    ner()
    {
        val$parentActivity = activity;
        super();
    }
}
