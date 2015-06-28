// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.roadrecording;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.reports.ReportMenu;
import com.waze.strings.DisplayStrings;
import com.waze.view.button.AutoResizeTextButton;

public class RoadRecordingPopUp extends Dialog
{

    private ReportMenu mReportMenu;

    public RoadRecordingPopUp(Context context, ReportMenu reportmenu)
    {
        super(context, 0x7f06000f);
        mReportMenu = reportmenu;
    }

    private void initDlg()
    {
        setContentView(0x7f0300ce);
        getWindow().setLayout(-1, -1);
        final boolean isRecording;
        AutoResizeTextButton autoresizetextbutton;
        if (AppService.getNativeManager().isEditorIgnoreNewRoadsNTV())
        {
            isRecording = false;
        } else
        {
            isRecording = true;
        }
        setTitle();
        autoresizetextbutton = (AutoResizeTextButton)findViewById(0x7f090033);
        autoresizetextbutton.setText(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLOSE));
        autoresizetextbutton.setOnClickListener(new android.view.View.OnClickListener() {

            final RoadRecordingPopUp this$0;

            public void onClick(View view)
            {
                dismiss();
            }

            
            {
                this$0 = RoadRecordingPopUp.this;
                super();
            }
        });
        if (isRecording)
        {
            setAdditionTextTitle(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_DONEQ));
            setAdditionText(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLICK_STOP_AND_MAKE_SURE_TO_GO));
            setButtonText(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_STOP_PAVING));
            ((ImageView)findViewById(0x7f0903ef)).setImageResource(0x7f0201ff);
        } else
        {
            setAdditionTextTitle(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_NO_ROAD_HEREQ));
            setAdditionText(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLICK_PAVE_AND_SIMPLY_DRIVE));
            setButtonText(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_PAVE_ROAD));
            ((ImageView)findViewById(0x7f0903ef)).setImageResource(0x7f020200);
        }
        findViewById(0x7f090598).setOnClickListener(new android.view.View.OnClickListener() {

            final RoadRecordingPopUp this$0;
            private final boolean val$isRecording;

            public void onClick(View view)
            {
                NativeManager.Post(new Runnable() {

                    final _cls2 this$1;

                    public void run()
                    {
                        AppService.getNativeManager().EditorTrackToggleNewRoadsNTV();
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
                dismiss();
                if (!MyWazeNativeManager.getInstance().isRandomUserNTV())
                {
                    mReportMenu.setRoadPaving(isRecording);
                }
            }

            
            {
                this$0 = RoadRecordingPopUp.this;
                isRecording = flag;
                super();
            }
        });
    }

    private void setAdditionText(String s)
    {
        ((TextView)findViewById(0x7f0903f1)).setText(s);
    }

    private void setAdditionTextTitle(String s)
    {
        ((TextView)findViewById(0x7f0903f0)).setText(s);
    }

    private void setButtonText(String s)
    {
        ((TextView)findViewById(0x7f090599)).setText(s);
    }

    private void setTitle()
    {
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_PAVE_ROAD);
        ((TextView)findViewById(0x7f090595)).setText(s);
    }

    public void onBackPressed()
    {
        boolean flag;
        if (AppService.getNativeManager().isEditorIgnoreNewRoadsNTV())
        {
            flag = false;
        } else
        {
            flag = true;
        }
        if (flag)
        {
            dismiss();
            mReportMenu.setRoadPaving(flag);
            return;
        } else
        {
            dismiss();
            mReportMenu.show();
            return;
        }
    }

    public void onOrientationChanged(int i)
    {
        initDlg();
    }

    public void open()
    {
        initDlg();
        super.show();
    }

}
