// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.NativeManager;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.view.popups:
//            PoiPopUp

class this._cls1
    implements Runnable
{

    final ss._cls21 this$1;

    public void run()
    {
        AppService.getNativeManager().navigateToExternalPoiNTV(PoiPopUp.access$17(), PoiPopUp.access$18(), PoiPopUp.access$19(), PoiPopUp.access$20(), PoiPopUp.access$21());
    }

    l.nm()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/view/popups/PoiPopUp$4

/* anonymous class */
    class PoiPopUp._cls4
        implements Runnable
    {

        final PoiPopUp this$0;
        private final DriveToNativeManager val$dtnm;
        private final NativeManager val$nm;

        public void run()
        {
            dtnm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, PoiPopUp.access$14(PoiPopUp.this));
            nm.CloseProgressPopup();
            NativeManager.Post(new PoiPopUp._cls4._cls1());
            PoiPopUp.access$6().callCloseAllPopups(1);
        }

            
            {
                this$0 = final_poipopup;
                dtnm = drivetonativemanager;
                nm = NativeManager.this;
                super();
            }
    }

}
