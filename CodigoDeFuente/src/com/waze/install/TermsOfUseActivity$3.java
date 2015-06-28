// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.view.View;
import com.waze.NativeManager;

// Referenced classes of package com.waze.install:
//            TermsOfUseActivity, InstallNativeManager

class this._cls0
    implements android.view.y._cls3
{

    final TermsOfUseActivity this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().SignUplogAnalytics("AGREEMENT_RESPONSE", "VAUE", "FAILURE", true);
        TermsOfUseActivity.access$0(TermsOfUseActivity.this).termsOfUseResponse(0);
    }

    ()
    {
        this$0 = TermsOfUseActivity.this;
        super();
    }
}
