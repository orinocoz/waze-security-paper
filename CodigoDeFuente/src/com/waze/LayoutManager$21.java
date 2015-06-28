// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Dialog;
import android.content.Intent;
import android.view.View;
import com.waze.settings.SettingsVoiceCommandsActivity;

// Referenced classes of package com.waze:
//            LayoutManager, AppService, MainActivity

class val.dialog
    implements android.view.ner
{

    final LayoutManager this$0;
    private final Dialog val$dialog;

    public void onClick(View view)
    {
        try
        {
            MainActivity mainactivity = AppService.getMainActivity();
            mainactivity.startActivity(new Intent(mainactivity, com/waze/settings/SettingsVoiceCommandsActivity));
            val$dialog.cancel();
            val$dialog.dismiss();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    VoiceCommandsActivity()
    {
        this$0 = final_layoutmanager;
        val$dialog = Dialog.this;
        super();
    }
}
