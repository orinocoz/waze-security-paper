// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.profile:
//            MyProfileActivity

class aEvent
    implements TextWatcher
{

    private Runnable aEvent;
    final MyProfileActivity this$0;

    public void afterTextChanged(Editable editable)
    {
        if (MyProfileActivity.access$4(MyProfileActivity.this))
        {
            return;
        }
        MyProfileActivity.access$8(MyProfileActivity.this, true);
        TextView textview = (TextView)findViewById(0x7f09041e);
        textview.setText(MyProfileActivity.access$9(MyProfileActivity.this).getLanguageString(DisplayStrings.DS_CHECKING));
        textview.setTextColor(AppService.getAppResources().getColor(0x7f080031));
        textview.setVisibility(0);
        findViewById(0x7f09041f).setVisibility(8);
        MyProfileActivity.access$10(MyProfileActivity.this, false);
        if (aEvent != null)
        {
            AppService.Remove(aEvent);
        } else
        {
            aEvent = new Runnable() {

                final MyProfileActivity._cls9 this$1;

                public void run()
                {
                    if (MyProfileActivity.access$11(this$0) != null && MyProfileActivity.access$11(this$0).length() > 0)
                    {
                        MyProfileActivity.access$9(this$0).SuggestUserNameRequest(null, null, MyProfileActivity.access$11(this$0));
                    }
                }

            
            {
                this$1 = MyProfileActivity._cls9.this;
                super();
            }
            };
        }
        AppService.Post(aEvent, 500L);
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        MyProfileActivity.access$12(MyProfileActivity.this, charsequence.toString());
    }


    _cls1.this._cls1()
    {
        this$0 = MyProfileActivity.this;
        super();
        aEvent = null;
    }
}
