// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeSoundManager, Logger

class this._cls0
    implements android.media.ocusChangeListener
{

    final NativeSoundManager this$0;

    public void onAudioFocusChange(int i)
    {
        if ((i & -1) > 0)
        {
            Logger.d_("Sound_Manager", (new StringBuilder("Audio focus is lost. State: ")).append(i).toString());
            return;
        }
        if ((i & 1) > 0)
        {
            Logger.d_("Sound_Manager", (new StringBuilder("Audio focus is gained. State: ")).append(i).toString());
            return;
        } else
        {
            Logger.d_("Sound_Manager", (new StringBuilder("Audio focus unknown state: ")).append(i).toString());
            return;
        }
    }

    udioFocusChangeListener()
    {
        this$0 = NativeSoundManager.this;
        super();
    }
}
