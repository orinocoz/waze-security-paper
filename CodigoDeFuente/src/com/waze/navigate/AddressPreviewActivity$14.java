// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.share.FacebookEventPostActivity;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem, DriveToNativeManager

class this._cls0
    implements android.view.y._cls14
{

    final AddressPreviewActivity this$0;

    public void onClick(View view)
    {
        AddressPreviewActivity.access$10(AddressPreviewActivity.this).VerifyEventByIndex(AddressPreviewActivity.access$6(AddressPreviewActivity.this).index, AddressPreviewActivity.access$6(AddressPreviewActivity.this).getMeetingId(), AddressPreviewActivity.access$21(AddressPreviewActivity.this).getId(), Boolean.valueOf(false));
        Analytics.log("VERIFY_EVENT_SAVE_POST");
        com.waze.social.facebook.zeCompletedListener zecompletedlistener = new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

            final AddressPreviewActivity._cls14 this$1;

            public void onAuthorizeCompleted(boolean flag, int i)
            {
                if (flag)
                {
                    Intent intent1 = new Intent(this$0, com/waze/share/FacebookEventPostActivity);
                    intent1.putExtra("message", AddressPreviewActivity.access$20(this$0).getLanguageString(DisplayStrings.DS_POST_EVENT_WALL_TEXT));
                    intent1.putExtra("link", AddressPreviewActivity.access$20(this$0).getNavLink(AddressPreviewActivity.access$6(this$0).getLocationY().intValue(), AddressPreviewActivity.access$6(this$0).getLocationX().intValue()));
                    intent1.putExtra("Id", AddressPreviewActivity.access$21(this$0).getMeetingId());
                    startActivityForResult(intent1, 333);
                }
            }

            
            {
                this$1 = AddressPreviewActivity._cls14.this;
                super();
            }
        };
        if (AddressPreviewActivity.access$20(AddressPreviewActivity.this).IsPublishStreamFbPermissionsNTV())
        {
            Intent intent = new Intent(AddressPreviewActivity.this, com/waze/share/FacebookEventPostActivity);
            intent.putExtra("message", AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_POST_EVENT_WALL_TEXT));
            intent.putExtra("link", AddressPreviewActivity.access$20(AddressPreviewActivity.this).getNavLink(AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue()));
            intent.putExtra("Id", AddressPreviewActivity.access$21(AddressPreviewActivity.this).getMeetingId());
            startActivityForResult(intent, 333);
            return;
        } else
        {
            FacebookWrapper.getInstance().authorize_publish_stream(AddressPreviewActivity.this, zecompletedlistener);
            return;
        }
    }


    _cls1.this._cls1()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
