// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.app.backup.BackupManager;
import android.app.backup.RestoreObserver;
import android.os.Bundle;
import android.text.util.Linkify;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeCanvas;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.settings.SettingsCheckboxView;
import com.waze.strings.DisplayStrings;
import java.util.Locale;

// Referenced classes of package com.waze.install:
//            InstallNativeManager

public final class TermsOfUseActivity extends ActivityBase
{

    private SettingsCheckboxView MailCheckBox;
    private boolean mIsCloseEnabled;
    private NativeManager nativeManager;
    private InstallNativeManager nm;

    public TermsOfUseActivity()
    {
        mIsCloseEnabled = false;
    }

    public void GoogleTest()
    {
    }

    public void onBackPressed()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030117);
        NativeCanvas.getInstance().setCancelSplashNeeded(true);
        nativeManager = AppService.getNativeManager();
        TextView textview;
        try
        {
            (new BackupManager(this)).requestRestore(new RestoreObserver() {

                final TermsOfUseActivity this$0;

                public void restoreFinished(int i)
                {
                    super.restoreFinished(i);
                }

                public void restoreStarting(int i)
                {
                    super.restoreStarting(i);
                }

            
            {
                this$0 = TermsOfUseActivity.this;
                super();
            }
            });
        }
        catch (Exception exception) { }
        NativeManager.getInstance().SignUplogAnalytics("AGREEMENT", null, null, true);
        if (Locale.getDefault().getCountry().equalsIgnoreCase("IL"))
        {
            textview = (TextView)findViewById(0x7f09071b);
            textview.setText(0x7f070044);
        } else
        {
            textview = (TextView)findViewById(0x7f09071b);
        }
        findViewById(0x7f09071e).setOnClickListener(new android.view.View.OnClickListener() {

            final TermsOfUseActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("AGREEMENT_RESPONSE", "VAUE", "SUCCESS", true);
                nm.termsOfUseResponse(1);
                setResult(-1);
                finish();
            }

            
            {
                this$0 = TermsOfUseActivity.this;
                super();
            }
        });
        findViewById(0x7f09071c).setOnClickListener(new android.view.View.OnClickListener() {

            final TermsOfUseActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("AGREEMENT_RESPONSE", "VAUE", "FAILURE", true);
                nm.termsOfUseResponse(0);
            }

            
            {
                this$0 = TermsOfUseActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f09071a)).setText(nativeManager.getLanguageString("Waze\u2122 End User License Agreement"));
        ((TextView)findViewById(0x7f09071f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ACCEPT));
        ((TextView)findViewById(0x7f09071d)).setText(nativeManager.getLanguageString(DisplayStrings.DS_DECLINE));
        Linkify.addLinks(textview, 1);
        nm = new InstallNativeManager();
        GoogleTest();
    }

}
