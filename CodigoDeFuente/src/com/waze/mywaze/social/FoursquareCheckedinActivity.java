// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

public class FoursquareCheckedinActivity extends ActivityBase
{

    private NativeManager nativeManager;

    public FoursquareCheckedinActivity()
    {
        nativeManager = AppService.getNativeManager();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030057);
        ((TitleBar)findViewById(0x7f0902c2)).init(this, DisplayStrings.DS_FOURSQUARE);
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            ((TextView)findViewById(0x7f0902c4)).setText(bundle1.getString("com.waze.mywaze.foursquare_label"));
            ((TextView)findViewById(0x7f0902c5)).setText(bundle1.getString("com.waze.mywaze.foursquare_address"));
            ((TextView)findViewById(0x7f0902c6)).setText((new StringBuilder()).append(nativeManager.getLanguageString(DisplayStrings.DS_POINTSC)).append(" ").append(bundle1.getString("com.waze.mywaze.foursquare_points")).toString());
            ((TextView)findViewById(0x7f0902c7)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FULL_DETAILS_ON_THIS_CHECKHIN_ARE_AVAILABLE_FOR_YOU_ON_FOURSQUARE_COM_));
        }
    }
}
