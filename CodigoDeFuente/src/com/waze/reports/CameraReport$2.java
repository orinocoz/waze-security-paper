// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            CameraReport

class this._cls0
    implements android.view.tener
{

    final CameraReport this$0;

    public void onClick(View view)
    {
        if (CameraReport.access$0(CameraReport.this) == 1)
        {
            CameraReport.access$1(CameraReport.this, -1);
            String s1 = nativeManager.getLanguageString(DisplayStrings.DS_CAMERA);
            ((TextView)findViewById(0x7f090034)).setText(s1);
            ((ImageView)findViewById(0x7f0901eb)).setImageResource(0x7f0201f7);
            CameraReport.access$2(CameraReport.this, false);
        } else
        {
            CameraReport.access$1(CameraReport.this, 1);
            String s = nativeManager.getLanguageString(DisplayStrings.DS_RED_LIGHT);
            ((TextView)findViewById(0x7f090034)).setText(s);
            ((ImageView)findViewById(0x7f0901e7)).setImageResource(0x7f0201f7);
            ((ImageView)findViewById(0x7f0901eb)).setImageResource(0x7f0201fa);
            ((ImageView)findViewById(0x7f0901ef)).setImageResource(0x7f0201f7);
            CameraReport.access$2(CameraReport.this, true);
        }
        stop();
    }

    r()
    {
        this$0 = CameraReport.this;
        super();
    }
}
