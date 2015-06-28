// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class this._cls0
    implements Runnable
{

    final MyWazeNativeManager this$0;

    public void run()
    {
        Iterator iterator = mFriendsChangedListeners.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((iendsChanged)iterator.next()).onFriendsChanged();
        } while (true);
    }

    iendsChanged()
    {
        this$0 = MyWazeNativeManager.this;
        super();
    }
}
