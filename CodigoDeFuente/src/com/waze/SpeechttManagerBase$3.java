// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            SpeechttManagerBase, NativeManager

class llback extends llback
{

    final SpeechttManagerBase this$0;

    protected void onResults(final long aCbContext, final String aResult, final int aStatus)
    {
        NativeManager.Post(new Runnable() {

            final SpeechttManagerBase._cls3 this$1;
            private final long val$aCbContext;
            private final String val$aResult;
            private final int val$aStatus;

            public void run()
            {
                SpeechttManagerCallbackNTV(aCbContext, aResult, aStatus);
            }

            
            {
                this$1 = SpeechttManagerBase._cls3.this;
                aCbContext = l;
                aResult = s;
                aStatus = i;
                super();
            }
        });
    }


    _cls1.val.aStatus(long l)
    {
        this$0 = SpeechttManagerBase.this;
        super(l);
    }
}
