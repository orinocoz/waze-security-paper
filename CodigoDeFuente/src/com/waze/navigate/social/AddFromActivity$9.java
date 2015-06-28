// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;


// Referenced classes of package com.waze.navigate.social:
//            OnCompleteTaskListener, AddFromActivity

class this._cls0
    implements OnCompleteTaskListener
{

    final AddFromActivity this$0;

    public void onCompleted()
    {
        mHasReadUidMap = true;
        if (mHasReadAddressBook && mHasReadCurFriends)
        {
            readAddressBook();
        }
    }

    ener()
    {
        this$0 = AddFromActivity.this;
        super();
    }
}
