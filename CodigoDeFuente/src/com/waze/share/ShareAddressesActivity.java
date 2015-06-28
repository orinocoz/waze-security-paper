// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.PhoneList;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

public class ShareAddressesActivity extends ActivityBase
{

    private NativeManager nativeManager;

    public ShareAddressesActivity()
    {
        nativeManager = AppService.getNativeManager();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300fd);
        ((TitleBar)findViewById(0x7f090073)).init(this, DisplayStrings.DS_SHARE_ADDRESSES);
        ((TextView)findViewById(0x7f09067f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FORGET_ABOUT_ADDRESSES));
        ((TextView)findViewById(0x7f090680)).setText(nativeManager.getLanguageString(DisplayStrings.DS_DRIVING_TO_MEET_A_FRIEND));
        ((Button)findViewById(0x7f090681)).setText(nativeManager.getLanguageString(DisplayStrings.DS_GOT_IT_SHOW_ME));
        findViewById(0x7f090681).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareAddressesActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(ShareAddressesActivity.this, com/waze/PhoneList);
                intent.putExtra("SelectedTab", 0);
                startActivityForResult(intent, 1);
            }

            
            {
                this$0 = ShareAddressesActivity.this;
                super();
            }
        });
    }
}
