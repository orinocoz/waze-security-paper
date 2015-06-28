// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.waze.ifs.ui.VideoActivity;
import com.waze.install.InstallNativeManager;

// Referenced classes of package com.waze.settings:
//            SettingsHelpActivity

class this._cls1
    implements com.waze.install.oUrlListener
{

    final tActivity this$1;

    public void onComplete(String s)
    {
        Intent intent = new Intent(_fld0, com/waze/ifs/ui/VideoActivity);
        intent.putExtra("url", s);
        startActivity(intent);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/settings/SettingsHelpActivity$2

/* anonymous class */
    class SettingsHelpActivity._cls2
        implements android.view.View.OnClickListener
    {

        final SettingsHelpActivity this$0;

        public void onClick(View view)
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
            (new InstallNativeManager()).getVideoUrl(false, displaymetrics.widthPixels, displaymetrics.heightPixels, new SettingsHelpActivity._cls2._cls1());
        }


            
            {
                this$0 = SettingsHelpActivity.this;
                super();
            }
    }

}
