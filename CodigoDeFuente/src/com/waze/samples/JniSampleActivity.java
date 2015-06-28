// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.samples;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze.samples:
//            JniSampleActivityNativeManager

public class JniSampleActivity extends ActivityBase
    implements JniSampleActivityNativeManager.ITimeUpdater
{

    private static JniSampleActivityNativeManager mActivityNativeManager = null;

    public JniSampleActivity()
    {
    }

    public static JniSampleActivityNativeManager getActivityNativeManager()
    {
        return mActivityNativeManager;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mActivityNativeManager = JniSampleActivityNativeManager.getInstance();
        setContentView(0x7f03006f);
        ((Button)findViewById(0x7f09035c)).setOnClickListener(new android.view.View.OnClickListener() {

            final JniSampleActivity this$0;

            public void onClick(View view)
            {
                JniSampleActivity.mActivityNativeManager.runButtonClick(JniSampleActivity.this);
            }

            
            {
                this$0 = JniSampleActivity.this;
                super();
            }
        });
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public void updateTime(int i, int j, int k)
    {
        ((TextView)findViewById(0x7f09035e)).setText(Integer.toString(i));
        ((TextView)findViewById(0x7f09035f)).setText(Integer.toString(j));
        ((TextView)findViewById(0x7f090360)).setText(Integer.toString(k));
    }


}
