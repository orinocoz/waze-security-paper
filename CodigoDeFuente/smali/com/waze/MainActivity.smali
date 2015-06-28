.class public final Lcom/waze/MainActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "MainActivity.java"

# interfaces
.implements Lcom/waze/NativeManager$IOnUserNameResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/MainActivity$OnOkMsgSmsService;,
        Lcom/waze/MainActivity$ProgressToast;,
        Lcom/waze/MainActivity$SDCardWarnClickListener;
    }
.end annotation


# static fields
.field public static final ADDRESS_OPTIONS_CODE:I = 0x800a

.field public static final ADD_STOP_RESULT_CODE:I = 0x2

.field public static final CAPTURE_IMAGE_CODE:I = 0x8002

.field public static final INITIAL_HEAP_SIZE:J = 0x1000L

.field public static final LAYOUT_REQUEST_CODE_MASK:I = 0x8000

.field private static final MAIN_THREAD_PRIORITY:I = -0x8

.field public static final MYFRIENDS_CODE:I = 0x800d

.field public static final MYWAZE_CODE:I = 0x8004

.field public static final NAVBAR_ADD_PLACE_PHOTO_CODE:I = 0x8011

.field public static final NAVIGATE_CODE:I = 0x8003

.field public static final NAVIGATION_LIST_CODE:I = 0x8009

.field public static final NEARBY_GAS_STATIONS_CODE:I = 0x800c

.field public static final RECORD_SOUND_CODE:I = 0x8001

.field public static final RELOAD_SEARCH_CODE:I = 0x800f

.field public static final REPORT_ADD_PLACE_PHOTO_CODE:I = 0x8010

.field public static final REPORT_GROUPS_CODE:I = 0x8008

.field public static final REQUEST_ADD_DRIVE_SHARE:I = 0x8012

.field public static final RTALERTS_REQUEST_CODE:I = 0x8005

.field public static final SEARCH_MAP_CODE:I = 0x800b

.field public static final SETTINGS_CODE:I = 0x8007

.field public static final SHARE_CODE:I = 0x8006

.field public static final SHARE_PROCESS_CODE_MASK:I = 0x10000

.field public static final SHARE_REQUEST_CONTACTS_ACCESS:I = 0x2

.field public static final SHARE_REQUEST_LOGIN:I = 0x1

.field public static final SHARE_REQUEST_OPEN_ACTIVITY:I = 0x20

.field public static final SHARE_REQUEST_SHARE_CURRENT_LOCATION:I = 0x40

.field public static final SHARE_REQUEST_SHARE_DRIVE:I = 0x10

.field public static final SHARE_REQUEST_SHARE_HOME:I = 0x80

.field public static final SHARE_REQUEST_SHARE_WORK:I = 0x100

.field public static final SPEECHTT_EXTERNAL_REQUEST_CODE:I = 0x1000

.field public static final SPLASH_DISPLAY_TIMEOUT:J = 0xfaL

.field public static final TEST_PNG:Z = false

.field public static final TTS_DATA_CHECK_CODE:I = 0x2000

.field public static final TTS_DATA_INSTALL_CODE:I = 0x4000

.field public static final VERIFY_EVENT_CODE:I = 0x800e

.field public static bReportMapShownAnalytics:Z

.field public static bSignupSkipped:Z

.field public static bToOpenAccountPopup:Z

.field public static bToOpenMeetYourWazer:Z

.field public static bToOpenPasswordRecovery:Z

.field private static mResumeEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static sQuestionID:Ljava/lang/String;


# instance fields
.field private bIsSearchClicked:Z

.field private mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

.field private mAddFriendsPopup:Lcom/waze/navigate/social/AddFriendsPopup;

.field private mAddressToDrive:Lcom/waze/navigate/AddressItem;

.field private mGoogleAnalyticsTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field private volatile mIsRunning:Z

.field private mLastAddressItem:Lcom/waze/navigate/AddressItem;

.field private mLayoutMgr:Lcom/waze/LayoutManager;

.field private mMeetYourWazerPopup:Lcom/waze/profile/MeetYourWazerPopup;

.field private mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

.field private mOpenVenueNoAnswerRunnable:Ljava/lang/Runnable;

.field private mOrientation:I

.field private mPasswordRecoveryPopup:Lcom/waze/profile/PasswordRecoveryPopup;

.field private volatile mResumeProgressShow:Z

.field private mViewAnimator:Landroid/widget/ViewAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-static {}, Lcom/waze/Logger;->create()V

    .line 1174
    sput-boolean v1, Lcom/waze/MainActivity;->bToOpenPasswordRecovery:Z

    .line 1175
    sput-boolean v1, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    .line 1176
    sput-boolean v1, Lcom/waze/MainActivity;->bReportMapShownAnalytics:Z

    .line 1177
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/MainActivity;->sQuestionID:Ljava/lang/String;

    .line 1178
    sput-boolean v1, Lcom/waze/MainActivity;->bToOpenMeetYourWazer:Z

    .line 1179
    sput-boolean v1, Lcom/waze/MainActivity;->bSignupSkipped:Z

    .line 1195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/waze/MainActivity;->mResumeEvents:Ljava/util/ArrayList;

    .line 1240
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 1169
    iput-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    .line 1170
    iput-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    .line 1171
    iput-object v0, p0, Lcom/waze/MainActivity;->mMeetYourWazerPopup:Lcom/waze/profile/MeetYourWazerPopup;

    .line 1172
    iput-object v0, p0, Lcom/waze/MainActivity;->mPasswordRecoveryPopup:Lcom/waze/profile/PasswordRecoveryPopup;

    .line 1173
    iput-object v0, p0, Lcom/waze/MainActivity;->mAddFriendsPopup:Lcom/waze/navigate/social/AddFriendsPopup;

    .line 1180
    iput-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    .line 1182
    iput-object v0, p0, Lcom/waze/MainActivity;->mAddressToDrive:Lcom/waze/navigate/AddressItem;

    .line 1184
    iput-boolean v1, p0, Lcom/waze/MainActivity;->mIsRunning:Z

    .line 1185
    iput-boolean v1, p0, Lcom/waze/MainActivity;->mResumeProgressShow:Z

    .line 1187
    iput-boolean v1, p0, Lcom/waze/MainActivity;->bIsSearchClicked:Z

    .line 1189
    iput-object v0, p0, Lcom/waze/MainActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    .line 1191
    iput-object v0, p0, Lcom/waze/MainActivity;->mGoogleAnalyticsTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 1193
    iput-object v0, p0, Lcom/waze/MainActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    .line 88
    return-void
.end method

.method private IsSdCardAvailable()Z
    .locals 6

    .prologue
    .line 865
    const/4 v0, 0x1

    .line 866
    .local v0, bRes:Z
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 867
    .local v2, dlgBuilder:Landroid/app/AlertDialog$Builder;
    const-string v3, "The sdcard is not available - probably it is not present or mounted. \nTo run Waze you need sdcard available (not mounted) in your phone!"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 869
    const-string v3, "Warning"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 870
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 872
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 873
    const-string v4, "mounted"

    .line 872
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 873
    if-nez v3, :cond_0

    .line 875
    const-string v3, "Ok"

    new-instance v4, Lcom/waze/MainActivity$SDCardWarnClickListener;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/waze/MainActivity$SDCardWarnClickListener;-><init>(Lcom/waze/MainActivity$SDCardWarnClickListener;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 876
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 877
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 880
    const/4 v0, 0x0

    .line 882
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :cond_0
    return v0
.end method

.method private RegisterMediaBCReceivers()V
    .locals 3

    .prologue
    .line 829
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 832
    new-instance v1, Lcom/waze/IntentManager$WazeSDCardManager;

    invoke-direct {v1}, Lcom/waze/IntentManager$WazeSDCardManager;-><init>()V

    .line 833
    .local v1, sdcardMgr:Lcom/waze/IntentManager$WazeSDCardManager;
    invoke-virtual {p0, v1, v0}, Lcom/waze/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 835
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 836
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 838
    new-instance v1, Lcom/waze/IntentManager$WazeSDCardManager;

    .end local v1           #sdcardMgr:Lcom/waze/IntentManager$WazeSDCardManager;
    invoke-direct {v1}, Lcom/waze/IntentManager$WazeSDCardManager;-><init>()V

    .line 839
    .restart local v1       #sdcardMgr:Lcom/waze/IntentManager$WazeSDCardManager;
    invoke-virtual {p0, v1, v0}, Lcom/waze/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 840
    return-void
.end method

.method static synthetic access$0(Lcom/waze/MainActivity;)Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/waze/MainActivity;->mAddressToDrive:Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/MainActivity;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/waze/MainActivity;->mAddressToDrive:Lcom/waze/navigate/AddressItem;

    return-void
.end method

.method static synthetic access$2(Lcom/waze/MainActivity;)Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/waze/MainActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/MainActivity;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/waze/MainActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    return-void
.end method

.method static synthetic access$4(Lcom/waze/MainActivity;)Lcom/waze/LayoutManager;
    .locals 1
    .parameter

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    return-object v0
.end method

.method private postOnResumeEvents()V
    .locals 3

    .prologue
    .line 746
    :goto_0
    sget-object v1, Lcom/waze/MainActivity;->mResumeEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 751
    return-void

    .line 748
    :cond_0
    sget-object v1, Lcom/waze/MainActivity;->mResumeEvents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 749
    .local v0, event:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static registerOnResumeEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "aEvent"

    .prologue
    .line 730
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 731
    .local v0, instance:Lcom/waze/MainActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->IsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 739
    :goto_0
    return-void

    .line 737
    :cond_0
    sget-object v1, Lcom/waze/MainActivity;->mResumeEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private reportMapShown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 431
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 432
    const-string v1, "MAP_SHOWN"

    const/4 v2, 0x1

    .line 431
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 433
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->SetSocialIsFirstTime(Z)V

    .line 434
    return-void
.end method

.method private startApp()V
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->Start()Lcom/waze/NativeManager;

    .line 212
    invoke-static {p0}, Lcom/waze/AppService;->start(Lcom/waze/ifs/ui/ActivityBase;)V

    goto :goto_0
.end method


# virtual methods
.method public DisableOrientation()V
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/MainActivity;->setRequestedOrientation(I)V

    .line 802
    return-void
.end method

.method public EnableOrientation()V
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/waze/MainActivity;->setRequestedOrientation(I)V

    .line 797
    return-void
.end method

.method public IsAccountDetailsShown()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsNameYourWazerShown()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsRunning()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/waze/MainActivity;->mIsRunning:Z

    return v0
.end method

.method public OpenAddressPreview(Lcom/waze/navigate/AddressItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "defaultItem"
    .parameter "venueId"
    .parameter "VenueContext"
    .parameter "Query"
    .parameter "feature"
    .parameter "response"
    .parameter "typedQuery"

    .prologue
    .line 220
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/MainActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 222
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v4, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lcom/waze/NativeManager;->AutoCompletePlaceClicked(Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-object p1, p0, Lcom/waze/MainActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    .line 224
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/waze/MainActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/waze/MainActivity$1;-><init>(Lcom/waze/MainActivity;Lcom/waze/navigate/AddressItem;)V

    iput-object v0, p0, Lcom/waze/MainActivity;->mOpenVenueNoAnswerRunnable:Ljava/lang/Runnable;

    .line 237
    iget-object v0, p0, Lcom/waze/MainActivity;->mOpenVenueNoAnswerRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->getVenueGetTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/waze/MainActivity;->postDelayed(Ljava/lang/Runnable;J)V

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v11, Landroid/content/Intent;

    const-class v0, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v11, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "AddressItem"

    invoke-virtual {v11, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v11, v0}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public SearchBarClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 962
    const/4 v0, 0x0

    .line 963
    .local v0, isLandscape:Z
    iput-boolean v3, p0, Lcom/waze/MainActivity;->bIsSearchClicked:Z

    .line 964
    invoke-virtual {p0}, Lcom/waze/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 966
    const v2, 0x7f09039f

    invoke-virtual {p0, v2}, Lcom/waze/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 973
    .local v1, view:Landroid/view/View;
    :goto_0
    new-instance v2, Lcom/waze/MainActivity$4;

    invoke-direct {v2, p0, v1}, Lcom/waze/MainActivity$4;-><init>(Lcom/waze/MainActivity;Landroid/view/View;)V

    invoke-static {v1, v2, v0}, Lcom/waze/view/anim/AnimationUtils;->openNavigateScreen(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;Z)V

    .line 1007
    return-void

    .line 970
    .end local v1           #view:Landroid/view/View;
    :cond_0
    const v2, 0x7f0903af

    invoke-virtual {p0, v2}, Lcom/waze/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 971
    .restart local v1       #view:Landroid/view/View;
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SendMessageToNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "strUrlToSend"
    .parameter "sNumberToSend"

    .prologue
    .line 1142
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_EMAIL_SUBJECT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, mEmailSubject:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_EMAIL_BODY1:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1144
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_EMAIL_BODY2:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1145
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_EMAIL_BODY3:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1147
    .local v1, mEmailBody:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1149
    .local v3, str:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v0, i:Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    .line 1156
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_PICK_UP_TITLE_SEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 1155
    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/waze/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1157
    return-void
.end method

.method public SendPickUp(Ljava/lang/String;)V
    .locals 7
    .parameter "strUrlToSend"

    .prologue
    .line 1119
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_EMAIL_SUBJECT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 1120
    .local v2, mEmailSubject:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_EMAIL_BODY1:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1121
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_EMAIL_BODY2:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1122
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_EMAIL_BODY3:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1124
    .local v1, mEmailBody:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1126
    .local v3, str:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v0, i:Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1129
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    const-string v4, "exit_on_sent"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1131
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    .line 1134
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_PICK_UP_TITLE_SEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 1133
    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/waze/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1135
    return-void
.end method

.method public SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V
    .locals 1
    .parameter "Data"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    invoke-virtual {v0}, Lcom/waze/profile/AccountSignInDetails;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    invoke-virtual {v0, p1}, Lcom/waze/profile/AccountSignInDetails;->SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/waze/MainActivity;->mPasswordRecoveryPopup:Lcom/waze/profile/PasswordRecoveryPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/MainActivity;->mPasswordRecoveryPopup:Lcom/waze/profile/PasswordRecoveryPopup;

    invoke-virtual {v0}, Lcom/waze/profile/PasswordRecoveryPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/waze/MainActivity;->mPasswordRecoveryPopup:Lcom/waze/profile/PasswordRecoveryPopup;

    invoke-virtual {v0, p1}, Lcom/waze/profile/PasswordRecoveryPopup;->SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V

    goto :goto_0
.end method

.method public SetUserUpdateResult(Z)V
    .locals 2
    .parameter "bIsSuccess"

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    invoke-virtual {v0}, Lcom/waze/profile/NameYourWazerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    invoke-virtual {v0, p1}, Lcom/waze/profile/NameYourWazerPopup;->OnUpdateResult(Z)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/waze/MainActivity;->mPasswordRecoveryPopup:Lcom/waze/profile/PasswordRecoveryPopup;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/waze/MainActivity;->mPasswordRecoveryPopup:Lcom/waze/profile/PasswordRecoveryPopup;

    invoke-virtual {v0}, Lcom/waze/profile/PasswordRecoveryPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/waze/MainActivity;->mPasswordRecoveryPopup:Lcom/waze/profile/PasswordRecoveryPopup;

    invoke-virtual {v0, p1}, Lcom/waze/profile/PasswordRecoveryPopup;->OnUpdateResult(Z)V

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    invoke-virtual {v0}, Lcom/waze/profile/AccountSignInDetails;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    :cond_3
    iget-boolean v0, p0, Lcom/waze/MainActivity;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 423
    sget-boolean v0, Lcom/waze/MainActivity;->bReportMapShownAnalytics:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 424
    sput-boolean v1, Lcom/waze/MainActivity;->bReportMapShownAnalytics:Z

    .line 425
    sput-boolean v1, Lcom/waze/MainActivity;->bSignupSkipped:Z

    .line 426
    invoke-direct {p0}, Lcom/waze/MainActivity;->reportMapShown()V

    goto :goto_0
.end method

.method public areAllSignUpDialogsClosed()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    invoke-virtual {v0}, Lcom/waze/profile/NameYourWazerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    .line 369
    invoke-virtual {v0}, Lcom/waze/profile/AccountSignInDetails;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 368
    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelSplash()V
    .locals 1

    .prologue
    .line 811
    invoke-static {}, Lcom/waze/pioneer/PioneerManager;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waze/MainActivity;->mMeetYourWazerPopup:Lcom/waze/profile/MeetYourWazerPopup;

    if-nez v0, :cond_0

    .line 812
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/waze/MainActivity;->setRequestedOrientation(I)V

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->isSplashVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->cancelSplash()V

    .line 819
    :cond_1
    return-void
.end method

.method getAnimator()Landroid/widget/ViewAnimator;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/waze/MainActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    return-object v0
.end method

.method public getLayoutMgr()Lcom/waze/LayoutManager;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    return-object v0
.end method

.method public getMainView()Lcom/waze/MapViewWrapper;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getAppView()Lcom/waze/MapViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected myHandleMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 252
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    if-ne v4, v5, :cond_3

    .line 253
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 254
    iget-object v4, p0, Lcom/waze/MainActivity;->mOpenVenueNoAnswerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/waze/MainActivity;->cancel(Ljava/lang/Runnable;)V

    .line 256
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 257
    .local v1, b:Landroid/os/Bundle;
    const-string v4, "address_item"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 258
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    iget-object v4, p0, Lcom/waze/MainActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v4, :cond_0

    .line 260
    iget-object v4, p0, Lcom/waze/MainActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setType(Ljava/lang/Integer;)V

    .line 261
    iget-object v4, p0, Lcom/waze/MainActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setId(Ljava/lang/String;)V

    .line 262
    iput-object v7, p0, Lcom/waze/MainActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    .line 264
    :cond_0
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v4

    sget v5, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v6, p0, Lcom/waze/MainActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v4, v5, v6}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 266
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    iget-object v4, p0, Lcom/waze/MainActivity;->mOpenVenueNoAnswerRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/waze/MainActivity;->mOpenVenueNoAnswerRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 270
    iput-object v7, p0, Lcom/waze/MainActivity;->mOpenVenueNoAnswerRunnable:Ljava/lang/Runnable;

    .line 280
    .end local v0           #ai:Lcom/waze/navigate/AddressItem;
    .end local v1           #b:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return v3

    .line 274
    .restart local v0       #ai:Lcom/waze/navigate/AddressItem;
    .restart local v1       #b:Landroid/os/Bundle;
    :cond_2
    iput-object v7, p0, Lcom/waze/MainActivity;->mOpenVenueNoAnswerRunnable:Ljava/lang/Runnable;

    .line 275
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "AddressItem"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v2, v3}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 280
    .end local v0           #ai:Lcom/waze/navigate/AddressItem;
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->myHandleMessage(Landroid/os/Message;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 610
    const/16 v0, 0x1388

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/waze/MainActivity;->mMeetYourWazerPopup:Lcom/waze/profile/MeetYourWazerPopup;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/waze/MainActivity;->mMeetYourWazerPopup:Lcom/waze/profile/MeetYourWazerPopup;

    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/profile/MeetYourWazerPopup;->onActivityResult(IILandroid/content/Intent;)V

    .line 617
    :cond_0
    const/16 v0, 0xde

    if-eq p1, v0, :cond_1

    .line 618
    const/16 v0, 0xdf

    if-ne p1, v0, :cond_2

    .line 620
    :cond_1
    invoke-virtual {p0}, Lcom/waze/MainActivity;->DisableOrientation()V

    .line 621
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    if-eqz v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/profile/AccountSignInDetails;->onActivityResult(IILandroid/content/Intent;)V

    .line 626
    :cond_2
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 627
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_7

    .line 628
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 629
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/NativeManager;->bToUploadContacts:Z

    .line 630
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/phone/AddressBook;->RequestSync(Z)V

    .line 631
    invoke-static {p0, p1}, Lcom/waze/share/ShareUtility;->shareLocationOrDrive(Lcom/waze/ifs/ui/ActivityBase;I)V

    .line 639
    :cond_3
    :goto_0
    const v0, 0x8012

    if-ne p1, v0, :cond_4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 640
    if-eqz p3, :cond_4

    sget-object v0, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SELECTED:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 641
    iget-object v1, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 642
    sget-object v2, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SELECTED:Ljava/lang/String;

    .line 641
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/waze/LayoutManager;->updateNavResultShare(Ljava/util/ArrayList;)V

    .line 645
    :cond_4
    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_5

    .line 646
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 647
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 648
    .local v8, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 649
    const-string v0, "VOICE_SEARCH_RECOGNIZED"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 650
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/waze/MainActivity;->startNavigateFromSpeech(Ljava/lang/String;)V

    .line 655
    .end local v8           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 657
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/waze/LayoutManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 707
    :cond_6
    :goto_1
    return-void

    .line 632
    :cond_7
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    .line 633
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 634
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/NativeManager;->bToUploadContacts:Z

    .line 635
    invoke-static {p0, p1}, Lcom/waze/share/ShareUtility;->shareLocationOrDrive(Lcom/waze/ifs/ui/ActivityBase;I)V

    goto :goto_0

    .line 661
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 663
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v9

    .line 665
    .local v9, nativeManager:Lcom/waze/NativeManager;
    const/16 v0, 0x200

    if-ne p1, v0, :cond_9

    .line 667
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/waze/LayoutManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 669
    :cond_9
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_a

    .line 670
    invoke-virtual {v9}, Lcom/waze/NativeManager;->getSpeechttManager()Lcom/waze/SpeechttManagerBase;

    move-result-object v10

    .line 671
    .local v10, speechttManager:Lcom/waze/SpeechttManagerBase;
    invoke-virtual {v10, p2, p3}, Lcom/waze/SpeechttManagerBase;->OnResultsExternal(ILandroid/content/Intent;)V

    .line 676
    .end local v10           #speechttManager:Lcom/waze/SpeechttManagerBase;
    :cond_a
    const v0, 0x800e

    if-ne p2, v0, :cond_c

    .line 678
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->mainMenuInit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 680
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getMainMenu()Lcom/waze/menus/MainMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/menus/MainMenu;->dismiss()V

    .line 682
    :cond_b
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AddressItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    iput-object v0, p0, Lcom/waze/MainActivity;->mAddressToDrive:Lcom/waze/navigate/AddressItem;

    .line 684
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_THANKS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_EVENTS_SHOW_UP_IN_NAVIGATE_TEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/waze/MainActivity$OnOkMsgSmsService;

    invoke-direct {v4, p0}, Lcom/waze/MainActivity$OnOkMsgSmsService;-><init>(Lcom/waze/MainActivity;)V

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 688
    :cond_c
    const/16 v0, 0x2000

    if-ne p1, v0, :cond_d

    .line 689
    invoke-virtual {v9}, Lcom/waze/NativeManager;->getTtsManager()Lcom/waze/TtsManager;

    move-result-object v11

    .line 690
    .local v11, ttsManager:Lcom/waze/TtsManager;
    invoke-virtual {v11, p2, p3}, Lcom/waze/TtsManager;->onDataCheckResult(ILandroid/content/Intent;)V

    .line 693
    .end local v11           #ttsManager:Lcom/waze/TtsManager;
    :cond_d
    const/16 v0, 0x4000

    if-ne p1, v0, :cond_e

    .line 694
    invoke-virtual {v9}, Lcom/waze/NativeManager;->getTtsManager()Lcom/waze/TtsManager;

    move-result-object v11

    .line 695
    .restart local v11       #ttsManager:Lcom/waze/TtsManager;
    invoke-virtual {v11, p2, p3}, Lcom/waze/TtsManager;->onDataInstallResult(ILandroid/content/Intent;)V

    .line 698
    .end local v11           #ttsManager:Lcom/waze/TtsManager;
    :cond_e
    const v0, 0x8000

    and-int/2addr v0, p1

    if-lez v0, :cond_6

    .line 700
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/waze/LayoutManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 575
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Configuration changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget v0, p0, Lcom/waze/MainActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/waze/MainActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 581
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/waze/MainActivity;->mOrientation:I

    .line 582
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 583
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    iget v1, p0, Lcom/waze/MainActivity;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->onOrientationChanged(I)V

    .line 584
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getAppView()Lcom/waze/MapViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MapViewWrapper;->getMapView()Lcom/waze/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MapView;->orientationChanged()V

    .line 587
    :cond_0
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 588
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 107
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/waze/MainActivity;->requestWindowFeature(I)Z

    .line 122
    invoke-static {p0}, Lcom/waze/push/Registrar;->start(Landroid/app/Activity;)V

    .line 124
    iput-boolean v1, p0, Lcom/waze/MainActivity;->mIsMainActivity:Z

    .line 127
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/waze/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 131
    invoke-virtual {p0, v1}, Lcom/waze/MainActivity;->setRequestedOrientation(I)V

    .line 146
    :cond_0
    :goto_0
    new-instance v0, Lcom/waze/CustomExceptionHandler;

    invoke-direct {v0}, Lcom/waze/CustomExceptionHandler;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 149
    invoke-virtual {p0}, Lcom/waze/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/waze/MainActivity;->mOrientation:I

    .line 150
    invoke-static {p0}, Lcom/waze/AppService;->setMainActivity(Lcom/waze/MainActivity;)V

    .line 152
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/MainActivity;->mGoogleAnalyticsTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 154
    iget-object v0, p0, Lcom/waze/MainActivity;->mGoogleAnalyticsTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "UA-24084788-1"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 157
    new-instance v0, Lcom/waze/LayoutManager;

    invoke-direct {v0, p0}, Lcom/waze/LayoutManager;-><init>(Lcom/waze/ifs/ui/ActivityBase;)V

    iput-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    .line 158
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/waze/MainActivity;->setContentView(Landroid/view/View;)V

    .line 160
    sget-object v0, Lcom/waze/WazeApplication;->startSW:Lcom/waze/utils/Stopwatch;

    const-string v1, "MainActivity setContentView"

    invoke-virtual {v0, v1, v2}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 162
    invoke-direct {p0}, Lcom/waze/MainActivity;->startApp()V

    .line 164
    invoke-static {p0}, Lcom/waze/social/facebook/FacebookWrapper;->initialize(Lcom/waze/ifs/ui/ActivityBase;)Lcom/waze/social/facebook/FacebookWrapper;

    .line 166
    sget-object v0, Lcom/waze/WazeApplication;->startSW:Lcom/waze/utils/Stopwatch;

    const-string v1, "MainActivity onCreate ENDED"

    invoke-virtual {v0, v1, v2}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 179
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/waze/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 137
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/waze/MainActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0, v2}, Lcom/waze/MainActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "aMenu"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->openMainMenu()V

    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/NativeManager;->unregisterOnUserNameResultListerner(Lcom/waze/NativeManager$IOnUserNameResult;)V

    .line 562
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/AppService;->setMainActivity(Lcom/waze/MainActivity;)V

    .line 563
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 564
    return-void
.end method

.method public onFacebookTokenSet()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    invoke-virtual {v0}, Lcom/waze/profile/AccountSignInDetails;->onFacebookTokenSet()V

    .line 399
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 386
    iget-object v1, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->IsPopupsShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v1, v0}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 391
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/waze/ifs/ui/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "aIntent"

    .prologue
    .line 536
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 539
    invoke-virtual {p0, p1}, Lcom/waze/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 540
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 496
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 498
    invoke-static {}, Lcom/waze/AppService;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 499
    iget-boolean v2, p0, Lcom/waze/MainActivity;->bIsSearchClicked:Z

    if-nez v2, :cond_3

    .line 501
    invoke-static {}, Lcom/waze/AppService;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/MapViewWrapper;->onPause()V

    .line 519
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v2}, Lcom/waze/LayoutManager;->onPause()V

    .line 521
    iput-boolean v5, p0, Lcom/waze/MainActivity;->mIsRunning:Z

    .line 523
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 524
    .local v1, nativeManager:Lcom/waze/NativeManager;
    if-eqz v1, :cond_1

    .line 525
    invoke-virtual {v1}, Lcom/waze/NativeManager;->asrCancel()V

    .line 528
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 530
    invoke-virtual {p0}, Lcom/waze/MainActivity;->cancelSplash()V

    .line 532
    :cond_2
    return-void

    .line 505
    .end local v1           #nativeManager:Lcom/waze/NativeManager;
    :cond_3
    iput-boolean v5, p0, Lcom/waze/MainActivity;->bIsSearchClicked:Z

    .line 506
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 507
    .local v0, hn:Landroid/os/Handler;
    new-instance v2, Lcom/waze/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/MainActivity$3;-><init>(Lcom/waze/MainActivity;)V

    .line 515
    const-wide/16 v3, 0x12c

    .line 507
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 290
    const/4 v2, 0x0

    .line 292
    .local v2, progressToast:Lcom/waze/MainActivity$ProgressToast;
    const-string v4, "WAZE DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ON RESUME. Task id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/waze/MainActivity;->getTaskId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 294
    invoke-static {}, Lcom/waze/AppService;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v4

    if-nez v4, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/MapViewWrapper;->onResume()V

    .line 301
    iput-boolean v0, p0, Lcom/waze/MainActivity;->mIsRunning:Z

    .line 303
    invoke-static {}, Lcom/waze/NativeManager;->onMainResume()Z

    .line 305
    iget-object v4, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v4}, Lcom/waze/LayoutManager;->onResume()V

    .line 308
    iget-boolean v4, p0, Lcom/waze/MainActivity;->mResumeProgressShow:Z

    if-eqz v4, :cond_3

    .line 309
    invoke-static {}, Lcom/waze/AppService;->getPrevActivity()Landroid/app/Activity;

    move-result-object v4

    if-eq v4, p0, :cond_2

    invoke-static {}, Lcom/waze/AppService;->getPrevActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_3

    .line 311
    :cond_2
    new-instance v2, Lcom/waze/MainActivity$ProgressToast;

    .end local v2           #progressToast:Lcom/waze/MainActivity$ProgressToast;
    invoke-direct {v2, p0}, Lcom/waze/MainActivity$ProgressToast;-><init>(Lcom/waze/MainActivity;)V

    .restart local v2       #progressToast:Lcom/waze/MainActivity$ProgressToast;
    invoke-virtual {v2}, Lcom/waze/MainActivity$ProgressToast;->start()V

    .line 313
    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 316
    :cond_3
    invoke-static {p0}, Lcom/waze/IntentManager;->ParseIntentDataFlags(Landroid/app/Activity;)V

    .line 319
    invoke-static {}, Lcom/waze/AppService;->IsAppRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 321
    invoke-static {p0, v0}, Lcom/waze/IntentManager;->HandleIntent(Landroid/app/Activity;Z)V

    .line 325
    :cond_4
    iget-boolean v4, p0, Lcom/waze/MainActivity;->mResumeProgressShow:Z

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 327
    invoke-virtual {v2}, Lcom/waze/MainActivity$ProgressToast;->stopToast()V

    .line 330
    :cond_5
    invoke-direct {p0}, Lcom/waze/MainActivity;->postOnResumeEvents()V

    .line 331
    sget-boolean v4, Lcom/waze/MainActivity;->bToOpenMeetYourWazer:Z

    if-eqz v4, :cond_6

    .line 333
    invoke-virtual {p0}, Lcom/waze/MainActivity;->openMeetYourWazer()V

    .line 336
    :cond_6
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_7

    .line 338
    invoke-static {}, Lcom/waze/AdsTracking;->getAdsTrackingData()V

    .line 342
    :cond_7
    sget-boolean v4, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    if-eqz v4, :cond_8

    .line 344
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/waze/NativeManager;->registerOnUserNameResultListerner(Lcom/waze/NativeManager$IOnUserNameResult;)V

    .line 346
    new-instance v4, Lcom/waze/profile/AccountSignInDetails;

    invoke-direct {v4, p0}, Lcom/waze/profile/AccountSignInDetails;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    .line 347
    iget-object v4, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    invoke-virtual {v4}, Lcom/waze/profile/AccountSignInDetails;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 348
    iget-object v4, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    invoke-virtual {v4}, Lcom/waze/profile/AccountSignInDetails;->show()V

    .line 350
    sput-boolean v3, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    goto :goto_0

    .line 351
    :cond_8
    sget-boolean v4, Lcom/waze/MainActivity;->bReportMapShownAnalytics:Z

    if-eqz v4, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/waze/MainActivity;->areAllSignUpDialogsClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    .line 356
    .local v1, mwnm:Lcom/waze/mywaze/MyWazeNativeManager;
    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getWasLoginSuccess()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getWasFbTokenSet()Z

    move-result v4

    if-nez v4, :cond_9

    move v0, v3

    .line 357
    .local v0, hasLoggedIn:Z
    :cond_9
    sget-boolean v4, Lcom/waze/MainActivity;->bReportMapShownAnalytics:Z

    if-eqz v4, :cond_0

    if-nez v0, :cond_a

    sget-boolean v4, Lcom/waze/MainActivity;->bSignupSkipped:Z

    if-eqz v4, :cond_0

    .line 358
    :cond_a
    sput-boolean v3, Lcom/waze/MainActivity;->bReportMapShownAnalytics:Z

    .line 359
    sput-boolean v3, Lcom/waze/MainActivity;->bSignupSkipped:Z

    .line 360
    invoke-direct {p0}, Lcom/waze/MainActivity;->reportMapShown()V

    goto/16 :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/waze/MainActivity;->startNavigateActivity()V

    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 544
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onStart()V

    .line 546
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 554
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onStop()V

    .line 556
    return-void
.end method

.method public onUserNameResult(ILjava/lang/String;)V
    .locals 2
    .parameter "nType"
    .parameter "username"

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    invoke-virtual {v0}, Lcom/waze/profile/NameYourWazerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    invoke-virtual {v0, p1, p2}, Lcom/waze/profile/NameYourWazerPopup;->onUserNameResult(ILjava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    invoke-virtual {v0}, Lcom/waze/profile/AccountSignInDetails;->dismiss()V

    .line 445
    iput-object v1, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    invoke-virtual {v0}, Lcom/waze/profile/AccountSignInDetails;->dismiss()V

    .line 453
    iput-object v1, p0, Lcom/waze/MainActivity;->mAccountSignIn:Lcom/waze/profile/AccountSignInDetails;

    .line 455
    :cond_2
    invoke-virtual {p0}, Lcom/waze/MainActivity;->DisableOrientation()V

    .line 456
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->isSplashVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->cancelSplash()V

    .line 460
    :cond_3
    new-instance v0, Lcom/waze/profile/NameYourWazerPopup;

    invoke-direct {v0, p0}, Lcom/waze/profile/NameYourWazerPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    .line 461
    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    invoke-virtual {v0}, Lcom/waze/profile/NameYourWazerPopup;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 462
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 463
    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    invoke-virtual {v0}, Lcom/waze/profile/NameYourWazerPopup;->show()V

    .line 464
    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    invoke-virtual {v0, p1, p2}, Lcom/waze/profile/NameYourWazerPopup;->onUserNameResult(ILjava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/waze/MainActivity;->mNameWazerPopup:Lcom/waze/profile/NameYourWazerPopup;

    new-instance v1, Lcom/waze/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/MainActivity$2;-><init>(Lcom/waze/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/profile/NameYourWazerPopup;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public openAddFriendPopup()V
    .locals 1

    .prologue
    .line 1092
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->GetShowAddFriendsNTV()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->signup_finished()V

    .line 1105
    :goto_0
    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/waze/MainActivity;->mAddFriendsPopup:Lcom/waze/navigate/social/AddFriendsPopup;

    if-nez v0, :cond_1

    .line 1100
    new-instance v0, Lcom/waze/navigate/social/AddFriendsPopup;

    invoke-direct {v0, p0}, Lcom/waze/navigate/social/AddFriendsPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waze/MainActivity;->mAddFriendsPopup:Lcom/waze/navigate/social/AddFriendsPopup;

    .line 1103
    :cond_1
    invoke-virtual {p0}, Lcom/waze/MainActivity;->DisableOrientation()V

    .line 1104
    iget-object v0, p0, Lcom/waze/MainActivity;->mAddFriendsPopup:Lcom/waze/navigate/social/AddFriendsPopup;

    invoke-virtual {v0}, Lcom/waze/navigate/social/AddFriendsPopup;->show()V

    goto :goto_0
.end method

.method public openConflictingActivity()V
    .locals 2

    .prologue
    .line 1055
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/install/InstallPickAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1056
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/waze/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1057
    return-void
.end method

.method public openEncouragementScreen(IJ)V
    .locals 2
    .parameter "type"
    .parameter "callback"

    .prologue
    .line 1108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/share/EncouragementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1109
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1110
    const-string v1, "callback"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1111
    invoke-virtual {p0, v0}, Lcom/waze/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1112
    return-void
.end method

.method public openMeetYourWazer()V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->isSplashVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->cancelSplash()V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/waze/MainActivity;->mMeetYourWazerPopup:Lcom/waze/profile/MeetYourWazerPopup;

    if-nez v0, :cond_1

    .line 1066
    new-instance v0, Lcom/waze/profile/MeetYourWazerPopup;

    invoke-direct {v0, p0}, Lcom/waze/profile/MeetYourWazerPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waze/MainActivity;->mMeetYourWazerPopup:Lcom/waze/profile/MeetYourWazerPopup;

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/waze/MainActivity;->mMeetYourWazerPopup:Lcom/waze/profile/MeetYourWazerPopup;

    invoke-virtual {v0}, Lcom/waze/profile/MeetYourWazerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    :goto_0
    return-void

    .line 1074
    :cond_2
    invoke-virtual {p0}, Lcom/waze/MainActivity;->DisableOrientation()V

    .line 1075
    iget-object v0, p0, Lcom/waze/MainActivity;->mMeetYourWazerPopup:Lcom/waze/profile/MeetYourWazerPopup;

    invoke-virtual {v0}, Lcom/waze/profile/MeetYourWazerPopup;->show()V

    goto :goto_0
.end method

.method public openPasswordRecovery()V
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/waze/MainActivity;->mPasswordRecoveryPopup:Lcom/waze/profile/PasswordRecoveryPopup;

    if-nez v0, :cond_0

    .line 1083
    new-instance v0, Lcom/waze/profile/PasswordRecoveryPopup;

    invoke-direct {v0, p0}, Lcom/waze/profile/PasswordRecoveryPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waze/MainActivity;->mPasswordRecoveryPopup:Lcom/waze/profile/PasswordRecoveryPopup;

    .line 1086
    :cond_0
    invoke-virtual {p0}, Lcom/waze/MainActivity;->DisableOrientation()V

    .line 1087
    iget-object v0, p0, Lcom/waze/MainActivity;->mPasswordRecoveryPopup:Lcom/waze/profile/PasswordRecoveryPopup;

    invoke-virtual {v0}, Lcom/waze/profile/PasswordRecoveryPopup;->show()V

    .line 1088
    return-void
.end method

.method public setResumeProgressShow(Z)V
    .locals 0
    .parameter "aValue"

    .prologue
    .line 765
    iput-boolean p1, p0, Lcom/waze/MainActivity;->mResumeProgressShow:Z

    .line 766
    return-void
.end method

.method public speechRecognitionClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 945
    const-string v1, "WAZE"

    const-string v2, "SR pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string v1, "VOICE_SEARCH"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 948
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 950
    const-string v2, "free_form"

    .line 949
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 951
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startEditTextDialog(IJJ)V
    .locals 3
    .parameter "displayStringInt"
    .parameter "callbackLong"
    .parameter "contextLong"

    .prologue
    const/4 v2, 0x1

    .line 928
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/ifs/ui/EditTextDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 929
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_NATIVE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 930
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_TITLE_DS:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 931
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_CALLBACK:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 932
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_CONTEXT:Ljava/lang/String;

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 933
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SPEECH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 934
    invoke-virtual {p0, v0}, Lcom/waze/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 935
    return-void
.end method

.method public startNavigateActivity()V
    .locals 2

    .prologue
    .line 1026
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/NavigateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1027
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x8003

    invoke-virtual {p0, v0, v1}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1028
    return-void
.end method

.method public startNavigateActivityWithFade()V
    .locals 3

    .prologue
    .line 1011
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/NavigateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1012
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "keyboard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1013
    const v1, 0x8003

    invoke-virtual {p0, v0, v1}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1014
    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/waze/MainActivity;->overridePendingTransition(II)V

    .line 1015
    return-void
.end method

.method public startNavigateFromSpeech(Ljava/lang/String;)V
    .locals 3
    .parameter "speechStr"

    .prologue
    .line 1019
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/NavigateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1020
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Speech"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    const v1, 0x8003

    invoke-virtual {p0, v0, v1}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1022
    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/waze/MainActivity;->overridePendingTransition(II)V

    .line 1023
    return-void
.end method

.method public startProfileActivity()V
    .locals 3

    .prologue
    const v2, 0x8004

    .line 1034
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/profile/TempUserProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1037
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1044
    :goto_0
    return-void

    .line 1041
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/profile/MyProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1042
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startRegisterActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1046
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1047
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    const-string v1, "back"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    const-string v1, "fon_shon_rea_son"

    .line 1050
    const-string v2, "FEATURE"

    .line 1049
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    invoke-virtual {p0, v0, v3}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1052
    return-void
.end method

.method public startRoutesActivity()V
    .locals 2

    .prologue
    .line 1030
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/routes/RoutesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1031
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/waze/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1032
    return-void
.end method

.method public startStopPointActivity(Z)V
    .locals 3
    .parameter "stopPointMessage"

    .prologue
    .line 938
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/NavigateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 939
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "stopPoint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 940
    const-string v1, "stopPointMessage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 941
    const v1, 0x8003

    invoke-virtual {p0, v0, v1}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 942
    return-void
.end method
