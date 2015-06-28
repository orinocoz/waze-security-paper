// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Dialog;
import android.view.View;
import com.waze.view.timer.TimerView;

// Referenced classes of package com.waze:
//            MsgBox, NativeManager

class t>
    implements Runnable
{

    final val.context this$1;
    private final long val$callback;
    private final long val$context;
    private final int val$valueOne;

    public void run()
    {
        MsgBox.access$10(_fld0, val$valueOne, val$callback, val$context);
    }

    t>()
    {
        this$1 = final_t>;
        val$valueOne = i;
        val$callback = l;
        val$context = J.this;
        super();
    }

    // Unreferenced inner class com/waze/MsgBox$17

/* anonymous class */
    class MsgBox._cls17
        implements android.view.View.OnClickListener
    {

        final MsgBox this$0;
        private final long val$callback;
        private final long val$context;
        private final Dialog val$dialog;
        private final int val$valueOne;

        public void onClick(View view)
        {
            ((TimerView)dialog.findViewById(0x7f090232)).stop();
            ((TimerView)dialog.findViewById(0x7f09022f)).stop();
            try
            {
                dialog.dismiss();
            }
            catch (Exception exception) { }
            if (callback != -1L)
            {
                NativeManager.Post(context. new MsgBox._cls17._cls1());
            }
        }


            
            {
                this$0 = final_msgbox;
                dialog = dialog1;
                callback = l;
                valueOne = i;
                context = J.this;
                super();
            }
    }

}
