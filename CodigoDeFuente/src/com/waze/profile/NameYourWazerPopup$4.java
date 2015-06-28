// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.waze.profile:
//            NameYourWazerPopup

class timer
    implements TextWatcher
{

    final NameYourWazerPopup this$0;
    private Timer timer;

    public void afterTextChanged(Editable editable)
    {
        ((TextView)findViewById(0x7f09044e)).setText(NameYourWazerPopup.access$3(NameYourWazerPopup.this).getLanguageString(DisplayStrings.DS_CHECKING));
        ((TextView)findViewById(0x7f09044e)).setTextColor(AppService.getAppResources().getColor(0x7f080031));
        ((TextView)findViewById(0x7f09044f)).setVisibility(8);
        timer.cancel();
        timer = new Timer();
        timer.schedule(new TimerTask() {

            final NameYourWazerPopup._cls4 this$1;

            public void run()
            {
                AppService.getMainActivity().runOnUiThread(new Runnable() {

                    final _cls1 this$2;

                    public void run()
                    {
                        if (NameYourWazerPopup.access$4(this$0) != null && !NameYourWazerPopup.access$4(this$0).equals(""))
                        {
                            NameYourWazerPopup.access$3(this$0).SuggestUserNameRequest(null, null, NameYourWazerPopup.access$4(this$0));
                        }
                        timer.cancel();
                    }

            
            {
                this$2 = _cls1.this;
                super();
            }
                });
            }


            
            {
                this$1 = NameYourWazerPopup._cls4.this;
                super();
            }
        }, 500L);
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        NameYourWazerPopup.access$5(NameYourWazerPopup.this, false);
        NameYourWazerPopup.access$6(NameYourWazerPopup.this, charsequence.toString());
    }



    _cls1.this._cls1()
    {
        this$0 = NameYourWazerPopup.this;
        super();
        timer = new Timer();
    }
}
