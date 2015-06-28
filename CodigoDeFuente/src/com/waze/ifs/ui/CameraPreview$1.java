// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.hardware.Camera;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.WindowManager;

// Referenced classes of package com.waze.ifs.ui:
//            CameraPreview

class lastOrintation extends OrientationEventListener
{

    int lastOrintation;
    final CameraPreview this$0;

    public void onOrientationChanged(int i)
    {
        if (CameraPreview.access$11(CameraPreview.this) == null) goto _L2; else goto _L1
_L1:
        if (CameraPreview.access$12(CameraPreview.this) == null)
        {
            return;
        }
        if (i == -1) goto _L2; else goto _L3
_L3:
        int j = 90 * ((i + 45) / 90);
        if (lastOrintation == j) goto _L2; else goto _L4
_L4:
        android.hardware.s s;
        int k;
        lastOrintation = j;
        s = CameraPreview.access$11(CameraPreview.this).getParameters();
        k = ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getRotation();
        if (k != 0) goto _L6; else goto _L5
_L5:
        int l;
        char c;
        l = 0;
        c = 'Z';
_L9:
        int i1;
        s.setRotation(c);
        if (CameraPreview.access$12(CameraPreview.this).facing != 1)
        {
            break MISSING_BLOCK_LABEL_172;
        }
        i1 = (360 - (l + CameraPreview.access$12(CameraPreview.this).orientation) % 360) % 360;
_L7:
        CameraPreview.access$11(CameraPreview.this).setDisplayOrientation(i1);
        CameraPreview.access$11(CameraPreview.this).setParameters(s);
        return;
        try
        {
            i1 = (360 + (CameraPreview.access$12(CameraPreview.this).orientation - l)) % 360;
        }
        catch (Exception exception)
        {
            return;
        }
          goto _L7
_L2:
        return;
_L6:
        if (k == 1)
        {
            l = 90;
            c = '\0';
        } else
        if (k == 2)
        {
            l = 180;
            c = '\u010E';
        } else
        {
            l = 0;
            c = '\0';
            if (k == 3)
            {
                l = 270;
                c = '\264';
            }
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    fo(Context context)
    {
        this$0 = CameraPreview.this;
        super(context);
        lastOrintation = -1;
    }
}
