// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import com.waze.ifs.async.RunnableCallback;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.phone.AddressBook;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.concurrent.Executor;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

// Referenced classes of package com.waze:
//            AppService, Logger, Utils, NativeManager, 
//            DownloadResCallback

public final class ResManager
{
    public static class ResData
    {

        public byte buf[];
        public int size;

        public ResData()
        {
        }

        public ResData(byte abyte0[], int i)
        {
            buf = abyte0;
            size = i;
        }
    }

    public static final class ZipEntryType extends Enum
    {

        private static final ZipEntryType ENUM$VALUES[];
        public static final ZipEntryType ZIP_ENTRY_DIRECTORY;
        public static final ZipEntryType ZIP_ENTRY_FILE;

        public static ZipEntryType valueOf(String s)
        {
            return (ZipEntryType)Enum.valueOf(com/waze/ResManager$ZipEntryType, s);
        }

        public static ZipEntryType[] values()
        {
            ZipEntryType azipentrytype[] = ENUM$VALUES;
            int i = azipentrytype.length;
            ZipEntryType azipentrytype1[] = new ZipEntryType[i];
            System.arraycopy(azipentrytype, 0, azipentrytype1, 0, i);
            return azipentrytype1;
        }

        static 
        {
            ZIP_ENTRY_FILE = new ZipEntryType("ZIP_ENTRY_FILE", 0);
            ZIP_ENTRY_DIRECTORY = new ZipEntryType("ZIP_ENTRY_DIRECTORY", 1);
            ZipEntryType azipentrytype[] = new ZipEntryType[2];
            azipentrytype[0] = ZIP_ENTRY_FILE;
            azipentrytype[1] = ZIP_ENTRY_DIRECTORY;
            ENUM$VALUES = azipentrytype;
        }

        private ZipEntryType(String s, int i)
        {
            super(s, i);
        }
    }


    private static final boolean EXTRACT_LIBRARY = false;
    private static final boolean EXTRACT_SKINS_BIN_FILES = false;
    private static final int SCREEN_HD_DIM_PIX = 640;
    private static final int SCREEN_LD_DIM_PIX = 240;
    private static final int SCREEN_SD_DIM_PIX = 320;
    private static final String SKIN_SUFFIX_2X = "@2x";
    public static final String mAppDir = (new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append("/waze/").toString();
    public static final String mBaseDirHD = "HD/";
    public static final String mBaseDirLD = "LD/";
    public static final String mBaseDirSD = "SD/";
    public static final String mEditorDbExt = ".dat";
    private static Typeface mFaceRobotoBlack = null;
    private static Typeface mFaceRobotoLight = null;
    private static Typeface mFaceRobotoMedium = null;
    private static Typeface mFaceRobotoReg = null;
    private static Typeface mFaceRobotoSlab = null;
    public static final String mFontRobotoBlackPath = "fonts/Roboto-Black.ttf";
    public static final String mFontRobotoBoldCondensedPath = "fonts/Roboto-BoldCondensed.ttf";
    public static final String mFontRobotoBoldPath = "fonts/Roboto-Bold.ttf";
    public static final String mFontRobotoCondensedPath = "fonts/Roboto-Condensed.ttf";
    public static final String mFontRobotoLightPath = "fonts/Roboto-Light.ttf";
    public static final String mFontRobotoMediumPath = "fonts/Roboto-Medium.ttf";
    public static final String mFontRobotoRegPath = "fonts/Roboto-Regular.ttf";
    public static final String mFontRobotoSlabPath = "fonts/RobotoSlab-Regular.ttf";
    public static final String mHistoryFile = "history";
    public static final String mImageExtension = ".bin";
    private static ResManager mInstance = null;
    public static final String mLangPrefix = "lang.";
    public static final String mLibFile = "libwaze.so";
    public static final String mLogCatFile = "logcat.txt";
    public static final String mLogFile = "waze_log.txt";
    public static final String mLogFileCopy = "waze_log.txt.copy";
    public static final String mMapTilesDir = "77001";
    public static final String mMapsDir = "maps/";
    public static final String mPkgCacheDir = "cache";
    public static final String mPkgDatabasesDir = "databases";
    public static final String mPkgDir = (new StringBuilder(String.valueOf(AppService.getAppContext().getFilesDir().getParent()))).append("/").toString();
    public static final String mPkgLibDir = "lib";
    public static final String mPkgSharedPrefsDir = "shared_prefs";
    public static final String mPrefFile = "preferences";
    public static final String mPromptsConf = "prompts.conf.buf";
    public static final String mPromptsOldConf = "prompts.conf";
    public static final String mSDCardDir = "/sdcard/";
    public static final String mSDCardResDir = (new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getPath()))).append("/waze/").toString();
    public static final String mSearchConf = "search_conf";
    public static final String mSessionFile = "session";
    public static final String mSkinsPath = "skins/default/";
    public static final String mSoundDir = "sound/";
    public static final String mSplashName = "welcome.bin";
    public static final String mSplashPath = "skins/default/welcome.bin";
    public static final String mSplashWidePath = "skins/default/welcome_wide.bin";
    public static final String mTtsDir = "tts/";
    public static byte mUpgradeRun = 0;
    public static final String mUserDbFile = "user.db";
    public static final String mUserFile = "user";
    public static final int mVersionCodeSize = 7;
    public static final String mVersionFile = "version";
    static boolean m_bIsExtractSuccess = true;

    private ResManager()
    {
        InitResManagerNTV();
    }

    private static Utils.ExceptionEntry[] BuildCleanInstallExceptionList()
    {
        Utils.ExceptionEntry aexceptionentry[] = new Utils.ExceptionEntry[5];
        aexceptionentry[0] = new Utils.ExceptionEntry("user", 0);
        aexceptionentry[1] = new Utils.ExceptionEntry("session", 0);
        aexceptionentry[2] = new Utils.ExceptionEntry("preferences", 0);
        aexceptionentry[3] = new Utils.ExceptionEntry("history", 0);
        aexceptionentry[4] = new Utils.ExceptionEntry("skins/default/", 0, 2);
        return aexceptionentry;
    }

    private static Utils.ExceptionEntry[] BuildCleanUpPkgDirExceptions(boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new Utils.ExceptionEntry("cache", 0));
        arraylist.add(new Utils.ExceptionEntry("databases", 0));
        arraylist.add(new Utils.ExceptionEntry("lib", 0));
        arraylist.add(new Utils.ExceptionEntry("shared_prefs", 0));
        if (flag)
        {
            arraylist.add(new Utils.ExceptionEntry("user", 0));
            arraylist.add(new Utils.ExceptionEntry("session", 0));
            arraylist.add(new Utils.ExceptionEntry("preferences", 0));
            arraylist.add(new Utils.ExceptionEntry("history", 0));
            arraylist.add(new Utils.ExceptionEntry("user.db", 0));
        }
        Utils.ExceptionEntry aexceptionentry[] = new Utils.ExceptionEntry[arraylist.size()];
        arraylist.toArray(aexceptionentry);
        arraylist.clear();
        return aexceptionentry;
    }

    private static Utils.ExceptionEntry[] BuildSkinsExceptionList()
    {
        Utils.ExceptionEntry aexceptionentry[] = new Utils.ExceptionEntry[1];
        aexceptionentry[0] = new Utils.ExceptionEntry(".bin", 0, 5);
        return aexceptionentry;
    }

    private static Utils.ExceptionEntry[] BuildUpgradeExceptionList()
    {
        String s = "maps/".replaceAll("/", "");
        String s1 = "tts/".replaceAll("/", "");
        Utils.ExceptionEntry aexceptionentry[] = new Utils.ExceptionEntry[13];
        aexceptionentry[0] = new Utils.ExceptionEntry("history", 0);
        aexceptionentry[1] = new Utils.ExceptionEntry("session", 0);
        aexceptionentry[2] = new Utils.ExceptionEntry("preferences", 0);
        aexceptionentry[3] = new Utils.ExceptionEntry("search_conf", 1);
        aexceptionentry[4] = new Utils.ExceptionEntry("sound/", 1, 2);
        aexceptionentry[5] = new Utils.ExceptionEntry("user", 0);
        aexceptionentry[6] = new Utils.ExceptionEntry("user.db", 0);
        aexceptionentry[7] = new Utils.ExceptionEntry(s, 1, 2);
        aexceptionentry[8] = new Utils.ExceptionEntry("lang.", 1, 2);
        aexceptionentry[9] = new Utils.ExceptionEntry("prompts.conf.buf", 1);
        aexceptionentry[10] = new Utils.ExceptionEntry("prompts.conf", 1);
        aexceptionentry[11] = new Utils.ExceptionEntry("skins/default/", 0, 2);
        aexceptionentry[12] = new Utils.ExceptionEntry(s1, 1, 2);
        return aexceptionentry;
    }

    private static boolean CheckException(ArrayList arraylist, String s, String s1)
    {
label0:
        {
            boolean flag = false;
            if (arraylist != null)
            {
                int i = arraylist.indexOf(new Utils.ExceptionEntry(s, 1, 0));
                flag = false;
                if (i != -1)
                {
                    if (((Utils.ExceptionEntry)arraylist.get(i)).mType != 1)
                    {
                        break label0;
                    }
                    boolean flag1 = (new File((new StringBuilder(String.valueOf(s1))).append(s).toString())).exists();
                    flag = false;
                    if (flag1)
                    {
                        flag = true;
                    }
                }
            }
            return flag;
        }
        return true;
    }

    private native void DownloadResNTV(int i, String s, DownloadResCallback downloadrescallback);

    private static void ExtractFromZip(String s, String s1, ZipEntryType zipentrytype, Utils.ExceptionEntry aexceptionentry[])
    {
        byte abyte0[];
        ArrayList arraylist;
        boolean flag;
        abyte0 = new byte[0x100000];
        arraylist = null;
        if (aexceptionentry != null)
        {
            arraylist = new ArrayList(Arrays.asList(aexceptionentry));
        }
        flag = false;
        ZipFile zipfile1;
        Context context = AppService.getAppContext();
        String s2 = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).sourceDir;
        zipfile1 = new ZipFile(s2);
        Enumeration enumeration = zipfile1.entries();
        ZipEntry zipentry;
        String s3;
        zipentry = null;
        s3 = null;
_L6:
        boolean flag1 = enumeration.hasMoreElements();
        if (flag1 && !flag) goto _L2; else goto _L1
_L1:
        ZipFile zipfile = zipfile1;
_L10:
        if (zipfile == null)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        zipfile.close();
        return;
_L2:
        if (zipentrytype != ZipEntryType.ZIP_ENTRY_FILE)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        zipentry = zipfile1.getEntry(s);
        s3 = s1;
        flag = true;
        if (zipentrytype != ZipEntryType.ZIP_ENTRY_DIRECTORY) goto _L4; else goto _L3
_L3:
        zipentry = (ZipEntry)enumeration.nextElement();
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        InputStream inputstream;
        FileOutputStream fileoutputstream;
        int i;
        boolean flag2;
        String s4;
        if (zipentry.getName().startsWith(s) && zipentry.getName().charAt(s.length()) == '/')
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (!flag2) goto _L6; else goto _L5
_L5:
        int j = 1 + s.length();
        int k = zipentry.getName().length();
        s4 = zipentry.getName().substring(j, k);
        s3 = (new StringBuilder(String.valueOf(s1))).append(s4).toString();
        if (CheckException(arraylist, s4, s1)) goto _L6; else goto _L4
_L4:
        if (zipentry == null) goto _L6; else goto _L7
_L7:
        inputstream = zipfile1.getInputStream(zipentry);
        File file = new File(s3);
        file.getParentFile().mkdirs();
        fileoutputstream = new FileOutputStream(file);
_L11:
        i = inputstream.read(abyte0);
        if (i > 0) goto _L9; else goto _L8
_L8:
        fileoutputstream.close();
        inputstream.close();
          goto _L6
        namenotfoundexception;
        zipfile = zipfile1;
_L15:
        Log.e("WAZE", (new StringBuilder("Error! Archive not found")).append(namenotfoundexception.getMessage()).toString());
        namenotfoundexception.printStackTrace();
        m_bIsExtractSuccess = false;
          goto _L10
_L9:
        fileoutputstream.write(abyte0, 0, i);
          goto _L11
        IOException ioexception1;
        ioexception1;
        zipfile = zipfile1;
_L14:
        Log.e("WAZE", (new StringBuilder("Error! While file I/O")).append(ioexception1.getMessage()).toString());
        ioexception1.printStackTrace();
        m_bIsExtractSuccess = false;
          goto _L10
        Exception exception;
        exception;
_L13:
        throw exception;
        IOException ioexception;
        ioexception;
        Log.e("Waze", "Error closing the archive");
        m_bIsExtractSuccess = false;
        return;
        exception;
        if (true) goto _L13; else goto _L12
_L12:
        ioexception1;
        zipfile = null;
          goto _L14
        namenotfoundexception;
        zipfile = null;
          goto _L15
    }

    public static String GetBaseDir()
    {
        String s = "SD/";
        if (IsHD())
        {
            s = "HD/";
        }
        if (IsLD())
        {
            s = "LD/";
        }
        return s;
    }

    public static int GetDrawableId(String s)
    {
        int i;
        try
        {
            i = com/waze/R$drawable.getField(s).getInt(null);
        }
        catch (Exception exception)
        {
            Log.e("WAZE", (new StringBuilder("Error generating resource id for resource: ")).append(s).toString());
            exception.printStackTrace();
            return 0;
        }
        return i;
    }

    public static int[] GetDrawableIds(String as[])
    {
        int ai[] = new int[as.length];
        int i = 0;
        do
        {
            if (i >= as.length)
            {
                return ai;
            }
            ai[i] = GetDrawableId(as[i]);
            i++;
        } while (true);
    }

    public static Drawable GetSkinDrawable(String s)
    {
        Object obj;
        if (s == null)
        {
            obj = null;
        } else
        {
            InputStream inputstream = LoadSkinStream(s);
            Resources resources = AppService.getAppContext().getResources();
            obj = new BitmapDrawable(resources, inputstream);
            Display display = AppService.getDisplay();
            DisplayMetrics displaymetrics = new DisplayMetrics();
            display.getMetrics(displaymetrics);
            ((BitmapDrawable) (obj)).setTargetDensity(displaymetrics);
            if (inputstream == null)
            {
                int i = GetDrawableId(s);
                if (i != 0)
                {
                    return resources.getDrawable(i);
                } else
                {
                    return null;
                }
            }
        }
        return ((Drawable) (obj));
    }

    public static Drawable[] GetSkinDrawables(String as[])
    {
        Drawable adrawable[] = new Drawable[as.length];
        int i = 0;
        do
        {
            if (i >= as.length)
            {
                return adrawable;
            }
            adrawable[i] = GetSkinDrawable(as[i]);
            i++;
        } while (true);
    }

    public static String GetSkinsPath()
    {
        return (new StringBuilder(String.valueOf(mSDCardResDir))).append("skins/default/").toString();
    }

    public static String GetSkinsPathCommon()
    {
        return (new StringBuilder(String.valueOf("SD/"))).append("skins/default/").toString();
    }

    public static String GetSkinsPathCustom()
    {
        boolean flag = IsHD();
        String s = null;
        if (flag)
        {
            s = "HD/";
        }
        if (IsLD())
        {
            s = "LD/";
        }
        if (s != null)
        {
            s = (new StringBuilder(String.valueOf(s))).append("skins/default/").toString();
        }
        return s;
    }

    public static String GetSplashName(boolean flag)
    {
        return "welcome.bin";
    }

    public static String GetSplashPath(boolean flag)
    {
        String s = GetBaseDir();
        if (flag)
        {
            return (new StringBuilder(String.valueOf(s))).append("skins/default/welcome_wide.bin").toString();
        } else
        {
            return (new StringBuilder(String.valueOf(s))).append("skins/default/welcome.bin").toString();
        }
    }

    private static int GetVersionFromFile()
    {
        int i = -1;
        String s = (new StringBuilder(String.valueOf(mPkgDir))).append("version").toString();
        try
        {
            if ((new File(s)).exists())
            {
                char ac[] = new char[7];
                FileReader filereader = new FileReader(s);
                filereader.read(ac, 0, 7);
                i = Integer.parseInt(new String(ac));
                filereader.close();
            }
        }
        catch (Exception exception)
        {
            Log.e("WAZE", (new StringBuilder("Error! While file I/O")).append(exception.getMessage()).append(exception.getStackTrace()).toString());
            return -1;
        }
        return i;
    }

    private native void InitResManagerNTV();

    public static boolean Is2x()
    {
        Display display = AppService.getDisplay();
        return (float)Math.min(display.getHeight(), display.getWidth()) / 320F >= 0.0F;
    }

    public static boolean IsHD()
    {
        Display display = AppService.getDisplay();
        return display.getHeight() >= 640 || display.getWidth() >= 640;
    }

    public static boolean IsLD()
    {
        Display display = AppService.getDisplay();
        return display.getHeight() <= 240 || display.getWidth() <= 240;
    }

    private static InputStream LoadAssetEntry(AssetManager assetmanager, String s)
    {
        InputStream inputstream;
        try
        {
            inputstream = assetmanager.open(s);
        }
        catch (Exception exception)
        {
            return null;
        }
        return inputstream;
    }

    public static InputStream LoadResStream(String s, String s1, String as[])
    {
        AssetManager assetmanager;
        InputStream inputstream;
        assetmanager = AppService.getAppContext().getAssets();
        inputstream = null;
        File file;
        File file1;
        boolean flag;
        file = new File((new StringBuilder(String.valueOf(s1))).append("/").append(s).toString());
        file1 = new File((new StringBuilder(String.valueOf(s1))).append("/").append(add2xSuffix(s)).toString());
        flag = Is2x();
        inputstream = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        boolean flag1 = file1.exists();
        inputstream = null;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        return new FileInputStream(file1);
        boolean flag2 = file.exists();
        inputstream = null;
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        return new FileInputStream(file);
_L4:
        int i;
        if (i >= as.length) goto _L2; else goto _L1
_L1:
        InputStream inputstream1 = LoadAssetEntry(assetmanager, (new StringBuilder(String.valueOf(as[i]))).append(s).toString());
        inputstream = inputstream1;
        if (inputstream != null) goto _L2; else goto _L3
_L3:
        i++;
          goto _L4
        Exception exception;
        exception;
        Logger.e("Error loading image from package", exception);
_L2:
        return inputstream;
        i = 0;
        inputstream = null;
          goto _L4
    }

    public static InputStream LoadSkinStream(String s)
    {
        String s1 = GetSkinsPath();
        String as[] = new String[2];
        as[0] = GetSkinsPathCustom();
        as[1] = GetSkinsPathCommon();
        return LoadResStream(s, s1, as);
    }

    public static void Prepare()
    {
        Context context = AppService.getAppContext();
        if (context != null) goto _L2; else goto _L1
_L1:
        Log.e("WAZE", "The context is not initialized");
_L9:
        return;
_L2:
        String as[];
        int k;
        String s;
        File file;
        int i;
        int j;
        Utils.ExceptionEntry aexceptionentry[];
        Utils.ExceptionEntry aexceptionentry1[];
        Utils.ExceptionEntry aexceptionentry2[];
        Utils.ExceptionEntry aexceptionentry3[];
        File file1;
        Utils.ExceptionEntry aexceptionentry4[];
        boolean flag;
        boolean flag1;
        Utils.ExceptionEntry aexceptionentry5[];
        Utils.ExceptionEntry aexceptionentry6[];
        File file2;
        Utils.ExceptionEntry aexceptionentry7[];
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        boolean flag6;
        boolean flag7;
        boolean flag8;
        boolean flag9;
        int l;
        try
        {
            s = mAppDir;
            PackageInfo packageinfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            file = new File(mAppDir);
            i = GetVersionFromFile();
            j = packageinfo.versionCode;
            if (j > GetVersionFromFile() && GetVersionFromFile() == 0xf8f57 && AddressBook.AccountExist() || j > GetVersionFromFile() && GetVersionFromFile() == 0xf8f5e && AddressBook.AccountExist())
            {
                AddressBook.RestartAccount();
            }
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            Logger.e("Prepare failure", namenotfoundexception);
            return;
        }
        catch (IOException ioexception)
        {
            Logger.e("Prepare failure", ioexception);
            return;
        }
        aexceptionentry = null;
        aexceptionentry1 = null;
        aexceptionentry2 = null;
        aexceptionentry3 = null;
        if (i < j) goto _L4; else goto _L3
_L3:
        if (file.exists()) goto _L5; else goto _L4
_L4:
        file1 = new File((new StringBuilder(String.valueOf(mAppDir))).append("skins").toString());
        file1.renameTo(new File((new StringBuilder(String.valueOf(mAppDir))).append("skinsold").toString()));
        aexceptionentry4 = BuildSkinsExceptionList();
        mUpgradeRun = 1;
        flag = (new File((new StringBuilder(String.valueOf(mSDCardResDir))).append("waze_log.txt").toString())).exists();
        flag1 = (new File((new StringBuilder(String.valueOf(mPkgDir))).append("waze_log.txt").toString())).exists();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_315;
        }
        (new File((new StringBuilder(String.valueOf(mSDCardResDir))).append("waze_log.txt").toString())).delete();
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_352;
        }
        (new File((new StringBuilder(String.valueOf(mPkgDir))).append("waze_log.txt").toString())).delete();
        (new File((new StringBuilder(String.valueOf(mSDCardResDir))).append("logcat.txt").toString())).delete();
        if (AppService.mLogCatMonitor != null)
        {
            AppService.mLogCatMonitor.setOutFileInvalid();
        }
        if (i >= 0) goto _L7; else goto _L6
_L6:
        AppService.setFirstRun();
        aexceptionentry5 = BuildCleanUpPkgDirExceptions(false);
        Utils.DeleteDir(mPkgDir, true, aexceptionentry5);
        Utils.DeleteDir(s, true, null);
        aexceptionentry6 = BuildCleanInstallExceptionList();
_L13:
        System.gc();
        ExtractFromZip("assets/SD", s, ZipEntryType.ZIP_ENTRY_DIRECTORY, aexceptionentry6);
        ExtractFromZip("assets/SD/skins", (new StringBuilder(String.valueOf(s))).append("skins/").toString(), ZipEntryType.ZIP_ENTRY_DIRECTORY, aexceptionentry4);
        if (IsHD())
        {
            ExtractFromZip("assets/HD", s, ZipEntryType.ZIP_ENTRY_DIRECTORY, aexceptionentry6);
            ExtractFromZip("assets/HD/skins", (new StringBuilder(String.valueOf(s))).append("skins/").toString(), ZipEntryType.ZIP_ENTRY_DIRECTORY, aexceptionentry4);
        }
        if (IsLD())
        {
            ExtractFromZip("assets/LD", s, ZipEntryType.ZIP_ENTRY_DIRECTORY, aexceptionentry6);
            ExtractFromZip("assets/LD/skins", (new StringBuilder(String.valueOf(s))).append("skins/").toString(), ZipEntryType.ZIP_ENTRY_DIRECTORY, aexceptionentry4);
        }
        ExtractFromZip("assets/SD/user", (new StringBuilder(String.valueOf(mPkgDir))).append("user").toString(), ZipEntryType.ZIP_ENTRY_FILE, aexceptionentry);
        ExtractFromZip("assets/SD/session", (new StringBuilder(String.valueOf(mPkgDir))).append("session").toString(), ZipEntryType.ZIP_ENTRY_FILE, aexceptionentry1);
        ExtractFromZip("assets/SD/preferences", (new StringBuilder(String.valueOf(mPkgDir))).append("preferences").toString(), ZipEntryType.ZIP_ENTRY_FILE, aexceptionentry2);
        ExtractFromZip("assets/SD/history", (new StringBuilder(String.valueOf(mPkgDir))).append("history").toString(), ZipEntryType.ZIP_ENTRY_FILE, aexceptionentry3);
        ExtractFromZip("assets/SD/cacert.pem", (new StringBuilder(String.valueOf(mPkgDir))).append("cacert.pem").toString(), ZipEntryType.ZIP_ENTRY_FILE, null);
        if (m_bIsExtractSuccess)
        {
            SetVersionToFile(j);
        }
        file2 = new File((new StringBuilder(String.valueOf(mSDCardResDir))).append("/.nomedia").toString());
        if (!file2.exists())
        {
            file2.createNewFile();
        }
        if (!file1.exists()) goto _L9; else goto _L8
_L8:
        file1.delete();
        return;
_L7:
        aexceptionentry7 = BuildCleanUpPkgDirExceptions(true);
        aexceptionentry6 = BuildUpgradeExceptionList();
        aexceptionentry = new Utils.ExceptionEntry[1];
        aexceptionentry[0] = new Utils.ExceptionEntry("user", 1);
        aexceptionentry1 = new Utils.ExceptionEntry[1];
        aexceptionentry1[0] = new Utils.ExceptionEntry("session", 1);
        aexceptionentry2 = new Utils.ExceptionEntry[1];
        aexceptionentry2[0] = new Utils.ExceptionEntry("preferences", 1);
        aexceptionentry3 = new Utils.ExceptionEntry[1];
        aexceptionentry3[0] = new Utils.ExceptionEntry("history", 1);
        flag2 = (new File((new StringBuilder(String.valueOf(mAppDir))).append("user").toString())).exists();
        flag3 = (new File((new StringBuilder(String.valueOf(mPkgDir))).append("user").toString())).exists();
        if (!flag2 || flag3)
        {
            break MISSING_BLOCK_LABEL_1050;
        }
        Utils.Copy((new StringBuilder(String.valueOf(mAppDir))).append("user").toString(), (new StringBuilder(String.valueOf(mPkgDir))).append("user").toString());
        Utils.DeleteDir((new StringBuilder(String.valueOf(mAppDir))).append("user").toString());
        flag4 = (new File((new StringBuilder(String.valueOf(mAppDir))).append("session").toString())).exists();
        flag5 = (new File((new StringBuilder(String.valueOf(mPkgDir))).append("session").toString())).exists();
        if (!flag4 || flag5)
        {
            break MISSING_BLOCK_LABEL_1195;
        }
        Utils.Copy((new StringBuilder(String.valueOf(mAppDir))).append("session").toString(), (new StringBuilder(String.valueOf(mPkgDir))).append("session").toString());
        Utils.DeleteDir((new StringBuilder(String.valueOf(mAppDir))).append("session").toString());
        flag6 = (new File((new StringBuilder(String.valueOf(mAppDir))).append("preferences").toString())).exists();
        flag7 = (new File((new StringBuilder(String.valueOf(mPkgDir))).append("preferences").toString())).exists();
        if (!flag6 || flag7)
        {
            break MISSING_BLOCK_LABEL_1340;
        }
        Utils.Copy((new StringBuilder(String.valueOf(mAppDir))).append("preferences").toString(), (new StringBuilder(String.valueOf(mPkgDir))).append("preferences").toString());
        Utils.DeleteDir((new StringBuilder(String.valueOf(mAppDir))).append("preferences").toString());
        flag8 = (new File((new StringBuilder(String.valueOf(mAppDir))).append("history").toString())).exists();
        flag9 = (new File((new StringBuilder(String.valueOf(mPkgDir))).append("history").toString())).exists();
        if (!flag8 || flag9)
        {
            break MISSING_BLOCK_LABEL_1485;
        }
        Utils.Copy((new StringBuilder(String.valueOf(mAppDir))).append("history").toString(), (new StringBuilder(String.valueOf(mPkgDir))).append("history").toString());
        Utils.DeleteDir((new StringBuilder(String.valueOf(mAppDir))).append("history").toString());
        Utils.DeleteDir(s, true, aexceptionentry6);
        as = (new File((new StringBuilder(String.valueOf(mAppDir))).append("maps/").toString())).list();
        if (as == null) goto _L11; else goto _L10
_L10:
        k = 0;
_L14:
        l = as.length;
        if (k < l) goto _L12; else goto _L11
_L11:
        Utils.DeleteDir(mPkgDir, true, aexceptionentry7);
          goto _L13
_L12:
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_1638;
        }
        if (as[k] != null && as[k].endsWith(".dat"))
        {
            Utils.DeleteDir((new StringBuilder(String.valueOf(mAppDir))).append("maps/").append(as[k]).toString());
        }
        break MISSING_BLOCK_LABEL_1638;
_L5:
        Log.d("WAZE", "Resources extraction unnecessary");
        return;
        k++;
          goto _L14
    }

    private static void SetVersionToFile(int i)
    {
        String s = (new StringBuilder(String.valueOf(mPkgDir))).append("version").toString();
        try
        {
            FileWriter filewriter = new FileWriter(s);
            filewriter.write(String.valueOf(i));
            filewriter.close();
            return;
        }
        catch (Exception exception)
        {
            Log.e("WAZE", (new StringBuilder("Error! Failed to update version file")).append(exception.getStackTrace()).toString());
        }
    }

    private static String add2xSuffix(String s)
    {
        int i = s.lastIndexOf(".");
        if (i != -1)
        {
            return (new StringBuilder(String.valueOf(s.substring(0, i)))).append("@2x").append(s.substring(i, s.length())).toString();
        } else
        {
            return (new StringBuilder(String.valueOf(s))).append("@2x").toString();
        }
    }

    public static ResManager create()
    {
        if (mInstance == null)
        {
            mInstance = new ResManager();
        }
        return mInstance;
    }

    public static void downloadRes(final int type, final String res, final DownloadResCallback cb)
    {
        Log.d("WAZE", (new StringBuilder("downloadRes running in thread ")).append(Thread.currentThread().getId()).toString());
        NativeManager.Post(new RunnableUICallback() {

            private final DownloadResCallback val$cb;
            private final String val$res;
            private final int val$type;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("downloadRes callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("downloadRes event running in thread ")).append(Thread.currentThread().getId()).toString());
                ResManager.getInstance().DownloadResNTV(type, res, cb);
            }

            
            {
                type = i;
                res = s;
                cb = downloadrescallback;
                super();
            }
        });
    }

    public static void downloadResCallback(DownloadResCallback downloadrescallback)
    {
        Log.d("WAZE", (new StringBuilder("downloadResCallback running in thread ")).append(Thread.currentThread().getId()).toString());
        AppService.Post(new RunnableCallback(downloadrescallback) {

            private final DownloadResCallback val$context;

            public void callback()
            {
                Log.d("WAZE", (new StringBuilder("downloadResCallback callback running in thread ")).append(Thread.currentThread().getId()).toString());
            }

            public void event()
            {
                Log.d("WAZE", (new StringBuilder("downloadResCallback event running in thread ")).append(Thread.currentThread().getId()).toString());
                if (context != null)
                {
                    context.downloadResCallback();
                }
            }

            
            {
                context = downloadrescallback;
                super(final_executor);
            }
        });
    }

    public static ResManager getInstance()
    {
        create();
        return mInstance;
    }

    public static Typeface getRobotoBlack(Context context)
    {
        if (mFaceRobotoBlack == null)
        {
            mFaceRobotoBlack = Typeface.createFromAsset(context.getAssets(), "fonts/Roboto-Black.ttf");
        }
        return mFaceRobotoBlack;
    }

    public static Typeface getRobotoLight(Context context)
    {
        if (mFaceRobotoLight == null)
        {
            mFaceRobotoLight = Typeface.createFromAsset(context.getAssets(), "fonts/Roboto-Light.ttf");
        }
        return mFaceRobotoLight;
    }

    public static Typeface getRobotoMedium(Context context)
    {
        if (mFaceRobotoMedium == null)
        {
            mFaceRobotoMedium = Typeface.createFromAsset(context.getAssets(), "fonts/Roboto-Medium.ttf");
        }
        return mFaceRobotoMedium;
    }

    public static Typeface getRobotoReg(Context context)
    {
        if (mFaceRobotoReg == null)
        {
            mFaceRobotoReg = Typeface.createFromAsset(context.getAssets(), "fonts/Roboto-Regular.ttf");
        }
        return mFaceRobotoReg;
    }

    public static Typeface getRobotoSlab(Context context)
    {
        if (mFaceRobotoSlab == null)
        {
            mFaceRobotoSlab = Typeface.createFromAsset(context.getAssets(), "fonts/RobotoSlab-Regular.ttf");
        }
        return mFaceRobotoSlab;
    }

    public ResData LoadResData(String s, String s1, String as[])
    {
        ResData resdata = null;
        InputStream inputstream = LoadResStream(s, s1, as);
        resdata = null;
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        ResData resdata1 = new ResData(Utils.ReadStream(inputstream), 0);
        inputstream.close();
        resdata = resdata1;
        return resdata;
        Exception exception;
        exception;
_L2:
        Logger.e("Error loading image from package", exception);
        return resdata;
        exception;
        resdata = resdata1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String[] LoadResList(String s)
    {
        String as[];
        AssetManager assetmanager;
        ArrayList arraylist;
        as = null;
        assetmanager = AppService.getAppContext().getAssets();
        if (assetmanager == null)
        {
            Logger.ee("Error loading resources list. Can't access asset manager");
            return null;
        }
        arraylist = new ArrayList();
        String as1[];
        arraylist.addAll(Arrays.asList(assetmanager.list(Utils.removeMultipleSlash((new StringBuilder(String.valueOf(GetBaseDir()))).append(s).toString()))));
        as1 = assetmanager.list(Utils.removeMultipleSlash((new StringBuilder("SD/")).append(s).toString()));
        int i = 0;
_L2:
        int j = as1.length;
        as = null;
        if (i >= j)
        {
            boolean flag;
            try
            {
                as = new String[arraylist.size()];
                as = (String[])arraylist.toArray(as);
            }
            catch (Exception exception)
            {
                Logger.e((new StringBuilder("Exception while loading list of resources. Path: ")).append(s).toString(), exception);
            }
            break; /* Loop/switch isn't completed */
        }
        flag = arraylist.contains(as1[i]);
        as = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_160;
        }
        arraylist.add(as1[i]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return as;
    }

    public ResData LoadSkin(String s)
    {
        String s1 = GetSkinsPath();
        String as[] = new String[2];
        as[0] = GetSkinsPathCustom();
        as[1] = GetSkinsPathCommon();
        return LoadResData(s, s1, as);
    }

    static 
    {
        mUpgradeRun = 0;
    }

}
