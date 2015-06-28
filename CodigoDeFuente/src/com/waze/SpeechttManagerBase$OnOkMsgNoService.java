// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.DialogInterface;

// Referenced classes of package com.waze:
//            SpeechttManagerBase

protected class this._cls0
    implements android.content._01_
{

    final SpeechttManagerBase this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
        ResultsHandler(null);
    }

    protected r()
    {
        this$0 = SpeechttManagerBase.this;
        super();
    }
}
