// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.DialogInterface;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import java.io.File;

// Referenced classes of package com.waze.profile:
//            MyProfileActivity

private static final class <init>
    implements android.content.
{

    boolean _bSetImage;
    private boolean _bSetNames;
    private String _email;
    private String _firstName;
    File _imageFile;
    private String _lastName;
    private String _password;
    private String _username;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 1)
        {
            if (_bSetNames)
            {
                MyWazeNativeManager.getInstance().setNames(_firstName, _lastName, _username, _password, _email);
            }
            if (_bSetImage)
            {
                NativeManager.getInstance().UploadProfileImage(_imageFile.getAbsolutePath());
            }
        }
    }

    public void setImage(File file)
    {
        _bSetImage = true;
        _imageFile = file;
    }

    public void setNames(String s, String s1, String s2, String s3, String s4)
    {
        _bSetNames = true;
        _firstName = s;
        _lastName = s1;
        _username = s2;
        _password = s3;
        _email = s4;
    }

    private ()
    {
        _bSetNames = false;
    }

    _bSetNames(_bSetNames _pbsetnames)
    {
        this();
    }
}
