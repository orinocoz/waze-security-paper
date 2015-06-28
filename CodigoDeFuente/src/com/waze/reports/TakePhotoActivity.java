// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze.reports:
//            TakePhotoFragment

public class TakePhotoActivity extends ActivityBase
    implements TakePhotoFragment.ITakePhoto
{

    private static final String IMAGE_FILE_NAME = "newPlaceImage.jpg";
    public static final String INT_EXT_CAMERA_BUTTON_LOCATION = "camera_button_location";
    public static final String INT_EXT_FILENAME = "filename";
    public static final String INT_EXT_TRANSITION = "transition";
    public static final String REC_EXT_CALL_INTENT = "call_when_done";
    public static final String RET_EXT_FILE_NAME = "file_name";
    private Bundle mCameraButtonLocation;
    private Intent mToCallWhenDone;

    public TakePhotoActivity()
    {
        mCameraButtonLocation = null;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        String s = "newPlaceImage.jpg";
        Intent intent = getIntent();
        if (intent != null)
        {
            if (intent.hasExtra("call_when_done"))
            {
                mToCallWhenDone = (Intent)intent.getParcelableExtra("call_when_done");
            }
            if (intent.hasExtra("transition"))
            {
                intent.removeExtra("transition");
                mCameraButtonLocation = intent.getBundleExtra("camera_button_location");
            }
            if (intent.hasExtra("filename"))
            {
                s = intent.getStringExtra("filename");
            }
        }
        setContentView(0x7f03005a);
        if (bundle == null)
        {
            TakePhotoFragment takephotofragment = new TakePhotoFragment(s);
            takephotofragment.setAnimateButton(mCameraButtonLocation);
            getFragmentManager().beginTransaction().add(0x7f0902cc, takephotofragment).commit();
        }
    }

    public void photoTaken(Uri uri, String s)
    {
        if (mToCallWhenDone != null)
        {
            mToCallWhenDone.setData(uri);
            startActivity(mToCallWhenDone);
            finish();
            return;
        } else
        {
            Intent intent = new Intent();
            intent.putExtra("file_name", s);
            setResult(-1, intent);
            finish();
            return;
        }
    }
}
