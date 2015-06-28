.class public final Lcom/waze/ResManager;
.super Ljava/lang/Object;
.source "ResManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ResManager$ResData;,
        Lcom/waze/ResManager$ZipEntryType;
    }
.end annotation


# static fields
.field private static final EXTRACT_LIBRARY:Z = false

.field private static final EXTRACT_SKINS_BIN_FILES:Z = false

.field private static final SCREEN_HD_DIM_PIX:I = 0x280

.field private static final SCREEN_LD_DIM_PIX:I = 0xf0

.field private static final SCREEN_SD_DIM_PIX:I = 0x140

.field private static final SKIN_SUFFIX_2X:Ljava/lang/String; = "@2x"

.field public static final mAppDir:Ljava/lang/String; = null

.field public static final mBaseDirHD:Ljava/lang/String; = "HD/"

.field public static final mBaseDirLD:Ljava/lang/String; = "LD/"

.field public static final mBaseDirSD:Ljava/lang/String; = "SD/"

.field public static final mEditorDbExt:Ljava/lang/String; = ".dat"

.field private static mFaceRobotoBlack:Landroid/graphics/Typeface; = null

.field private static mFaceRobotoLight:Landroid/graphics/Typeface; = null

.field private static mFaceRobotoMedium:Landroid/graphics/Typeface; = null

.field private static mFaceRobotoReg:Landroid/graphics/Typeface; = null

.field private static mFaceRobotoSlab:Landroid/graphics/Typeface; = null

.field public static final mFontRobotoBlackPath:Ljava/lang/String; = "fonts/Roboto-Black.ttf"

.field public static final mFontRobotoBoldCondensedPath:Ljava/lang/String; = "fonts/Roboto-BoldCondensed.ttf"

.field public static final mFontRobotoBoldPath:Ljava/lang/String; = "fonts/Roboto-Bold.ttf"

.field public static final mFontRobotoCondensedPath:Ljava/lang/String; = "fonts/Roboto-Condensed.ttf"

.field public static final mFontRobotoLightPath:Ljava/lang/String; = "fonts/Roboto-Light.ttf"

.field public static final mFontRobotoMediumPath:Ljava/lang/String; = "fonts/Roboto-Medium.ttf"

.field public static final mFontRobotoRegPath:Ljava/lang/String; = "fonts/Roboto-Regular.ttf"

.field public static final mFontRobotoSlabPath:Ljava/lang/String; = "fonts/RobotoSlab-Regular.ttf"

.field public static final mHistoryFile:Ljava/lang/String; = "history"

.field public static final mImageExtension:Ljava/lang/String; = ".bin"

.field private static mInstance:Lcom/waze/ResManager; = null

.field public static final mLangPrefix:Ljava/lang/String; = "lang."

.field public static final mLibFile:Ljava/lang/String; = "libwaze.so"

.field public static final mLogCatFile:Ljava/lang/String; = "logcat.txt"

.field public static final mLogFile:Ljava/lang/String; = "waze_log.txt"

.field public static final mLogFileCopy:Ljava/lang/String; = "waze_log.txt.copy"

.field public static final mMapTilesDir:Ljava/lang/String; = "77001"

.field public static final mMapsDir:Ljava/lang/String; = "maps/"

.field public static final mPkgCacheDir:Ljava/lang/String; = "cache"

.field public static final mPkgDatabasesDir:Ljava/lang/String; = "databases"

.field public static final mPkgDir:Ljava/lang/String; = null

.field public static final mPkgLibDir:Ljava/lang/String; = "lib"

.field public static final mPkgSharedPrefsDir:Ljava/lang/String; = "shared_prefs"

.field public static final mPrefFile:Ljava/lang/String; = "preferences"

.field public static final mPromptsConf:Ljava/lang/String; = "prompts.conf.buf"

.field public static final mPromptsOldConf:Ljava/lang/String; = "prompts.conf"

.field public static final mSDCardDir:Ljava/lang/String; = "/sdcard/"

.field public static final mSDCardResDir:Ljava/lang/String; = null

.field public static final mSearchConf:Ljava/lang/String; = "search_conf"

.field public static final mSessionFile:Ljava/lang/String; = "session"

.field public static final mSkinsPath:Ljava/lang/String; = "skins/default/"

.field public static final mSoundDir:Ljava/lang/String; = "sound/"

.field public static final mSplashName:Ljava/lang/String; = "welcome.bin"

.field public static final mSplashPath:Ljava/lang/String; = "skins/default/welcome.bin"

.field public static final mSplashWidePath:Ljava/lang/String; = "skins/default/welcome_wide.bin"

.field public static final mTtsDir:Ljava/lang/String; = "tts/"

.field public static mUpgradeRun:B = 0x0t

.field public static final mUserDbFile:Ljava/lang/String; = "user.db"

.field public static final mUserFile:Ljava/lang/String; = "user"

.field public static final mVersionCodeSize:I = 0x7

.field public static final mVersionFile:Ljava/lang/String; = "version"

.field static m_bIsExtractSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/ResManager;->m_bIsExtractSuccess:Z

    .line 1112
    const/4 v0, 0x0

    sput-byte v0, Lcom/waze/ResManager;->mUpgradeRun:B

    .line 1113
    sput-object v1, Lcom/waze/ResManager;->mInstance:Lcom/waze/ResManager;

    .line 1114
    sput-object v1, Lcom/waze/ResManager;->mFaceRobotoSlab:Landroid/graphics/Typeface;

    .line 1115
    sput-object v1, Lcom/waze/ResManager;->mFaceRobotoReg:Landroid/graphics/Typeface;

    .line 1116
    sput-object v1, Lcom/waze/ResManager;->mFaceRobotoMedium:Landroid/graphics/Typeface;

    .line 1117
    sput-object v1, Lcom/waze/ResManager;->mFaceRobotoLight:Landroid/graphics/Typeface;

    .line 1118
    sput-object v1, Lcom/waze/ResManager;->mFaceRobotoBlack:Landroid/graphics/Typeface;

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/waze/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/waze/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ResManager;->mSDCardResDir:Ljava/lang/String;

    .line 1173
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    invoke-direct {p0}, Lcom/waze/ResManager;->InitResManagerNTV()V

    .line 771
    return-void
.end method

.method private static BuildCleanInstallExceptionList()[Lcom/waze/Utils$ExceptionEntry;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 852
    const/4 v1, 0x5

    new-array v0, v1, [Lcom/waze/Utils$ExceptionEntry;

    .line 853
    new-instance v1, Lcom/waze/Utils$ExceptionEntry;

    const-string v2, "user"

    invoke-direct {v1, v2, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    .line 854
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "session"

    invoke-direct {v2, v3, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    .line 855
    new-instance v1, Lcom/waze/Utils$ExceptionEntry;

    const-string v2, "preferences"

    invoke-direct {v1, v2, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 856
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "history"

    invoke-direct {v2, v3, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 857
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "skins/default/"

    invoke-direct {v2, v3, v4, v5}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 860
    .local v0, list:[Lcom/waze/Utils$ExceptionEntry;
    return-object v0
.end method

.method private static BuildCleanUpPkgDirExceptions(Z)[Lcom/waze/Utils$ExceptionEntry;
    .locals 5
    .parameter "isUpgrade"

    .prologue
    const/4 v4, 0x0

    .line 824
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/Utils$ExceptionEntry;>;"
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "cache"

    invoke-direct {v2, v3, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "databases"

    invoke-direct {v2, v3, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "lib"

    invoke-direct {v2, v3, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "shared_prefs"

    invoke-direct {v2, v3, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    if-eqz p0, :cond_0

    .line 833
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "user"

    invoke-direct {v2, v3, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "session"

    invoke-direct {v2, v3, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "preferences"

    invoke-direct {v2, v3, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "history"

    invoke-direct {v2, v3, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    new-instance v2, Lcom/waze/Utils$ExceptionEntry;

    const-string v3, "user.db"

    invoke-direct {v2, v3, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/waze/Utils$ExceptionEntry;

    .line 840
    .local v0, array:[Lcom/waze/Utils$ExceptionEntry;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 841
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 842
    return-object v0
.end method

.method private static BuildSkinsExceptionList()[Lcom/waze/Utils$ExceptionEntry;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 870
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/waze/Utils$ExceptionEntry;

    .line 871
    new-instance v1, Lcom/waze/Utils$ExceptionEntry;

    const-string v2, ".bin"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v4, v3}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 873
    .local v0, list:[Lcom/waze/Utils$ExceptionEntry;
    return-object v0
.end method

.method private static BuildUpgradeExceptionList()[Lcom/waze/Utils$ExceptionEntry;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 798
    const-string v3, "maps/"

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, maps:Ljava/lang/String;
    const-string v3, "tts/"

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 800
    .local v2, tts:Ljava/lang/String;
    const/16 v3, 0xd

    new-array v0, v3, [Lcom/waze/Utils$ExceptionEntry;

    .line 801
    new-instance v3, Lcom/waze/Utils$ExceptionEntry;

    const-string v4, "history"

    invoke-direct {v3, v4, v7}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v7

    .line 802
    new-instance v3, Lcom/waze/Utils$ExceptionEntry;

    const-string v4, "session"

    invoke-direct {v3, v4, v7}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v6

    .line 803
    new-instance v3, Lcom/waze/Utils$ExceptionEntry;

    const-string v4, "preferences"

    invoke-direct {v3, v4, v7}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v8

    const/4 v3, 0x3

    .line 804
    new-instance v4, Lcom/waze/Utils$ExceptionEntry;

    const-string v5, "search_conf"

    invoke-direct {v4, v5, v6}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    const/4 v3, 0x4

    .line 805
    new-instance v4, Lcom/waze/Utils$ExceptionEntry;

    const-string v5, "sound/"

    invoke-direct {v4, v5, v6, v8}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v3

    const/4 v3, 0x5

    .line 806
    new-instance v4, Lcom/waze/Utils$ExceptionEntry;

    const-string v5, "user"

    invoke-direct {v4, v5, v7}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    const/4 v3, 0x6

    .line 807
    new-instance v4, Lcom/waze/Utils$ExceptionEntry;

    const-string v5, "user.db"

    invoke-direct {v4, v5, v7}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    const/4 v3, 0x7

    .line 808
    new-instance v4, Lcom/waze/Utils$ExceptionEntry;

    invoke-direct {v4, v1, v6, v8}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v3

    const/16 v3, 0x8

    .line 809
    new-instance v4, Lcom/waze/Utils$ExceptionEntry;

    const-string v5, "lang."

    invoke-direct {v4, v5, v6, v8}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v3

    const/16 v3, 0x9

    .line 810
    new-instance v4, Lcom/waze/Utils$ExceptionEntry;

    const-string v5, "prompts.conf.buf"

    invoke-direct {v4, v5, v6}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    const/16 v3, 0xa

    .line 811
    new-instance v4, Lcom/waze/Utils$ExceptionEntry;

    const-string v5, "prompts.conf"

    invoke-direct {v4, v5, v6}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    const/16 v3, 0xb

    .line 812
    new-instance v4, Lcom/waze/Utils$ExceptionEntry;

    const-string v5, "skins/default/"

    invoke-direct {v4, v5, v7, v8}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v3

    const/16 v3, 0xc

    .line 813
    new-instance v4, Lcom/waze/Utils$ExceptionEntry;

    invoke-direct {v4, v2, v6, v8}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v3

    .line 815
    .local v0, list:[Lcom/waze/Utils$ExceptionEntry;
    return-object v0
.end method

.method private static CheckException(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter "aEntry"
    .parameter "aFullPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/Utils$ExceptionEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, aExceptionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/Utils$ExceptionEntry;>;"
    const/4 v5, 0x1

    .line 1008
    const/4 v3, 0x0

    .line 1009
    .local v3, res:Z
    const/4 v2, -0x1

    .line 1012
    .local v2, index:I
    if-eqz p0, :cond_0

    .line 1014
    new-instance v1, Lcom/waze/Utils$ExceptionEntry;

    .line 1016
    const/4 v4, 0x0

    .line 1014
    invoke-direct {v1, p1, v5, v4}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;II)V

    .line 1018
    .local v1, exEntry:Lcom/waze/Utils$ExceptionEntry;
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1019
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1021
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/Utils$ExceptionEntry;

    .line 1023
    .local v0, entry:Lcom/waze/Utils$ExceptionEntry;
    iget v4, v0, Lcom/waze/Utils$ExceptionEntry;->mType:I

    if-ne v4, v5, :cond_1

    .line 1025
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1026
    const/4 v3, 0x1

    .line 1035
    .end local v0           #entry:Lcom/waze/Utils$ExceptionEntry;
    .end local v1           #exEntry:Lcom/waze/Utils$ExceptionEntry;
    :cond_0
    :goto_0
    return v3

    .line 1030
    .restart local v0       #entry:Lcom/waze/Utils$ExceptionEntry;
    .restart local v1       #exEntry:Lcom/waze/Utils$ExceptionEntry;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private native DownloadResNTV(ILjava/lang/String;Lcom/waze/DownloadResCallback;)V
.end method

.method private static ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V
    .locals 26
    .parameter "aZipEntryName"
    .parameter "aTargetFullPath"
    .parameter "aZipEntryType"
    .parameter "aExceptionList"

    .prologue
    .line 892
    const/high16 v2, 0x10

    .line 894
    .local v2, bufSize:I
    const/high16 v23, 0x10

    move/from16 v0, v23

    new-array v3, v0, [B

    .line 895
    .local v3, buffer:[B
    const/4 v11, 0x0

    .line 896
    .local v11, exceptList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/Utils$ExceptionEntry;>;"
    const/16 v16, 0x0

    .line 897
    .local v16, pkgZip:Ljava/util/zip/ZipFile;
    if-eqz p3, :cond_0

    .line 898
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #exceptList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/Utils$ExceptionEntry;>;"
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 902
    .restart local v11       #exceptList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/Utils$ExceptionEntry;>;"
    :cond_0
    const/16 v19, 0x0

    .line 903
    .local v19, stopFlag:Z
    :try_start_0
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    .line 904
    .local v4, context:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 905
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    .line 904
    invoke-virtual/range {v23 .. v25}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v23

    .line 905
    move-object/from16 v0, v23

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 907
    .local v15, pkgFile:Ljava/lang/String;
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 909
    .end local v16           #pkgZip:Ljava/util/zip/ZipFile;
    .local v17, pkgZip:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v9

    .line 910
    .local v9, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    const/4 v12, 0x0

    .line 911
    .local v12, nBytesRead:I
    const/16 v22, 0x0

    .line 912
    .local v22, zipEntry:Ljava/util/zip/ZipEntry;
    const/4 v7, 0x0

    .line 914
    .local v7, destFilePath:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v23

    if-eqz v23, :cond_2

    if-eqz v19, :cond_4

    .line 990
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v16, v17

    .line 995
    .end local v4           #context:Landroid/content/Context;
    .end local v7           #destFilePath:Ljava/lang/String;
    .end local v9           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v12           #nBytesRead:I
    .end local v15           #pkgFile:Ljava/lang/String;
    .end local v17           #pkgZip:Ljava/util/zip/ZipFile;
    .end local v22           #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v16       #pkgZip:Ljava/util/zip/ZipFile;
    :goto_1
    if-eqz v16, :cond_3

    .line 996
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1004
    :cond_3
    :goto_2
    return-void

    .line 917
    .end local v16           #pkgZip:Ljava/util/zip/ZipFile;
    .restart local v4       #context:Landroid/content/Context;
    .restart local v7       #destFilePath:Ljava/lang/String;
    .restart local v9       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v12       #nBytesRead:I
    .restart local v15       #pkgFile:Ljava/lang/String;
    .restart local v17       #pkgZip:Ljava/util/zip/ZipFile;
    .restart local v22       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_4
    :try_start_3
    sget-object v23, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_FILE:Lcom/waze/ResManager$ZipEntryType;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 919
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    .line 920
    move-object/from16 v7, p1

    .line 921
    const/16 v19, 0x1

    .line 924
    :cond_5
    sget-object v23, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_DIRECTORY:Lcom/waze/ResManager$ZipEntryType;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 926
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    .end local v22           #zipEntry:Ljava/util/zip/ZipEntry;
    check-cast v22, Ljava/util/zip/ZipEntry;

    .line 927
    .restart local v22       #zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 928
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x2f

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 927
    const/16 v18, 0x1

    .line 929
    .local v18, startsWith:Z
    :goto_3
    if-eqz v18, :cond_1

    .line 931
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v14, v23, 0x1

    .line 932
    .local v14, nameStartIdx:I
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v13

    .line 933
    .local v13, nameEndIdx:I
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 936
    .local v8, destPathSuffix:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 938
    move-object/from16 v0, p1

    invoke-static {v11, v8, v0}, Lcom/waze/ResManager;->CheckException(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 948
    .end local v8           #destPathSuffix:Ljava/lang/String;
    .end local v13           #nameEndIdx:I
    .end local v14           #nameStartIdx:I
    .end local v18           #startsWith:Z
    :cond_6
    if-eqz v22, :cond_1

    .line 951
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v20

    .line 953
    .local v20, streamIn:Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 954
    .local v5, destFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 955
    .local v6, destFileParent:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 957
    const/16 v21, 0x0

    .line 959
    .local v21, streamOut:Ljava/io/FileOutputStream;
    new-instance v21, Ljava/io/FileOutputStream;

    .end local v21           #streamOut:Ljava/io/FileOutputStream;
    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 962
    .restart local v21       #streamOut:Ljava/io/FileOutputStream;
    :goto_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-gtz v12, :cond_8

    .line 967
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 968
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 972
    .end local v5           #destFile:Ljava/io/File;
    .end local v6           #destFileParent:Ljava/io/File;
    .end local v7           #destFilePath:Ljava/lang/String;
    .end local v9           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v12           #nBytesRead:I
    .end local v20           #streamIn:Ljava/io/InputStream;
    .end local v21           #streamOut:Ljava/io/FileOutputStream;
    .end local v22           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v10

    move-object/from16 v16, v17

    .line 974
    .end local v4           #context:Landroid/content/Context;
    .end local v15           #pkgFile:Ljava/lang/String;
    .end local v17           #pkgZip:Ljava/util/zip/ZipFile;
    .local v10, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16       #pkgZip:Ljava/util/zip/ZipFile;
    :goto_5
    :try_start_4
    const-string v23, "WAZE"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Error! Archive not found"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 974
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 978
    const/16 v23, 0x0

    sput-boolean v23, Lcom/waze/ResManager;->m_bIsExtractSuccess:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 990
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 927
    .end local v10           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16           #pkgZip:Ljava/util/zip/ZipFile;
    .restart local v4       #context:Landroid/content/Context;
    .restart local v7       #destFilePath:Ljava/lang/String;
    .restart local v9       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v12       #nBytesRead:I
    .restart local v15       #pkgFile:Ljava/lang/String;
    .restart local v17       #pkgZip:Ljava/util/zip/ZipFile;
    .restart local v22       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 964
    .restart local v5       #destFile:Ljava/io/File;
    .restart local v6       #destFileParent:Ljava/io/File;
    .restart local v20       #streamIn:Ljava/io/InputStream;
    .restart local v21       #streamOut:Ljava/io/FileOutputStream;
    :cond_8
    const/16 v23, 0x0

    :try_start_5
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 980
    .end local v5           #destFile:Ljava/io/File;
    .end local v6           #destFileParent:Ljava/io/File;
    .end local v7           #destFilePath:Ljava/lang/String;
    .end local v9           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v12           #nBytesRead:I
    .end local v20           #streamIn:Ljava/io/InputStream;
    .end local v21           #streamOut:Ljava/io/FileOutputStream;
    .end local v22           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v10

    move-object/from16 v16, v17

    .line 982
    .end local v4           #context:Landroid/content/Context;
    .end local v15           #pkgFile:Ljava/lang/String;
    .end local v17           #pkgZip:Ljava/util/zip/ZipFile;
    .local v10, ex:Ljava/io/IOException;
    .restart local v16       #pkgZip:Ljava/util/zip/ZipFile;
    :goto_6
    :try_start_6
    const-string v23, "WAZE"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Error! While file I/O"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 982
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 986
    const/16 v23, 0x0

    sput-boolean v23, Lcom/waze/ResManager;->m_bIsExtractSuccess:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 990
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 989
    .end local v10           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v23

    .line 990
    :goto_7
    const/4 v3, 0x0

    .line 991
    throw v23

    .line 998
    :catch_2
    move-exception v10

    .line 1000
    .restart local v10       #ex:Ljava/io/IOException;
    const-string v23, "Waze"

    const-string v24, "Error closing the archive"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/16 v23, 0x0

    sput-boolean v23, Lcom/waze/ResManager;->m_bIsExtractSuccess:Z

    goto/16 :goto_2

    .line 989
    .end local v10           #ex:Ljava/io/IOException;
    .end local v16           #pkgZip:Ljava/util/zip/ZipFile;
    .restart local v4       #context:Landroid/content/Context;
    .restart local v15       #pkgFile:Ljava/lang/String;
    .restart local v17       #pkgZip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v23

    move-object/from16 v16, v17

    .end local v17           #pkgZip:Ljava/util/zip/ZipFile;
    .restart local v16       #pkgZip:Ljava/util/zip/ZipFile;
    goto :goto_7

    .line 980
    .end local v4           #context:Landroid/content/Context;
    .end local v15           #pkgFile:Ljava/lang/String;
    :catch_3
    move-exception v10

    goto :goto_6

    .line 972
    :catch_4
    move-exception v10

    goto :goto_5
.end method

.method public static GetBaseDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    const-string v0, "SD/"

    .line 329
    .local v0, base_dir:Ljava/lang/String;
    invoke-static {}, Lcom/waze/ResManager;->IsHD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const-string v0, "HD/"

    .line 331
    :cond_0
    invoke-static {}, Lcom/waze/ResManager;->IsLD()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    const-string v0, "LD/"

    .line 334
    :cond_1
    return-object v0
.end method

.method public static GetDrawableId(Ljava/lang/String;)I
    .locals 6
    .parameter "aResName"

    .prologue
    .line 561
    const/4 v2, 0x0

    .line 566
    .local v2, res_id:I
    :try_start_0
    const-class v3, Lcom/waze/R$drawable;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 567
    .local v1, res_field:Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 574
    .end local v1           #res_field:Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 569
    :catch_0
    move-exception v0

    .line 571
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "WAZE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error generating resource id for resource: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static GetDrawableIds([Ljava/lang/String;)[I
    .locals 3
    .parameter "aResList"

    .prologue
    .line 586
    array-length v2, p0

    new-array v1, v2, [I

    .line 589
    .local v1, ids:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 593
    return-object v1

    .line 591
    :cond_0
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/waze/ResManager;->GetDrawableId(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "aResName"

    .prologue
    const/4 v6, 0x0

    .line 604
    if-nez p0, :cond_1

    move-object v0, v6

    .line 625
    :cond_0
    :goto_0
    return-object v0

    .line 607
    :cond_1
    invoke-static {p0}, Lcom/waze/ResManager;->LoadSkinStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 608
    .local v3, is:Ljava/io/InputStream;
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 609
    .local v5, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 612
    .local v0, bmpDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 613
    .local v1, display:Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 614
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 615
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 617
    if-nez v3, :cond_0

    .line 620
    invoke-static {p0}, Lcom/waze/ResManager;->GetDrawableId(Ljava/lang/String;)I

    move-result v2

    .line 621
    .local v2, id:I
    if-eqz v2, :cond_2

    .line 622
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v6

    .line 625
    goto :goto_0
.end method

.method public static GetSkinDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "aResList"

    .prologue
    .line 637
    array-length v2, p0

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    .line 638
    .local v1, list:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 642
    return-object v1

    .line 640
    :cond_0
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static GetSkinsPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 435
    sget-object v0, Lcom/waze/ResManager;->mSDCardResDir:Ljava/lang/String;

    .line 436
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "skins/default/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    return-object v0
.end method

.method public static GetSkinsPathCommon()Ljava/lang/String;
    .locals 3

    .prologue
    .line 416
    const-string v0, "SD/"

    .line 417
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "skins/default/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    return-object v0
.end method

.method public static GetSkinsPathCustom()Ljava/lang/String;
    .locals 3

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Lcom/waze/ResManager;->IsHD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    const-string v0, "HD/"

    .line 425
    :cond_0
    invoke-static {}, Lcom/waze/ResManager;->IsLD()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    const-string v0, "LD/"

    .line 427
    :cond_1
    if-eqz v0, :cond_2

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "skins/default/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_2
    return-object v0
.end method

.method public static GetSplashName(Z)Ljava/lang/String;
    .locals 1
    .parameter "wide"

    .prologue
    .line 411
    const-string v0, "welcome.bin"

    return-object v0
.end method

.method public static GetSplashPath(Z)Ljava/lang/String;
    .locals 3
    .parameter "wide"

    .prologue
    .line 401
    invoke-static {}, Lcom/waze/ResManager;->GetBaseDir()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, splashPath:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "skins/default/welcome_wide.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    .line 405
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "skins/default/welcome.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static GetVersionFromFile()I
    .locals 8

    .prologue
    .line 1046
    const/4 v4, -0x1

    .line 1047
    .local v4, versionCode:I
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "version"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1050
    .local v2, fullPath:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1052
    const/4 v5, 0x7

    new-array v3, v5, [C

    .line 1053
    .local v3, verCode:[C
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v1, fr:Ljava/io/FileReader;
    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-virtual {v1, v3, v5, v6}, Ljava/io/FileReader;->read([CII)I

    .line 1055
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1056
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #verCode:[C
    :cond_0
    :goto_0
    return v4

    .line 1059
    :catch_0
    move-exception v0

    .line 1061
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "WAZE"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error! While file I/O"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1061
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private native InitResManagerNTV()V
.end method

.method public static Is2x()Z
    .locals 5

    .prologue
    .line 309
    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 310
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 311
    .local v1, minDim:I
    int-to-float v3, v1

    const/high16 v4, 0x43a0

    div-float v2, v3, v4

    .line 312
    .local v2, ratio:F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static IsHD()Z
    .locals 3

    .prologue
    const/16 v2, 0x280

    .line 317
    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 318
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static IsLD()Z
    .locals 3

    .prologue
    const/16 v2, 0xf0

    .line 322
    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 323
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static LoadAssetEntry(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "aAssetMgr"
    .parameter "aPath"

    .prologue
    .line 779
    const/4 v1, 0x0

    .line 782
    .local v1, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 789
    :goto_0
    return-object v1

    .line 784
    :catch_0
    move-exception v0

    .line 786
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static LoadResStream(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;
    .locals 10
    .parameter "aResName"
    .parameter "aFilePath"
    .parameter "aAssetPathList"

    .prologue
    .line 450
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 451
    .local v0, assetMgr:Landroid/content/res/AssetManager;
    const/4 v6, 0x0

    .line 454
    .local v6, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/waze/ResManager;->add2xSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v3, file2x:Ljava/io/File;
    invoke-static {}, Lcom/waze/ResManager;->Is2x()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 459
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v6           #stream:Ljava/io/InputStream;
    .local v7, stream:Ljava/io/InputStream;
    move-object v6, v7

    .line 480
    .end local v2           #file:Ljava/io/File;
    .end local v3           #file2x:Ljava/io/File;
    .end local v7           #stream:Ljava/io/InputStream;
    .restart local v6       #stream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v6

    .line 461
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #file2x:Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 463
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v6           #stream:Ljava/io/InputStream;
    .restart local v7       #stream:Ljava/io/InputStream;
    move-object v6, v7

    .line 464
    .end local v7           #stream:Ljava/io/InputStream;
    .restart local v6       #stream:Ljava/io/InputStream;
    goto :goto_0

    .line 467
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, p2

    if-ge v4, v8, :cond_0

    .line 469
    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v9, p2, v4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, path:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/waze/ResManager;->LoadAssetEntry(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 471
    if-nez v6, :cond_0

    .line 467
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 476
    .end local v2           #file:Ljava/io/File;
    .end local v3           #file2x:Ljava/io/File;
    .end local v4           #i:I
    .end local v5           #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 478
    .local v1, ex:Ljava/lang/Exception;
    const-string v8, "Error loading image from package"

    invoke-static {v8, v1}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static LoadSkinStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "aResName"

    .prologue
    .line 651
    invoke-static {}, Lcom/waze/ResManager;->GetSkinsPath()Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, filePath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 654
    .local v2, stream:Ljava/io/InputStream;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 655
    invoke-static {}, Lcom/waze/ResManager;->GetSkinsPathCustom()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    .line 656
    invoke-static {}, Lcom/waze/ResManager;->GetSkinsPathCommon()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 658
    .local v0, assetPathList:[Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lcom/waze/ResManager;->LoadResStream(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 659
    return-object v2
.end method

.method public static Prepare()V
    .locals 37

    .prologue
    .line 86
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v7

    .line 87
    .local v7, context:Landroid/content/Context;
    if-nez v7, :cond_1

    .line 89
    const-string v33, "WAZE"

    const-string v34, "The context is not initialized"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    :try_start_0
    sget-object v26, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    .line 95
    .local v26, resDir:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    .line 96
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    .line 95
    invoke-virtual/range {v33 .. v35}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 97
    .local v22, pi:Landroid/content/pm/PackageInfo;
    new-instance v6, Ljava/io/File;

    sget-object v33, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v6, appDirFile:Ljava/io/File;
    invoke-static {}, Lcom/waze/ResManager;->GetVersionFromFile()I

    move-result v8

    .line 99
    .local v8, currentVerCode:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v32, v0

    .line 102
    .local v32, verCode:I
    invoke-static {}, Lcom/waze/ResManager;->GetVersionFromFile()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/waze/ResManager;->GetVersionFromFile()I

    move-result v33

    const v34, 0xf8f57

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/waze/phone/AddressBook;->AccountExist()Z

    move-result v33

    if-nez v33, :cond_3

    :cond_2
    invoke-static {}, Lcom/waze/ResManager;->GetVersionFromFile()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_4

    invoke-static {}, Lcom/waze/ResManager;->GetVersionFromFile()I

    move-result v33

    const v34, 0xf8f5e

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/waze/phone/AddressBook;->AccountExist()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 105
    :cond_3
    invoke-static {}, Lcom/waze/phone/AddressBook;->RestartAccount()V

    .line 108
    :cond_4
    const/4 v10, 0x0

    .line 109
    .local v10, extractExceptions:[Lcom/waze/Utils$ExceptionEntry;
    const/16 v28, 0x0

    .line 110
    .local v28, skinsExtractExceptions:[Lcom/waze/Utils$ExceptionEntry;
    const/16 v29, 0x0

    .line 111
    .local v29, userException:[Lcom/waze/Utils$ExceptionEntry;
    const/16 v27, 0x0

    .line 112
    .local v27, sessionException:[Lcom/waze/Utils$ExceptionEntry;
    const/16 v23, 0x0

    .line 113
    .local v23, prefException:[Lcom/waze/Utils$ExceptionEntry;
    const/4 v15, 0x0

    .line 115
    .local v15, historyException:[Lcom/waze/Utils$ExceptionEntry;
    move/from16 v0, v32

    if-lt v8, v0, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v33

    if-nez v33, :cond_15

    .line 117
    :cond_5
    new-instance v11, Ljava/io/File;

    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "skins"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v11, fbla:Ljava/io/File;
    new-instance v12, Ljava/io/File;

    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "skinsold"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v12, fbla1:Ljava/io/File;
    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 121
    invoke-static {}, Lcom/waze/ResManager;->BuildSkinsExceptionList()[Lcom/waze/Utils$ExceptionEntry;

    move-result-object v28

    .line 123
    const/16 v33, 0x1

    sput-byte v33, Lcom/waze/ResManager;->mUpgradeRun:B

    .line 125
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mSDCardResDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "waze_log.txt"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v20

    .line 126
    .local v20, logfile:Z
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "waze_log.txt"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v21

    .line 128
    .local v21, logfileuser:Z
    if-eqz v20, :cond_6

    .line 130
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mSDCardResDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "waze_log.txt"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->delete()Z

    .line 132
    :cond_6
    if-eqz v21, :cond_7

    .line 134
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "waze_log.txt"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->delete()Z

    .line 138
    :cond_7
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mSDCardResDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "logcat.txt"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->delete()Z

    .line 139
    sget-object v33, Lcom/waze/AppService;->mLogCatMonitor:Lcom/waze/Logger$LogCatMonitor;

    if-eqz v33, :cond_8

    .line 141
    sget-object v33, Lcom/waze/AppService;->mLogCatMonitor:Lcom/waze/Logger$LogCatMonitor;

    invoke-virtual/range {v33 .. v33}, Lcom/waze/Logger$LogCatMonitor;->setOutFileInvalid()V

    .line 144
    :cond_8
    if-gez v8, :cond_d

    .line 146
    invoke-static {}, Lcom/waze/AppService;->setFirstRun()V

    .line 147
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/waze/ResManager;->BuildCleanUpPkgDirExceptions(Z)[Lcom/waze/Utils$ExceptionEntry;

    move-result-object v19

    .line 148
    .local v19, list:[Lcom/waze/Utils$ExceptionEntry;
    sget-object v33, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/waze/Utils;->DeleteDir(Ljava/lang/String;Z[Lcom/waze/Utils$ExceptionEntry;)V

    .line 149
    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/waze/Utils;->DeleteDir(Ljava/lang/String;Z[Lcom/waze/Utils$ExceptionEntry;)V

    .line 150
    invoke-static {}, Lcom/waze/ResManager;->BuildCleanInstallExceptionList()[Lcom/waze/Utils$ExceptionEntry;

    move-result-object v10

    .line 221
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 231
    const-string v33, "assets/SD"

    .line 232
    sget-object v34, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_DIRECTORY:Lcom/waze/ResManager$ZipEntryType;

    .line 231
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2, v10}, Lcom/waze/ResManager;->ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V

    .line 234
    const-string v33, "assets/SD/skins"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "skins/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 235
    sget-object v35, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_DIRECTORY:Lcom/waze/ResManager$ZipEntryType;

    .line 234
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/waze/ResManager;->ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V

    .line 238
    invoke-static {}, Lcom/waze/ResManager;->IsHD()Z

    move-result v33

    if-eqz v33, :cond_9

    .line 240
    const-string v33, "assets/HD"

    .line 241
    sget-object v34, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_DIRECTORY:Lcom/waze/ResManager$ZipEntryType;

    .line 240
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2, v10}, Lcom/waze/ResManager;->ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V

    .line 242
    const-string v33, "assets/HD/skins"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "skins/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 243
    sget-object v35, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_DIRECTORY:Lcom/waze/ResManager$ZipEntryType;

    .line 242
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/waze/ResManager;->ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V

    .line 247
    :cond_9
    invoke-static {}, Lcom/waze/ResManager;->IsLD()Z

    move-result v33

    if-eqz v33, :cond_a

    .line 249
    const-string v33, "assets/LD"

    .line 250
    sget-object v34, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_DIRECTORY:Lcom/waze/ResManager$ZipEntryType;

    .line 249
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2, v10}, Lcom/waze/ResManager;->ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V

    .line 251
    const-string v33, "assets/LD/skins"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "skins/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 252
    sget-object v35, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_DIRECTORY:Lcom/waze/ResManager$ZipEntryType;

    .line 251
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/waze/ResManager;->ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V

    .line 257
    :cond_a
    const-string v33, "assets/SD/user"

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "user"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 258
    sget-object v35, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_FILE:Lcom/waze/ResManager$ZipEntryType;

    .line 257
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/waze/ResManager;->ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V

    .line 261
    const-string v33, "assets/SD/session"

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "session"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 262
    sget-object v35, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_FILE:Lcom/waze/ResManager$ZipEntryType;

    .line 261
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/waze/ResManager;->ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V

    .line 265
    const-string v33, "assets/SD/preferences"

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "preferences"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 266
    sget-object v35, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_FILE:Lcom/waze/ResManager$ZipEntryType;

    .line 265
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/waze/ResManager;->ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V

    .line 269
    const-string v33, "assets/SD/history"

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "history"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 270
    sget-object v35, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_FILE:Lcom/waze/ResManager$ZipEntryType;

    .line 269
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2, v15}, Lcom/waze/ResManager;->ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V

    .line 273
    const-string v33, "assets/SD/cacert.pem"

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "cacert.pem"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 274
    sget-object v35, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_FILE:Lcom/waze/ResManager$ZipEntryType;

    const/16 v36, 0x0

    .line 273
    invoke-static/range {v33 .. v36}, Lcom/waze/ResManager;->ExtractFromZip(Ljava/lang/String;Ljava/lang/String;Lcom/waze/ResManager$ZipEntryType;[Lcom/waze/Utils$ExceptionEntry;)V

    .line 276
    sget-boolean v33, Lcom/waze/ResManager;->m_bIsExtractSuccess:Z

    if-eqz v33, :cond_b

    .line 278
    invoke-static/range {v32 .. v32}, Lcom/waze/ResManager;->SetVersionToFile(I)V

    .line 281
    :cond_b
    new-instance v13, Ljava/io/File;

    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mSDCardResDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "/.nomedia"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v33

    if-nez v33, :cond_c

    .line 283
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 285
    :cond_c
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 287
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 298
    .end local v6           #appDirFile:Ljava/io/File;
    .end local v8           #currentVerCode:I
    .end local v10           #extractExceptions:[Lcom/waze/Utils$ExceptionEntry;
    .end local v11           #fbla:Ljava/io/File;
    .end local v12           #fbla1:Ljava/io/File;
    .end local v13           #file:Ljava/io/File;
    .end local v15           #historyException:[Lcom/waze/Utils$ExceptionEntry;
    .end local v19           #list:[Lcom/waze/Utils$ExceptionEntry;
    .end local v20           #logfile:Z
    .end local v21           #logfileuser:Z
    .end local v22           #pi:Landroid/content/pm/PackageInfo;
    .end local v23           #prefException:[Lcom/waze/Utils$ExceptionEntry;
    .end local v26           #resDir:Ljava/lang/String;
    .end local v27           #sessionException:[Lcom/waze/Utils$ExceptionEntry;
    .end local v28           #skinsExtractExceptions:[Lcom/waze/Utils$ExceptionEntry;
    .end local v29           #userException:[Lcom/waze/Utils$ExceptionEntry;
    .end local v32           #verCode:I
    :catch_0
    move-exception v9

    .line 300
    .local v9, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v33, "Prepare failure"

    move-object/from16 v0, v33

    invoke-static {v0, v9}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 154
    .end local v9           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #appDirFile:Ljava/io/File;
    .restart local v8       #currentVerCode:I
    .restart local v10       #extractExceptions:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v11       #fbla:Ljava/io/File;
    .restart local v12       #fbla1:Ljava/io/File;
    .restart local v15       #historyException:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v20       #logfile:Z
    .restart local v21       #logfileuser:Z
    .restart local v22       #pi:Landroid/content/pm/PackageInfo;
    .restart local v23       #prefException:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v26       #resDir:Ljava/lang/String;
    .restart local v27       #sessionException:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v28       #skinsExtractExceptions:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v29       #userException:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v32       #verCode:I
    :cond_d
    const/16 v33, 0x1

    :try_start_1
    invoke-static/range {v33 .. v33}, Lcom/waze/ResManager;->BuildCleanUpPkgDirExceptions(Z)[Lcom/waze/Utils$ExceptionEntry;

    move-result-object v19

    .line 155
    .restart local v19       #list:[Lcom/waze/Utils$ExceptionEntry;
    invoke-static {}, Lcom/waze/ResManager;->BuildUpgradeExceptionList()[Lcom/waze/Utils$ExceptionEntry;

    move-result-object v10

    .line 156
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Lcom/waze/Utils$ExceptionEntry;

    move-object/from16 v29, v0

    .line 157
    const/16 v33, 0x0

    new-instance v34, Lcom/waze/Utils$ExceptionEntry;

    const-string v35, "user"

    const/16 v36, 0x1

    invoke-direct/range {v34 .. v36}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v34, v29, v33

    .line 158
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Lcom/waze/Utils$ExceptionEntry;

    move-object/from16 v27, v0

    .line 159
    const/16 v33, 0x0

    new-instance v34, Lcom/waze/Utils$ExceptionEntry;

    const-string v35, "session"

    const/16 v36, 0x1

    invoke-direct/range {v34 .. v36}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v34, v27, v33

    .line 160
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Lcom/waze/Utils$ExceptionEntry;

    move-object/from16 v23, v0

    .line 161
    const/16 v33, 0x0

    new-instance v34, Lcom/waze/Utils$ExceptionEntry;

    const-string v35, "preferences"

    const/16 v36, 0x1

    invoke-direct/range {v34 .. v36}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v34, v23, v33

    .line 162
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v15, v0, [Lcom/waze/Utils$ExceptionEntry;

    .line 163
    const/16 v33, 0x0

    new-instance v34, Lcom/waze/Utils$ExceptionEntry;

    const-string v35, "history"

    const/16 v36, 0x1

    invoke-direct/range {v34 .. v36}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;I)V

    aput-object v34, v15, v33

    .line 166
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "user"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v31

    .line 167
    .local v31, userInResDir:Z
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "user"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v30

    .line 168
    .local v30, userInPkgDir:Z
    if-eqz v31, :cond_e

    if-nez v30, :cond_e

    .line 170
    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "user"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "user"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/waze/Utils;->Copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "user"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/waze/Utils;->DeleteDir(Ljava/lang/String;)V

    .line 175
    :cond_e
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "session"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v5

    .line 176
    .local v5, SessionInResDir:Z
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "session"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v4

    .line 177
    .local v4, SessionInPkgDir:Z
    if-eqz v5, :cond_f

    if-nez v4, :cond_f

    .line 179
    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "session"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "session"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/waze/Utils;->Copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "session"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/waze/Utils;->DeleteDir(Ljava/lang/String;)V

    .line 184
    :cond_f
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "preferences"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v25

    .line 185
    .local v25, prefInResDir:Z
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "preferences"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v24

    .line 186
    .local v24, prefInPkgDir:Z
    if-eqz v25, :cond_10

    if-nez v24, :cond_10

    .line 188
    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "preferences"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "preferences"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/waze/Utils;->Copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "preferences"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/waze/Utils;->DeleteDir(Ljava/lang/String;)V

    .line 193
    :cond_10
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "history"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v17

    .line 194
    .local v17, historyInResDir:Z
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "history"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v16

    .line 195
    .local v16, historyInPkgDir:Z
    if-eqz v17, :cond_11

    if-nez v16, :cond_11

    .line 197
    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "history"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "history"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/waze/Utils;->Copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "history"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/waze/Utils;->DeleteDir(Ljava/lang/String;)V

    .line 202
    :cond_11
    const/16 v33, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-static {v0, v1, v10}, Lcom/waze/Utils;->DeleteDir(Ljava/lang/String;Z[Lcom/waze/Utils$ExceptionEntry;)V

    .line 204
    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "maps/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    .line 205
    .local v14, files:[Ljava/lang/String;
    if-eqz v14, :cond_12

    .line 207
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    array-length v0, v14

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-lt v0, v1, :cond_13

    .line 217
    .end local v18           #i:I
    :cond_12
    sget-object v33, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/waze/Utils;->DeleteDir(Ljava/lang/String;Z[Lcom/waze/Utils$ExceptionEntry;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 302
    .end local v4           #SessionInPkgDir:Z
    .end local v5           #SessionInResDir:Z
    .end local v6           #appDirFile:Ljava/io/File;
    .end local v8           #currentVerCode:I
    .end local v10           #extractExceptions:[Lcom/waze/Utils$ExceptionEntry;
    .end local v11           #fbla:Ljava/io/File;
    .end local v12           #fbla1:Ljava/io/File;
    .end local v14           #files:[Ljava/lang/String;
    .end local v15           #historyException:[Lcom/waze/Utils$ExceptionEntry;
    .end local v16           #historyInPkgDir:Z
    .end local v17           #historyInResDir:Z
    .end local v19           #list:[Lcom/waze/Utils$ExceptionEntry;
    .end local v20           #logfile:Z
    .end local v21           #logfileuser:Z
    .end local v22           #pi:Landroid/content/pm/PackageInfo;
    .end local v23           #prefException:[Lcom/waze/Utils$ExceptionEntry;
    .end local v24           #prefInPkgDir:Z
    .end local v25           #prefInResDir:Z
    .end local v26           #resDir:Ljava/lang/String;
    .end local v27           #sessionException:[Lcom/waze/Utils$ExceptionEntry;
    .end local v28           #skinsExtractExceptions:[Lcom/waze/Utils$ExceptionEntry;
    .end local v29           #userException:[Lcom/waze/Utils$ExceptionEntry;
    .end local v30           #userInPkgDir:Z
    .end local v31           #userInResDir:Z
    .end local v32           #verCode:I
    :catch_1
    move-exception v9

    .line 304
    .local v9, ex:Ljava/io/IOException;
    const-string v33, "Prepare failure"

    move-object/from16 v0, v33

    invoke-static {v0, v9}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 209
    .end local v9           #ex:Ljava/io/IOException;
    .restart local v4       #SessionInPkgDir:Z
    .restart local v5       #SessionInResDir:Z
    .restart local v6       #appDirFile:Ljava/io/File;
    .restart local v8       #currentVerCode:I
    .restart local v10       #extractExceptions:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v11       #fbla:Ljava/io/File;
    .restart local v12       #fbla1:Ljava/io/File;
    .restart local v14       #files:[Ljava/lang/String;
    .restart local v15       #historyException:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v16       #historyInPkgDir:Z
    .restart local v17       #historyInResDir:Z
    .restart local v18       #i:I
    .restart local v19       #list:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v20       #logfile:Z
    .restart local v21       #logfileuser:Z
    .restart local v22       #pi:Landroid/content/pm/PackageInfo;
    .restart local v23       #prefException:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v24       #prefInPkgDir:Z
    .restart local v25       #prefInResDir:Z
    .restart local v26       #resDir:Ljava/lang/String;
    .restart local v27       #sessionException:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v28       #skinsExtractExceptions:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v29       #userException:[Lcom/waze/Utils$ExceptionEntry;
    .restart local v30       #userInPkgDir:Z
    .restart local v31       #userInResDir:Z
    .restart local v32       #verCode:I
    :cond_13
    if-eqz v14, :cond_14

    :try_start_2
    aget-object v33, v14, v18

    if-eqz v33, :cond_14

    .line 211
    aget-object v33, v14, v18

    const-string v34, ".dat"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_14

    .line 212
    new-instance v33, Ljava/lang/StringBuilder;

    sget-object v34, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "maps/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    aget-object v34, v14, v18

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/waze/Utils;->DeleteDir(Ljava/lang/String;)V

    .line 207
    :cond_14
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 292
    .end local v4           #SessionInPkgDir:Z
    .end local v5           #SessionInResDir:Z
    .end local v11           #fbla:Ljava/io/File;
    .end local v12           #fbla1:Ljava/io/File;
    .end local v14           #files:[Ljava/lang/String;
    .end local v16           #historyInPkgDir:Z
    .end local v17           #historyInResDir:Z
    .end local v18           #i:I
    .end local v19           #list:[Lcom/waze/Utils$ExceptionEntry;
    .end local v20           #logfile:Z
    .end local v21           #logfileuser:Z
    .end local v24           #prefInPkgDir:Z
    .end local v25           #prefInResDir:Z
    .end local v30           #userInPkgDir:Z
    .end local v31           #userInResDir:Z
    :cond_15
    const-string v33, "WAZE"

    .line 293
    const-string v34, "Resources extraction unnecessary"

    .line 292
    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private static SetVersionToFile(I)V
    .locals 6
    .parameter "aVersion"

    .prologue
    .line 1078
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/ResManager;->mPkgDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, fullPath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v2, fw:Ljava/io/FileWriter;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    .end local v2           #fw:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 1085
    :catch_0
    move-exception v0

    .line 1087
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "WAZE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error! Failed to update version file"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1087
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/waze/ResManager;ILjava/lang/String;Lcom/waze/DownloadResCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 762
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/ResManager;->DownloadResNTV(ILjava/lang/String;Lcom/waze/DownloadResCallback;)V

    return-void
.end method

.method private static add2xSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "resName"

    .prologue
    .line 1094
    move-object v1, p0

    .line 1095
    .local v1, res:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1096
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@2x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1105
    :goto_0
    return-object v1

    .line 1102
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@2x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static create()Lcom/waze/ResManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/waze/ResManager;->mInstance:Lcom/waze/ResManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/waze/ResManager;

    invoke-direct {v0}, Lcom/waze/ResManager;-><init>()V

    sput-object v0, Lcom/waze/ResManager;->mInstance:Lcom/waze/ResManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/waze/ResManager;->mInstance:Lcom/waze/ResManager;

    return-object v0
.end method

.method public static downloadRes(ILjava/lang/String;Lcom/waze/DownloadResCallback;)V
    .locals 5
    .parameter "type"
    .parameter "res"
    .parameter "cb"

    .prologue
    .line 720
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadRes running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v0, Lcom/waze/ResManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/ResManager$1;-><init>(ILjava/lang/String;Lcom/waze/DownloadResCallback;)V

    .line 733
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 734
    return-void
.end method

.method public static downloadResCallback(Lcom/waze/DownloadResCallback;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 738
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadResCallback running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v0, Lcom/waze/ResManager$2;

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/waze/ResManager$2;-><init>(Ljava/util/concurrent/Executor;Lcom/waze/DownloadResCallback;)V

    .line 753
    .local v0, loadUIDataEvent:Lcom/waze/ifs/async/RunnableCallback;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 754
    return-void
.end method

.method public static getInstance()Lcom/waze/ResManager;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/waze/ResManager;->create()Lcom/waze/ResManager;

    .line 76
    sget-object v0, Lcom/waze/ResManager;->mInstance:Lcom/waze/ResManager;

    return-object v0
.end method

.method public static getRobotoBlack(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 357
    sget-object v0, Lcom/waze/ResManager;->mFaceRobotoBlack:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Black.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/waze/ResManager;->mFaceRobotoBlack:Landroid/graphics/Typeface;

    .line 360
    :cond_0
    sget-object v0, Lcom/waze/ResManager;->mFaceRobotoBlack:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getRobotoLight(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 380
    sget-object v0, Lcom/waze/ResManager;->mFaceRobotoLight:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/waze/ResManager;->mFaceRobotoLight:Landroid/graphics/Typeface;

    .line 383
    :cond_0
    sget-object v0, Lcom/waze/ResManager;->mFaceRobotoLight:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 372
    sget-object v0, Lcom/waze/ResManager;->mFaceRobotoMedium:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/waze/ResManager;->mFaceRobotoMedium:Landroid/graphics/Typeface;

    .line 375
    :cond_0
    sget-object v0, Lcom/waze/ResManager;->mFaceRobotoMedium:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getRobotoReg(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 344
    sget-object v0, Lcom/waze/ResManager;->mFaceRobotoReg:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/waze/ResManager;->mFaceRobotoReg:Landroid/graphics/Typeface;

    .line 347
    :cond_0
    sget-object v0, Lcom/waze/ResManager;->mFaceRobotoReg:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getRobotoSlab(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 393
    sget-object v0, Lcom/waze/ResManager;->mFaceRobotoSlab:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/RobotoSlab-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/waze/ResManager;->mFaceRobotoSlab:Landroid/graphics/Typeface;

    .line 396
    :cond_0
    sget-object v0, Lcom/waze/ResManager;->mFaceRobotoSlab:Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public LoadResData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/waze/ResManager$ResData;
    .locals 7
    .parameter "aResName"
    .parameter "aFilePath"
    .parameter "aAssetPathList"

    .prologue
    .line 513
    const/4 v5, 0x0

    .line 514
    .local v5, stream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 515
    .local v4, size:I
    const/4 v0, 0x0

    .line 516
    .local v0, array:[B
    const/4 v1, 0x0

    .line 520
    .local v1, data:Lcom/waze/ResManager$ResData;
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/waze/ResManager;->LoadResStream(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 521
    if-eqz v5, :cond_0

    .line 523
    invoke-static {v5}, Lcom/waze/Utils;->ReadStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 524
    new-instance v2, Lcom/waze/ResManager$ResData;

    invoke-direct {v2, v0, v4}, Lcom/waze/ResManager$ResData;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v1           #data:Lcom/waze/ResManager$ResData;
    .local v2, data:Lcom/waze/ResManager$ResData;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 532
    .end local v2           #data:Lcom/waze/ResManager$ResData;
    .restart local v1       #data:Lcom/waze/ResManager$ResData;
    :cond_0
    :goto_0
    return-object v1

    .line 528
    :catch_0
    move-exception v3

    .line 530
    .local v3, ex:Ljava/lang/Exception;
    :goto_1
    const-string v6, "Error loading image from package"

    invoke-static {v6, v3}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 528
    .end local v1           #data:Lcom/waze/ResManager$ResData;
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v2       #data:Lcom/waze/ResManager$ResData;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #data:Lcom/waze/ResManager$ResData;
    .restart local v1       #data:Lcom/waze/ResManager$ResData;
    goto :goto_1
.end method

.method public LoadResList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "aPath"

    .prologue
    .line 669
    const/4 v8, 0x0

    .line 670
    .local v8, resListArray:[Ljava/lang/String;
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 671
    .local v1, assetMgr:Landroid/content/res/AssetManager;
    if-nez v1, :cond_0

    .line 673
    const-string v9, "Error loading resources list. Can\'t access asset manager"

    invoke-static {v9}, Lcom/waze/Logger;->ee(Ljava/lang/String;)V

    .line 674
    const/4 v9, 0x0

    .line 708
    :goto_0
    return-object v9

    .line 676
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v7, resList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/ResManager;->GetBaseDir()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, pathCustom:Ljava/lang/String;
    invoke-static {v6}, Lcom/waze/Utils;->removeMultipleSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 684
    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, entries:[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 688
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SD/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 689
    .local v5, pathCommon:Ljava/lang/String;
    invoke-static {v5}, Lcom/waze/Utils;->removeMultipleSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 690
    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 693
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v9, v2

    if-lt v4, v9, :cond_1

    .line 701
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v8, v9, [Ljava/lang/String;

    .line 702
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .end local v2           #entries:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #pathCommon:Ljava/lang/String;
    .end local v6           #pathCustom:Ljava/lang/String;
    :goto_2
    move-object v9, v8

    .line 708
    goto :goto_0

    .line 695
    .restart local v2       #entries:[Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #pathCommon:Ljava/lang/String;
    .restart local v6       #pathCustom:Ljava/lang/String;
    :cond_1
    aget-object v9, v2, v4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 697
    aget-object v9, v2, v4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 704
    .end local v2           #entries:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #pathCommon:Ljava/lang/String;
    .end local v6           #pathCustom:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 706
    .local v3, ex:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Exception while loading list of resources. Path: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public LoadSkin(Ljava/lang/String;)Lcom/waze/ResManager$ResData;
    .locals 5
    .parameter "aResName"

    .prologue
    .line 490
    invoke-static {}, Lcom/waze/ResManager;->GetSkinsPath()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, filePath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 493
    .local v2, result:Lcom/waze/ResManager$ResData;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 494
    invoke-static {}, Lcom/waze/ResManager;->GetSkinsPathCustom()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    .line 495
    invoke-static {}, Lcom/waze/ResManager;->GetSkinsPathCommon()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 498
    .local v0, assetPathList:[Ljava/lang/String;
    invoke-virtual {p0, p1, v1, v0}, Lcom/waze/ResManager;->LoadResData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/waze/ResManager$ResData;

    move-result-object v2

    .line 500
    return-object v2
.end method
