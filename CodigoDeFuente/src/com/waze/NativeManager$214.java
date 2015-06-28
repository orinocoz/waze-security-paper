// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.inputFile
    implements Runnable
{

    final NativeManager this$0;
    private final String val$inputFile;

    public void run()
    {
        FileInputStream fileinputstream;
        FileOutputStream fileoutputstream;
        Exception exception1;
        FileNotFoundException filenotfoundexception1;
        byte abyte0[];
        int i;
        Exception exception2;
        try
        {
            File file = new File((new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getPath()))).append("/waze/").toString());
            if (!file.exists())
            {
                file.mkdirs();
            }
            fileinputstream = new FileInputStream((new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getPath()))).append("/waze/").append(val$inputFile).toString());
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            return;
        }
        catch (Exception exception)
        {
            return;
        }
        try
        {
            fileoutputstream = new FileOutputStream((new StringBuilder(String.valueOf(AppService.getAppContext().getFilesDir().getParent()))).append("/").append(val$inputFile).toString());
        }
        catch (FileNotFoundException filenotfoundexception3)
        {
            return;
        }
        catch (Exception exception3)
        {
            return;
        }
        abyte0 = new byte[1024];
_L1:
        i = fileinputstream.read(abyte0);
        if (i == -1)
        {
            try
            {
                fileinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (FileNotFoundException filenotfoundexception1)
            {
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1)
            {
                return;
            }
            try
            {
                fileoutputstream.flush();
                fileoutputstream.close();
                return;
            }
            catch (FileNotFoundException filenotfoundexception2)
            {
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception2)
            {
                return;
            }
        }
        fileoutputstream.write(abyte0, 0, i);
          goto _L1
    }

    on()
    {
        this$0 = final_nativemanager;
        val$inputFile = String.this;
        super();
    }
}
