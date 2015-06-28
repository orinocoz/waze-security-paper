// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.KeyEvent;
import android.widget.TextView;
import com.waze.autocomplete.ContactsCompletionView;
import com.waze.user.PersonBase;
import java.util.ArrayList;

// Referenced classes of package com.waze.navigate.social:
//            EditFriendsActivity

class this._cls0
    implements android.widget.nListener
{

    final EditFriendsActivity this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (EditFriendsActivity.access$3(EditFriendsActivity.this).enoughToFilter() && EditFriendsActivity.access$4(EditFriendsActivity.this) != null)
        {
            if (EditFriendsActivity.access$4(EditFriendsActivity.this).getCount() > 0)
            {
                PersonBase personbase = (PersonBase)EditFriendsActivity.access$4(EditFriendsActivity.this).getItem(0);
                int j = EditFriendsActivity.access$2(EditFriendsActivity.this).indexOf(personbase);
                int k = EditFriendsActivity.access$5(EditFriendsActivity.this);
                boolean flag = false;
                if (j >= k)
                {
                    flag = true;
                }
                if (flag)
                {
                    EditFriendsActivity.access$0(EditFriendsActivity.this, personbase);
                } else
                {
                    EditFriendsActivity.access$1(EditFriendsActivity.this, personbase);
                }
            }
            EditFriendsActivity.access$3(EditFriendsActivity.this).setText("");
        }
        return true;
    }

    rsonFilteredArrayAdapter()
    {
        this$0 = EditFriendsActivity.this;
        super();
    }
}
