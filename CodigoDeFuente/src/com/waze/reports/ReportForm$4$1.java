// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.waze.NativeManager;
import com.waze.utils.FileUtils;

// Referenced classes of package com.waze.reports:
//            ReportForm, ReportMenu

class val.duration
    implements Runnable
{

    final val.duration this$1;
    private final String val$audioFileNameOnly;
    private final String val$audioFilePath;
    private final String val$description;
    private final int val$direction;
    private final int val$duration;
    private final String val$imageFileNameOnly;
    private final String val$imageFilePath;
    private final int val$reportSubtype;
    private final int val$reportType;

    public void run()
    {
        nativeManager.sendAlertRequest(val$imageFilePath, val$imageFileNameOnly, val$audioFilePath, val$audioFileNameOnly, val$description, val$direction, val$reportType, val$reportSubtype, val$duration);
    }

    l.descriptionView()
    {
        this$1 = final_descriptionview;
        val$imageFilePath = s;
        val$imageFileNameOnly = s1;
        val$audioFilePath = s2;
        val$audioFileNameOnly = s3;
        val$description = s4;
        val$direction = i;
        val$reportType = j;
        val$reportSubtype = k;
        val$duration = I.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/ReportForm$4

/* anonymous class */
    class ReportForm._cls4
        implements android.view.View.OnClickListener
    {

        final ReportForm this$0;
        private final EditText val$descriptionView;

        public void onClick(View view)
        {
            stop();
            String s = imageFilename;
            String s1 = null;
            String s2 = null;
            if (s != null)
            {
                s2 = FileUtils.getOnlyPath(imageFilename);
                s1 = FileUtils.getFilenameOnly(imageFilename);
            }
            final String imageFilePath = s2;
            final String imageFileNameOnly = s1;
            String s3 = audioFilename;
            String s4 = null;
            String s5 = null;
            if (s3 != null)
            {
                s5 = FileUtils.getOnlyPath(audioFilename);
                s4 = FileUtils.getFilenameOnly(audioFilename);
            }
            final String audioFilePath = s5;
            final String audioFileNameOnly = s4;
            EditText edittext = descriptionView;
            String s6 = null;
            if (edittext != null)
            {
                s6 = descriptionView.getText().toString();
            }
            final String description = s6;
            final int direction;
            if (myLane)
            {
                direction = 1;
            } else
            {
                direction = 2;
            }
            NativeManager.Post(getDuration(). new ReportForm._cls4._cls1());
            reportMenu.close();
        }


            
            {
                this$0 = final_reportform;
                descriptionView = EditText.this;
                super();
            }
    }

}
