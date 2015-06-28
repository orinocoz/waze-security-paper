// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.MainActivity;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze.widget:
//            WazeAppWidgetLog

public class WazeAppWidgetNoDataActivity extends ActivityBase
{

    private LinearLayout mBtnClose;
    private LinearLayout mBtnEnter;
    private TextView mBtnTextClose;
    private TextView mBtnTextEnter;
    private TextView mTitleText;
    private TextView mTxtInfo1;
    private TextView mTxtInfo2;

    public WazeAppWidgetNoDataActivity()
    {
    }

    private void initLayout()
    {
        mBtnTextClose = (TextView)findViewById(0x7f0901b6);
        mBtnClose = (LinearLayout)findViewById(0x7f0901b5);
        mBtnTextEnter = (TextView)findViewById(0x7f0901b4);
        mBtnEnter = (LinearLayout)findViewById(0x7f0901b3);
        mTitleText = (TextView)findViewById(0x7f0901ae);
    }

    private void setOnCLickListeners()
    {
        mBtnClose.setOnClickListener(new android.view.View.OnClickListener() {

            final WazeAppWidgetNoDataActivity this$0;

            public void onClick(View view)
            {
                setResult(-1);
                finish();
            }

            
            {
                this$0 = WazeAppWidgetNoDataActivity.this;
                super();
            }
        });
        mBtnEnter.setOnClickListener(new android.view.View.OnClickListener() {

            final WazeAppWidgetNoDataActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(WazeAppWidgetNoDataActivity.this, com/waze/MainActivity);
                intent.setFlags(0x18000000);
                startActivityForResult(intent, 1);
                setResult(-1);
                finish();
            }

            
            {
                this$0 = WazeAppWidgetNoDataActivity.this;
                super();
            }
        });
    }

    public void onCreate(Bundle bundle)
    {
        WazeAppWidgetLog.d("WazeAppWidgetNoDataActivity.onCreate");
        super.onCreate(bundle);
        setContentView(0x7f03001f);
        initLayout();
        setOnCLickListeners();
    }
}
