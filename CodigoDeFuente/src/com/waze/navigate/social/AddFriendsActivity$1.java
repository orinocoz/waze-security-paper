// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.AddressBook;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneRequestAccessDialog;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsActivity, AddFromActivity

class this._cls0
    implements android.view.sActivity._cls1
{

    final AddFriendsActivity this$0;

    public void onClick(View view)
    {
        Analytics.log("ADD_FRIENDS_OPTIONS_CONTACTS_CLICK", null, null);
        if (MyWazeNativeManager.getInstance().getContactLoggedInNTV())
        {
            if (NativeManager.getInstance().IsAccessToContactsEnableNTV())
            {
                Intent intent1 = new Intent(AddFriendsActivity.this, com/waze/navigate/social/AddFromActivity);
                intent1.putExtra(AddFromActivity.INTENT_FROM_WHERE, AddFromActivity.INTENT_FROM_DEFAULT);
                startActivityForResult(intent1, 1001);
                return;
            } else
            {
                (new PhoneRequestAccessDialog(AddFriendsActivity.this, new com.waze.phone.PhoneRequestAccessDialog.PhoneRequestAccessResultListener() {

                    final AddFriendsActivity._cls1 this$1;

                    public void onResult(boolean flag)
                    {
                        if (flag)
                        {
                            NativeManager.bToUploadContacts = true;
                            AddressBook.RequestSync(false);
                            Intent intent2 = new Intent(this$0, com/waze/navigate/social/AddFromActivity);
                            intent2.putExtra(AddFromActivity.INTENT_FROM_WHERE, AddFromActivity.INTENT_FROM_DEFAULT);
                            startActivityForResult(intent2, 1001);
                        }
                    }

            
            {
                this$1 = AddFriendsActivity._cls1.this;
                super();
            }
                })).show();
                return;
            }
        } else
        {
            Intent intent = new Intent(AddFriendsActivity.this, com/waze/phone/PhoneNumberSignInActivity);
            intent.putExtra("type", 1);
            intent.putExtra("back", 1);
            intent.putExtra("fon_shon_rea_son", "FEATURE");
            startActivityForResult(intent, 1002);
            return;
        }
    }


    _cls1.this._cls1()
    {
        this$0 = AddFriendsActivity.this;
        super();
    }
}
