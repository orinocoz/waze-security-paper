// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeManager;

// Referenced classes of package com.waze.reports:
//            EditPlaceValidatorsHolder

class 
    implements Runnable
{

    public void run()
    {
        EditPlaceValidatorsHolder.access$0(NativeManager.getInstance().venueProviderGetFieldValidators());
    }

    ()
    {
    }
}
