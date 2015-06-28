// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.install:
//            InstallNativeManager

public final class WayToGoActivity extends ActivityBase
{

    private NativeManager nativeManager;
    private InstallNativeManager nm;

    public WayToGoActivity()
    {
    }

    public void acceptClicked(View view)
    {
        Log.d("WAZE", "accept pressed");
        nm.termsOfUseResponse(1);
        setResult(-1);
        finish();
    }

    public void declineClicked(View view)
    {
        Log.d("WAZE", "decline pressed");
        nm.termsOfUseResponse(0);
        setResult(-1);
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        nativeManager = AppService.getNativeManager();
        ((TextView)findViewById(0x7f090283)).setText(nativeManager.getLanguageString(DisplayStrings.DS_HI_THEREE));
        nm = new InstallNativeManager();
    }
}
