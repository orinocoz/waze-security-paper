// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;

public class Utils
{
    public static class ExceptionEntry
    {

        public static final int COMPARE_ENDS_WITH = 4;
        public static final int COMPARE_END_OF = 5;
        public static final int COMPARE_EQUAL = 1;
        public static final int COMPARE_STARTS_WITH = 3;
        public static final int COMPARE_START_OF = 2;
        public static final int COMPARE_USE_ANOTHER_SIDE = 0;
        public static final int EXCLUDE_ALWAYS = 0;
        public static final int EXCLUDE_IF_EXIST = 1;
        public int mCompareType;
        public String mEntry;
        public int mType;

        private boolean equalTo(ExceptionEntry exceptionentry)
        {
            if (mCompareType == 0)
            {
                return exceptionentry.equalTo(mEntry);
            } else
            {
                return equalTo(exceptionentry.mEntry);
            }
        }

        private boolean equalTo(String s)
        {
            boolean flag;
label0:
            {
                if (mCompareType != 1)
                {
                    int i = mCompareType;
                    flag = false;
                    if (i != 0)
                    {
                        break label0;
                    }
                }
                flag = mEntry.equals(s);
            }
            if (mCompareType == 2)
            {
                flag = s.startsWith(mEntry);
            }
            if (mCompareType == 3)
            {
                flag = mEntry.startsWith(s);
            }
            if (mCompareType == 4)
            {
                flag = mEntry.endsWith(s);
            }
            if (mCompareType == 5)
            {
                flag = s.endsWith(mEntry);
            }
            return flag;
        }

        public boolean equals(Object obj)
        {
            boolean flag = obj instanceof ExceptionEntry;
            boolean flag1 = false;
            if (flag)
            {
                flag1 = equalTo((ExceptionEntry)obj);
            }
            if (obj instanceof String)
            {
                flag1 = equalTo((String)obj);
            }
            return flag1;
        }

        public void setEntry(String s, int i)
        {
            mEntry = new String(s);
            mType = i;
        }

        public void setEntry(String s, int i, int j)
        {
            mEntry = new String(s);
            mType = i;
            mCompareType = j;
        }

        public ExceptionEntry(String s, int i)
        {
            mEntry = null;
            mType = 0;
            mCompareType = 1;
            setEntry(s, i);
        }

        public ExceptionEntry(String s, int i, int j)
        {
            mEntry = null;
            mType = 0;
            mCompareType = 1;
            setEntry(s, i, j);
        }
    }


    public Utils()
    {
    }

    private static boolean CheckDeleteFileException(ArrayList arraylist, String s)
    {
label0:
        {
            boolean flag = false;
            if (arraylist != null)
            {
                if (arraylist.indexOf(new ExceptionEntry(s, 4, 0)) == -1)
                {
                    break label0;
                }
                flag = true;
            }
            return flag;
        }
        return false;
    }

    public static void Copy(String s, String s1)
    {
        File file = new File(s);
        File file1 = new File(s1);
        String s2 = new String("/");
        if (!file.exists())
        {
            Log.e("CopyDir", "Source does not exist!");
        } else
        if (file.isDirectory())
        {
            file1.mkdirs();
            String as[] = file.list();
            int i = 0;
            while (i < as.length) 
            {
                Copy((new StringBuilder(String.valueOf(s))).append(s2).append(as[i]).toString(), (new StringBuilder(String.valueOf(s1))).append(s2).append(as[i]).toString());
                i++;
            }
        } else
        {
            CopyFile(s, s1);
            return;
        }
    }

    public static void CopyFile()
    {
    }

    private static void CopyFile(String s, String s1)
    {
        FileChannel filechannel;
        FileChannel filechannel1;
        try
        {
            filechannel = (new FileInputStream(s)).getChannel();
            filechannel1 = (new FileOutputStream(s1)).getChannel();
            filechannel1.transferFrom(filechannel, 0L, filechannel.size());
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            Log.i("CopyFile", (new StringBuilder("File not found ")).append(filenotfoundexception.getMessage()).toString());
            filenotfoundexception.printStackTrace();
            return;
        }
        catch (IOException ioexception)
        {
            Log.i("CopyFile", (new StringBuilder("Transfer data error ")).append(ioexception.getMessage()).toString());
            ioexception.printStackTrace();
            return;
        }
        if (filechannel == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        filechannel.close();
        if (filechannel1 == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        filechannel1.close();
    }

    public static void Delete(File file)
    {
        Delete(file, null);
    }

    private static void Delete(File file, ArrayList arraylist)
    {
        File afile[];
        int i;
        try
        {
            if (!file.exists())
            {
                Log.e("Delete", (new StringBuilder("Source does not exist! ")).append(file.getAbsolutePath()).toString());
                return;
            }
        }
        catch (Exception exception)
        {
            Log.e("Delete", (new StringBuilder("Delete failed for: ")).append(file.getAbsolutePath()).append(" ").append(exception.getMessage()).toString());
            exception.printStackTrace();
            return;
        }
        if (CheckDeleteFileException(arraylist, file.getName())) goto _L2; else goto _L1
_L1:
        if (!file.isDirectory()) goto _L4; else goto _L3
_L3:
        afile = file.listFiles();
        i = 0;
_L6:
        if (i < afile.length) goto _L5; else goto _L4
_L4:
        file.delete();
        return;
_L5:
        Delete(afile[i], arraylist);
        i++;
        if (true) goto _L6; else goto _L2
_L2:
    }

    public static void DeleteDir(String s)
    {
        DeleteDir(s, false, null);
    }

    public static void DeleteDir(String s, boolean flag)
    {
        DeleteDir(s, flag, null);
    }

    public static void DeleteDir(String s, boolean flag, ExceptionEntry aexceptionentry[])
    {
        ArrayList arraylist = null;
        if (aexceptionentry != null)
        {
            arraylist = new ArrayList(Arrays.asList(aexceptionentry));
        }
        File file = new File(s);
        if (flag)
        {
            File afile[] = file.listFiles();
            if (afile != null)
            {
                int i = 0;
                while (i < afile.length) 
                {
                    Delete(afile[i], arraylist);
                    i++;
                }
            }
            return;
        } else
        {
            Delete(file, arraylist);
            return;
        }
    }

    public static byte[] ReadStream(InputStream inputstream)
        throws IOException
    {
        byte abyte0[] = new byte[8192];
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                byte abyte1[] = bytearrayoutputstream.toByteArray();
                bytearrayoutputstream.close();
                return abyte1;
            }
            bytearrayoutputstream.write(abyte0, 0, i);
        } while (true);
    }

    public static Long bytes2Long(byte abyte0[])
    {
        Long long1 = new Long(0L);
        int i = 0;
        if (abyte0 == null || abyte0.length != 8)
        {
            return null;
        }
        int j = 0;
        do
        {
            if (j >= 8)
            {
                return long1;
            }
            long1 = Long.valueOf(long1.longValue() + ((255L & (long)abyte0[j]) << i * 8));
            i++;
            j++;
        } while (true);
    }

    public static byte[] long2bytes(long l)
    {
        byte abyte0[] = new byte[8];
        int i = 0;
        do
        {
            if (i >= 8)
            {
                return abyte0;
            }
            abyte0[i] = (byte)(int)(255L & l >> i * 8);
            i++;
        } while (true);
    }

    public static String removeMultipleSlash(String s)
    {
        String s1 = s;
        do
        {
            if (!s1.contains("//"))
            {
                return s1;
            }
            s1 = s1.replace("//", "/");
        } while (true);
    }
}
