// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.text.Editable;
import android.text.TextWatcher;
import com.waze.share.ShareFbQueries;

// Referenced classes of package com.waze:
//            PhoneList

class t>
    implements TextWatcher
{

    final PhoneList this$0;

    public void afterTextChanged(Editable editable)
    {
        String s = editable.toString();
        if (s != null && s.length() > 0)
        {
            ShareFbQueries.getFriendsList(PhoneList.this, s, 30, PhoneList.this, false);
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    e()
    {
        this$0 = PhoneList.this;
        super();
    }
}
