// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.waze.phone.AddressBook;

// Referenced classes of package com.waze:
//            AppService, MainActivity, NativeManager

public final class FreeMapAppActivity extends Activity
{

    public FreeMapAppActivity()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        boolean flag = getIntent().getBooleanExtra("Add", false);
        String s = getIntent().getStringExtra("QuestionID");
        String s1 = getIntent().getStringExtra("PushClicked");
        Intent intent;
        if (flag)
        {
            if (AppService.getAppContext() != null)
            {
                AddressBook.CreateAccount();
            } else
            {
                NativeManager.bToCreateAcc = true;
            }
        }
        intent = new Intent(this, com/waze/MainActivity);
        intent.setData(getIntent().getData());
        if (s != null && !s.isEmpty())
        {
            intent.putExtra("QuestionID", s);
        }
        if (s1 != null && !s1.isEmpty())
        {
            intent.putExtra("PushClicked", s1);
        }
        startActivity(intent);
        finish();
    }
}
