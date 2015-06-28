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

class this._cls1
    implements Runnable
{

    final sh this$1;

    public void run()
    {
        AddFavoriteActivity.access$0(_fld0).CloseProgressPopup();
        Intent intent = new Intent();
        setResult(32783, intent);
        finish();
    }

    l.addessItem()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/AddFavoriteActivity$2

/* anonymous class */
    class AddFavoriteActivity._cls2
        implements android.view.View.OnClickListener
    {

        final AddFavoriteActivity this$0;
        private final AddressItem val$addessItem;

        public void onClick(View view)
        {
            DriveToNativeManager.getInstance().CalendarAddressRemove(addessItem.getMeetingId());
            AddFavoriteActivity.access$0(AddFavoriteActivity.this).OpenProgressIconPopup(AddFavoriteActivity.access$0(AddFavoriteActivity.this).getLanguageString(DisplayStrings.DS_EVENT_REMOVED), "sign_up_big_v");
            (new Handler()).postDelayed(new AddFavoriteActivity._cls2._cls1(), 1000L);
        }


            
            {
                this$0 = final_addfavoriteactivity;
                addessItem = AddressItem.this;
                super();
            }
    }

}
