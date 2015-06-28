// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.os.Handler;
import android.view.View;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.navigate:
//            AddFavoriteActivity, DriveToNativeManager, AddressItem

class val.addessItem
    implements android.view.ty._cls2
{

    final AddFavoriteActivity this$0;
    private final AddressItem val$addessItem;

    public void onClick(View view)
    {
        DriveToNativeManager.getInstance().CalendarAddressRemove(val$addessItem.getMeetingId());
        AddFavoriteActivity.access$0(AddFavoriteActivity.this).OpenProgressIconPopup(AddFavoriteActivity.access$0(AddFavoriteActivity.this).getLanguageString(DisplayStrings.DS_EVENT_REMOVED), "sign_up_big_v");
        (new Handler()).postDelayed(new Runnable() {

            final AddFavoriteActivity._cls2 this$1;

            public void run()
            {
                AddFavoriteActivity.access$0(this$0).CloseProgressPopup();
                Intent intent = new Intent();
                setResult(32783, intent);
                finish();
            }

            
            {
                this$1 = AddFavoriteActivity._cls2.this;
                super();
            }
        }, 1000L);
    }


    _cls1.this._cls1()
    {
        this$0 = final_addfavoriteactivity;
        val$addessItem = AddressItem.this;
        super();
    }
}
