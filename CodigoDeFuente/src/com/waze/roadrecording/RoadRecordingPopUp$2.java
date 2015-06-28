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

class val.isRecording
    implements android.view.ngPopUp._cls2
{

    final RoadRecordingPopUp this$0;
    private final boolean val$isRecording;

    public void onClick(View view)
    {
        NativeManager.Post(new Runnable() {

            final RoadRecordingPopUp._cls2 this$1;

            public void run()
            {
                AppService.getNativeManager().EditorTrackToggleNewRoadsNTV();
            }

            
            {
                this$1 = RoadRecordingPopUp._cls2.this;
                super();
            }
        });
        dismiss();
        if (!MyWazeNativeManager.getInstance().isRandomUserNTV())
        {
            RoadRecordingPopUp.access$0(RoadRecordingPopUp.this).setRoadPaving(val$isRecording);
        }
    }

    _cls1.this._cls1()
    {
        this$0 = final_roadrecordingpopup;
        val$isRecording = Z.this;
        super();
    }
}
