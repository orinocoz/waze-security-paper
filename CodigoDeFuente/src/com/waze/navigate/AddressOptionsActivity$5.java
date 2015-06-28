// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.share.FacebookEventPostActivity;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity, AddressItem, DriveToNativeManager

class this._cls0
    implements android.view.ty._cls5
{

    final AddressOptionsActivity this$0;

    public void onClick(View view)
    {
        AddressOptionsActivity.access$0(AddressOptionsActivity.this).VerifyEventByIndex(AddressOptionsActivity.access$1(AddressOptionsActivity.this).index, AddressOptionsActivity.access$1(AddressOptionsActivity.this).getMeetingId(), AddressOptionsActivity.access$9(AddressOptionsActivity.this).getId(), Boolean.valueOf(false));
        Analytics.log("VERIFY_EVENT_SAVE_POST");
        new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

            final AddressOptionsActivity._cls5 this$1;

            public void onAuthorizeCompleted(boolean flag, int i)
            {
                if (flag)
                {
                    Intent intent = new Intent(this$0, com/waze/share/FacebookEventPostActivity);
                    intent.putExtra("message", AddressOptionsActivity.access$10(this$0).getLanguageString(DisplayStrings.DS_POST_EVENT_WALL_TEXT));
                    intent.putExtra("link", AddressOptionsActivity.access$10(this$0).getNavLink(AddressOptionsActivity.access$1(this$0).getLocationY().intValue(), AddressOptionsActivity.access$1(this$0).getLocationX().intValue()));
                    intent.putExtra("Id", AddressOptionsActivity.access$9(this$0).getMeetingId());
                    startActivityForResult(intent, 333);
                }
            }

            
            {
                this$1 = AddressOptionsActivity._cls5.this;
                super();
            }
        };
    }


    _cls1.this._cls1()
    {
        this$0 = AddressOptionsActivity.this;
        super();
    }
}
