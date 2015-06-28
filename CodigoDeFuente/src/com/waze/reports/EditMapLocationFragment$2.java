// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.waze.NativeManager;
import com.waze.navigate.DriveToNativeManager;
import com.waze.view.title.TitleButtonBar;

// Referenced classes of package com.waze.reports:
//            EditMapLocationFragment

class this._cls0 extends Handler
{

    final EditMapLocationFragment this$0;

    public void handleMessage(Message message)
    {
        if (message.what == DriveToNativeManager.UH_MAP_CENTER)
        {
            EditMapLocationFragment.access$1(EditMapLocationFragment.this).unsetUpdateHandler(DriveToNativeManager.UH_MAP_CENTER, mHandler);
            Bundle bundle = message.getData();
            bundle.setClassLoader(getClass().getClassLoader());
            sition sition = (sition)bundle.getSerializable("position");
            ((ditMap)getActivity()).doneEditMap(sition.longitude, sition.latitude);
        } else
        if (message.what == NativeManager.UH_LOCATION_PICKER_STATE)
        {
            if (message.arg1 != 0 && !EditMapLocationFragment.access$6(EditMapLocationFragment.this))
            {
                EditMapLocationFragment.access$7(EditMapLocationFragment.this).setCloseImageResource(0, 0x7f02010b);
                EditMapLocationFragment.access$8(EditMapLocationFragment.this, true);
                return;
            }
            if (message.arg1 == 0 && EditMapLocationFragment.access$6(EditMapLocationFragment.this))
            {
                EditMapLocationFragment.access$7(EditMapLocationFragment.this).setCloseImageResource(0, 0x7f02042e);
                EditMapLocationFragment.access$8(EditMapLocationFragment.this, false);
                return;
            }
        } else
        {
            super.handleMessage(message);
            return;
        }
    }

    ditMap()
    {
        this$0 = EditMapLocationFragment.this;
        super();
    }
}
