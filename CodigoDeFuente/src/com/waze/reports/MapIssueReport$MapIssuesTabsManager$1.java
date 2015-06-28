// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            MapIssueReport

class isRecording
    implements com.waze.view.tabs.Recording
{

    final boolean isRecording;
    NativeManager mgr;
    final this._cls1 this$1;

    public void onClick(int i)
    {
label0:
        {
            if (i == 0)
            {
                cess._mth0(this._cls1.this).findViewById(0x7f0903ea).setVisibility(0);
                cess._mth0(this._cls1.this).findViewById(0x7f0903ed).setVisibility(8);
                String s1 = mgr.getLanguageString(DisplayStrings.DS_MAP_ISSUE);
                ((TextView)cess._mth0(this._cls1.this).findViewById(0x7f090034)).setText(s1);
                String s2 = mgr.getLanguageString(DisplayStrings.DS_SEND);
                ((TextView)cess._mth0(this._cls1.this).findViewById(0x7f090370)).setText(s2);
                MapIssueReport.access$0(cess._mth0(this._cls1.this), false);
            }
            if (i == 1)
            {
                cess._mth0(this._cls1.this).hideSoftInput();
                cess._mth0(this._cls1.this).findViewById(0x7f0903ea).setVisibility(8);
                String s = mgr.getLanguageString(DisplayStrings.DS_PAVE);
                ((TextView)cess._mth0(this._cls1.this).findViewById(0x7f090034)).setText(s);
                MapIssueReport.access$0(cess._mth0(this._cls1.this), true);
                cess._mth0(this._cls1.this).findViewById(0x7f0903ed).setVisibility(0);
                if (!isRecording)
                {
                    break label0;
                }
                MapIssueReport.access$1(cess._mth0(this._cls1.this), AppService.getNativeManager().getLanguageString(DisplayStrings.DS_DONEQ));
                MapIssueReport.access$2(cess._mth0(this._cls1.this), AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLICK_STOP_AND_MAKE_SURE_TO_GO));
                MapIssueReport.access$3(cess._mth0(this._cls1.this), AppService.getNativeManager().getLanguageString(DisplayStrings.DS_STOP_PAVING));
                ((ImageView)cess._mth0(this._cls1.this).findViewById(0x7f0903ef)).setImageResource(0x7f0201ff);
            }
            return;
        }
        MapIssueReport.access$1(cess._mth0(this._cls1.this), AppService.getNativeManager().getLanguageString(DisplayStrings.DS_NO_ROAD_HEREQ));
        MapIssueReport.access$2(cess._mth0(this._cls1.this), AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLICK_PAVE_AND_SIMPLY_DRIVE));
        MapIssueReport.access$3(cess._mth0(this._cls1.this), AppService.getNativeManager().getLanguageString(DisplayStrings.DS_PAVE_ROAD));
        ((ImageView)cess._mth0(this._cls1.this).findViewById(0x7f0903ef)).setImageResource(0x7f020200);
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
        mgr = NativeManager.getInstance();
        boolean flag;
        if (AppService.getNativeManager().isEditorIgnoreNewRoadsNTV())
        {
            flag = false;
        } else
        {
            flag = true;
        }
        isRecording = flag;
    }
}
