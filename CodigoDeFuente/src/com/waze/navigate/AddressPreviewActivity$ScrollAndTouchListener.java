// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.graphics.Color;
import android.view.MotionEvent;
import android.view.View;
import com.waze.ifs.ui.ObservableScrollView;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem, DriveToNativeManager

private final class <init>
    implements android.view.ener, com.waze.ifs.ui.r
{

    private boolean _isMapOpen;
    private boolean _isTouched;
    private final float density;
    private final int frameHeight;
    private final int lockHeight;
    private final ObservableScrollView osv;
    final AddressPreviewActivity this$0;

    private void lockScrollTo(final int y)
    {
        osv.post(new Runnable() {

            final AddressPreviewActivity.ScrollAndTouchListener this$1;
            private final int val$y;

            public void run()
            {
                osv.smoothScrollTo(0, y);
                AddressPreviewActivity.ScrollAndTouchListener scrollandtouchlistener = AddressPreviewActivity.ScrollAndTouchListener.this;
                int i = y;
                boolean flag = false;
                if (i == 0)
                {
                    flag = true;
                }
                scrollandtouchlistener._isMapOpen = flag;
            }

            
            {
                this$1 = AddressPreviewActivity.ScrollAndTouchListener.this;
                y = i;
                super();
            }
        });
    }

    public void onScrollChanged(ObservableScrollView observablescrollview, int i, int j, int k, int l)
    {
        if (!_isTouched)
        {
            if (j < lockHeight && l >= lockHeight)
            {
                osv.scrollTo(0, lockHeight);
                return;
            }
            if (j > lockHeight && l <= lockHeight)
            {
                osv.scrollTo(0, lockHeight);
                return;
            }
        }
        if (j < lockHeight)
        {
            int i1 = (int)(-AddressPreviewActivity.access$7(AddressPreviewActivity.this) * (float)j);
            int j1 = 1000 + (j * 1000) / lockHeight;
            AddressPreviewActivity.access$10(AddressPreviewActivity.this).zoomOnMap(AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue(), i1 + AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue(), j1);
            AddressPreviewActivity.access$11(AddressPreviewActivity.this).setTranslationX((2 * ((lockHeight - j) * AddressPreviewActivity.access$11(AddressPreviewActivity.this).getWidth())) / lockHeight);
            AddressPreviewActivity.access$12(AddressPreviewActivity.this).setBackgroundColor(Color.argb(0, 0, 0, 0));
            return;
        }
        if (j < frameHeight)
        {
            AddressPreviewActivity.access$12(AddressPreviewActivity.this).setBackgroundColor(Color.argb((255 * (j - lockHeight)) / (frameHeight - lockHeight), 0, 0, 0));
            AddressPreviewActivity.access$10(AddressPreviewActivity.this).setScreenFreeze(false);
            AddressPreviewActivity.access$11(AddressPreviewActivity.this).setTranslationX(0.0F);
            AddressPreviewActivity.access$10(AddressPreviewActivity.this).zoomOnMap(AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue() - (int)(AddressPreviewActivity.access$7(AddressPreviewActivity.this) * (float)lockHeight), 2000);
            return;
        } else
        {
            AddressPreviewActivity.access$10(AddressPreviewActivity.this).setScreenFreeze(true);
            return;
        }
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() != 1 && motionevent.getAction() != 3) goto _L2; else goto _L1
_L1:
        float f;
        _isTouched = false;
        f = osv.getScrollY();
        if (!_isMapOpen) goto _L4; else goto _L3
_L3:
        if (f >= (float)frameHeight - 120F * density) goto _L6; else goto _L5
_L5:
        if (f <= ((float)frameHeight - 120F * density) / 4F) goto _L8; else goto _L7
_L7:
        lockScrollTo(lockHeight);
_L6:
        return false;
_L8:
        lockScrollTo(0);
        return false;
_L4:
        if (f < (float)frameHeight - 120F * density)
        {
            if (f > (3F * ((float)frameHeight - 120F * density)) / 4F)
            {
                lockScrollTo(lockHeight);
                return false;
            } else
            {
                lockScrollTo(0);
                return false;
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (motionevent.getAction() == 0 || motionevent.getAction() == 2)
        {
            _isTouched = true;
            return false;
        }
        if (true) goto _L6; else goto _L9
_L9:
    }




    private _cls1.val.y(int i, float f, int j, ObservableScrollView observablescrollview)
    {
        this$0 = AddressPreviewActivity.this;
        super();
        _isMapOpen = false;
        _isTouched = false;
        lockHeight = i;
        density = f;
        frameHeight = j;
        osv = observablescrollview;
    }

    osv(int i, float f, int j, ObservableScrollView observablescrollview, osv osv1)
    {
        this(i, f, j, observablescrollview);
    }
}
