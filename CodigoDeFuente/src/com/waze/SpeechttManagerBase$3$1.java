// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            SpeechttManagerBase, NativeManager

class val.aStatus
    implements Runnable
{

    final val.aStatus this$1;
    private final long val$aCbContext;
    private final String val$aResult;
    private final int val$aStatus;

    public void run()
    {
        SpeechttManagerCallbackNTV(val$aCbContext, val$aResult, val$aStatus);
    }

    back()
    {
        this$1 = final_back;
        val$aCbContext = l;
        val$aResult = s;
        val$aStatus = I.this;
        super();
    }

    // Unreferenced inner class com/waze/SpeechttManagerBase$3

/* anonymous class */
    class SpeechttManagerBase._cls3 extends SpeechttManagerBase.Callback
    {

        final SpeechttManagerBase this$0;

        protected void onResults(final long aCbContext, final String aResult, int i)
        {
            NativeManager.Post(i. new SpeechttManagerBase._cls3._cls1());
        }


            
            {
                this$0 = SpeechttManagerBase.this;
                super(l);
            }
    }

}
