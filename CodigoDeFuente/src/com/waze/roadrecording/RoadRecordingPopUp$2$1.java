// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.roadrecording;

import android.view.View;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.reports.ReportMenu;

// Referenced classes of package com.waze.roadrecording:
//            RoadRecordingPopUp

class this._cls1
    implements Runnable
{

    final dsNTV this$1;

    public void run()
    {
        AppService.getNativeManager().EditorTrackToggleNewRoadsNTV();
    }

    l.isRecording()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/roadrecording/RoadRecordingPopUp$2

/* anonymous class */
    class RoadRecordingPopUp._cls2
        implements android.view.View.OnClickListener
    {

        final RoadRecordingPopUp this$0;
        private final boolean val$isRecording;

        public void onClick(View view)
        {
            NativeManager.Post(new RoadRecordingPopUp._cls2._cls1());
            dismiss();
            if (!MyWazeNativeManager.getInstance().isRandomUserNTV())
            {
                RoadRecordingPopUp.access$0(RoadRecordingPopUp.this).setRoadPaving(isRecording);
            }
        }

            
            {
                this$0 = final_roadrecordingpopup;
                isRecording = Z.this;
                super();
            }
    }

}
