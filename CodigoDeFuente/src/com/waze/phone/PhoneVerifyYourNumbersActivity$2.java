// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;
import com.waze.settings.SettingsDialogListener;
import com.waze.settings.SettingsUtils;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.phone:
//            PhoneVerifyYourNumbersActivity, PhoneVerifyNumberFailure

class this._cls0
    implements android.view._cls2
{

    final PhoneVerifyYourNumbersActivity this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().SignUplogAnalytics("RESEND_CODE", "VAUE", (new StringBuilder()).append(PhoneVerifyYourNumbersActivity.access$0(PhoneVerifyYourNumbersActivity.this)).toString(), true);
        SettingsUtils.showSubmenu(PhoneVerifyYourNumbersActivity.this, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CHOOSE_METHOD), PhoneVerifyYourNumbersActivity.access$2(PhoneVerifyYourNumbersActivity.this), new SettingsDialogListener() {

            final PhoneVerifyYourNumbersActivity._cls2 this$1;

            public void onComplete(int i)
            {
                int j = 0;
                if (i != 0) goto _L2; else goto _L1
_L1:
                NativeManager.getInstance().SignUplogAnalytics("RESEND_VIA_TEXT", "VAUE", (new StringBuilder()).append(PhoneVerifyYourNumbersActivity.access$0(this$0)).toString(), true);
_L6:
                if (PhoneVerifyYourNumbersActivity.access$0(this$0) != 3)
                {
                    break; /* Loop/switch isn't completed */
                }
                NativeManager.getInstance().SignUplogAnalytics("VERIFICATION_GIVE_UP", "VAUE", (new StringBuilder()).append(PhoneVerifyYourNumbersActivity.access$0(this$0)).toString(), true);
                Intent intent = new Intent(this$0, com/waze/phone/PhoneVerifyNumberFailure);
                intent.putExtra("AuthNumberOfRetries", PhoneVerifyYourNumbersActivity.access$0(this$0));
                PhoneVerifyYourNumbersActivity.access$3(this$0, 0);
                startActivityForResult(intent, 3334);
_L4:
                return;
_L2:
                if (i != 1) goto _L4; else goto _L3
_L3:
                NativeManager.getInstance().SignUplogAnalytics("RESEND_VIA_VOICE", "VAUE", (new StringBuilder()).append(PhoneVerifyYourNumbersActivity.access$0(this$0)).toString(), true);
                j = 1;
                if (true) goto _L6; else goto _L5
_L5:
                NativeManager.getInstance().SignUplogAnalytics("ENTER_VERIFICATION_SHOWN", "VAUE", (new StringBuilder()).append(PhoneVerifyYourNumbersActivity.access$0(this$0)).toString(), true);
                NativeManager.getInstance().AuthPhoneNumber(null, PhoneVerifyYourNumbersActivity.access$4(this$0), j, null);
                PhoneVerifyYourNumbersActivity.access$5(this$0, true);
                PhoneVerifyYourNumbersActivity phoneverifyyournumbersactivity = this$0;
                PhoneVerifyYourNumbersActivity.access$3(phoneverifyyournumbersactivity, 1 + PhoneVerifyYourNumbersActivity.access$0(phoneverifyyournumbersactivity));
                return;
            }

            
            {
                this$1 = PhoneVerifyYourNumbersActivity._cls2.this;
                super();
            }
        });
    }


    _cls1.this._cls1()
    {
        this$0 = PhoneVerifyYourNumbersActivity.this;
        super();
    }
}
