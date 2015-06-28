// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.waze.view.button.SwipeableButton;

public class TestActivity extends Activity
{

    public TestActivity()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030118);
        ((SwipeableButton)findViewById(0x7f090720)).setOnClickListener(new com.waze.view.button.SwipeableButton.SwipeableButtonListener() {

            final TestActivity this$0;

            public void onClick()
            {
                Log.d("WAZE", "On click!");
            }

            public void onSwipe()
            {
                Log.d("WAZE", "On swipe!");
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                startActivityForResult(intent, 32770);
            }

            
            {
                this$0 = TestActivity.this;
                super();
            }
        });
        ((SwipeableButton)findViewById(0x7f090721)).setOnClickListener(new com.waze.view.button.SwipeableButton.SwipeableButtonListener() {

            final TestActivity this$0;

            public void onClick()
            {
                Log.d("WAZE", "On click2!");
            }

            public void onSwipe()
            {
                Log.d("WAZE", "On swipe2!");
            }

            
            {
                this$0 = TestActivity.this;
                super();
            }
        });
    }
}
