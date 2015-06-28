// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.install:
//            SelectCountryActivity

public final class LocationFailedActivity extends ActivityBase
{

    public LocationFailedActivity()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    public void onBackPressed()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030079);
        NativeManager nativemanager = NativeManager.getInstance();
        ((TextView)findViewById(0x7f09037e)).setText(nativemanager.getLanguageString(DisplayStrings.DS_LOCATION_FAILED));
        ((Button)findViewById(0x7f09037f)).setText(nativemanager.getLanguageString(DisplayStrings.DS_SELECT_COUNTRY));
        ((ImageView)findViewById(0x7f09037d)).setImageDrawable(ResManager.GetSkinDrawable("moods/sad.bin"));
        ((RelativeLayout)findViewById(0x7f09037c)).setBackgroundDrawable(ResManager.GetSkinDrawable("welcome.bin"));
        findViewById(0x7f09037f).setOnClickListener(new android.view.View.OnClickListener() {

            final LocationFailedActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(LocationFailedActivity.this, com/waze/install/SelectCountryActivity);
                startActivityForResult(intent, 1);
            }

            
            {
                this$0 = LocationFailedActivity.this;
                super();
            }
        });
    }
}
