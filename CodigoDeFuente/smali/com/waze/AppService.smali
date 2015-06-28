.class public final Lcom/waze/AppService;
.super Landroid/app/Service;
.source "AppService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/AppService$EndCallListener;,
        Lcom/waze/AppService$ServiceMsgDispatcher;
    }
.end annotation


# static fields
.field public static final AMAZON_MARKET_APP_LINK:Ljava/lang/String; = "http://www.amazon.com/gp/mas/dl/android?p=com.waze"

.field public static final APPLICATION_TEST_MODE:Z = false

.field public static final GOOGLE_MARKET_APP_LINK:Ljava/lang/String; = "market://details?id=com.waze"

.field private static final LOG_TAG:Ljava/lang/String; = "WAZE_Service"

.field public static final MARKET_APP_LINK:Ljava/lang/String; = "market://details?id=com.waze"

.field public static final MSG_OPEN_BROWSER_FOR_UPGRADE:I = 0x4

.field public static final MSG_RESTART_APPLICATION:I = 0x5

.field public static final MSG_SHOW_CAMERA_PREVIEW:I = 0x3

.field public static final MSG_SHOW_CONTACTS:I = 0x6

.field public static final MSG_SHOW_DIALER_SCREEN:I = 0x2

.field public static final MSG_SHOW_HOME_SCREEN:I = 0x1

.field public static final MSG_SHOW_MAIN_ACTIVITY:I = 0x0

.field public static final POLICE_ENABLE:I = 0x1

.field public static final SHOW_CONTACTS_URI:Ljava/lang/String; = "content://contacts/people/"

.field private static final WAZE_LOGCAT_MONITOR_ENABLED:Z = false

.field public static final WAZE_NOTIFICATION_GENERIC:I = 0x2

.field private static final WAZE_NOTIFICATION_RUNNING:I = 0x1

.field public static final WAZE_UPGRADE_URL:Ljava/lang/String; = "m.waze.com"

.field private static activeMapViewWrapper:Lcom/waze/MapViewWrapper;

.field private static mActiveActivity:Lcom/waze/ifs/ui/ActivityBase;

.field private static mConnEventReceiver:Lcom/waze/ConnEventReceiver;

.field private static mCurrentNotification:Landroid/app/Notification;

.field private static mFirstRun:Z

.field private static mInstance:Lcom/waze/AppService;

.field public static mLogCatMonitor:Lcom/waze/Logger$LogCatMonitor;

.field private static volatile mMainActivity:Lcom/waze/MainActivity;

.field private static mNativeManager:Lcom/waze/NativeManager;

.field private static mPowerManager:Lcom/waze/PowerManager;

.field private static mPrevActivity:Lcom/waze/ifs/ui/ActivityBase;

.field private static mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

.field private static mStandbyManager:Lcom/waze/StandbyManager;

.field private static mUrl:Ljava/lang/String;


# instance fields
.field private mFacebook:Lcom/facebook/android/Facebook;

.field private final mOnStartApp:Lcom/waze/ifs/async/RunnableExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 958
    new-instance v0, Lcom/waze/AppService$ServiceMsgDispatcher;

    invoke-direct {v0, v1}, Lcom/waze/AppService$ServiceMsgDispatcher;-><init>(Lcom/waze/AppService$ServiceMsgDispatcher;)V

    sput-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    .line 963
    sput-object v1, Lcom/waze/AppService;->mActiveActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 964
    sput-object v1, Lcom/waze/AppService;->mPrevActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 965
    sput-object v1, Lcom/waze/AppService;->activeMapViewWrapper:Lcom/waze/MapViewWrapper;

    .line 974
    sput-object v1, Lcom/waze/AppService;->mNativeManager:Lcom/waze/NativeManager;

    .line 976
    sput-object v1, Lcom/waze/AppService;->mConnEventReceiver:Lcom/waze/ConnEventReceiver;

    .line 978
    sput-object v1, Lcom/waze/AppService;->mUrl:Ljava/lang/String;

    .line 980
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/AppService;->mFirstRun:Z

    .line 982
    sput-object v1, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    .line 995
    sput-object v1, Lcom/waze/AppService;->mLogCatMonitor:Lcom/waze/Logger$LogCatMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 906
    new-instance v0, Lcom/waze/AppService$1;

    invoke-direct {v0, p0, p0}, Lcom/waze/AppService$1;-><init>(Lcom/waze/AppService;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/waze/AppService;->mOnStartApp:Lcom/waze/ifs/async/RunnableExecutor;

    .line 991
    new-instance v0, Lcom/facebook/android/Facebook;

    const-string v1, "343050668156"

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/AppService;->mFacebook:Lcom/facebook/android/Facebook;

    .line 53
    return-void
.end method

.method private static ClearNotification()V
    .locals 3

    .prologue
    .line 887
    const-string v1, "notification"

    .line 888
    .local v1, ns:Ljava/lang/String;
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 889
    .local v0, mNotificationManager:Landroid/app/NotificationManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 890
    return-void
.end method

.method public static IsAppRunning()Z
    .locals 1

    .prologue
    .line 599
    invoke-static {}, Lcom/waze/AppService;->IsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/AppService;->mNativeManager:Lcom/waze/NativeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsInitialized()Z
    .locals 1

    .prologue
    .line 592
    sget-object v0, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsMainViewReady()Z
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lcom/waze/AppService;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MapViewWrapper;->getMapView()Lcom/waze/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MapView;->IsReady()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 262
    .local v0, res:Z
    :goto_0
    return v0

    .line 261
    .end local v0           #res:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static OpenBrowser(Ljava/lang/String;)V
    .locals 1
    .parameter "aUrl"

    .prologue
    .line 393
    new-instance v0, Lcom/waze/AppService$2;

    invoke-direct {v0, p0}, Lcom/waze/AppService$2;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, browserEvent:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method public static OpenBrowserForUpgrade()V
    .locals 2

    .prologue
    .line 386
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/waze/AppService$ServiceMsgDispatcher;->sendEmptyMessage(I)Z

    .line 387
    return-void
.end method

.method private static OpenBrowserForUpgradeHandler()V
    .locals 3

    .prologue
    .line 741
    sget-object v2, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    if-nez v2, :cond_0

    .line 749
    .local v0, browserIntent:Landroid/content/Intent;
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 744
    .end local v0           #browserIntent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .restart local v0       #browserIntent:Landroid/content/Intent;
    const-string v2, "m.waze.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 746
    .restart local v1       #uri:Landroid/net/Uri;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 747
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 748
    sget-object v2, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    invoke-virtual {v2, v0}, Lcom/waze/AppService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static Post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "aEvent"

    .prologue
    .line 422
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    invoke-virtual {v0, p0}, Lcom/waze/AppService$ServiceMsgDispatcher;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method public static Post(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "aEvent"
    .parameter "delayMillis"

    .prologue
    .line 432
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/AppService$ServiceMsgDispatcher;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 433
    return-void
.end method

.method public static Remove(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "aEvent"

    .prologue
    .line 441
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    invoke-virtual {v0, p0}, Lcom/waze/AppService$ServiceMsgDispatcher;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method

.method public static RestartApplication()V
    .locals 2

    .prologue
    .line 377
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/waze/AppService$ServiceMsgDispatcher;->sendEmptyMessage(I)Z

    .line 378
    return-void
.end method

.method private static RestartApplicationHandler()V
    .locals 1

    .prologue
    .line 732
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/IntentManager;->RequestRestart(Landroid/content/Context;)V

    .line 733
    sget-object v0, Lcom/waze/AppService;->mNativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->ShutDown()V

    .line 734
    return-void
.end method

.method private static SetNotification()Landroid/app/Notification;
    .locals 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 806
    const v9, 0x7f020288

    .line 808
    .local v9, icon:I
    const-string v14, "Waze"

    .line 809
    .local v14, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 810
    .local v15, when:J
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v8

    .line 811
    .local v8, context:Landroid/content/Context;
    const-string v7, "Waze"

    .line 812
    .local v7, contentTitle:Ljava/lang/CharSequence;
    const-string v6, "Running. Tap to open."

    .line 831
    .local v6, contentText:Ljava/lang/CharSequence;
    invoke-static {v8}, Lcom/waze/CloseIntent;->Register(Landroid/content/Context;)V

    .line 833
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 836
    new-instance v12, Landroid/content/Intent;

    const-class v17, Lcom/waze/FreeMapAppActivity;

    move-object/from16 v0, v17

    invoke-direct {v12, v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 837
    .local v12, notificationIntent:Landroid/content/Intent;
    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const/16 v17, 0x0

    const/high16 v18, 0x1000

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v12, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 841
    .local v5, contentIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-class v17, Lcom/waze/CloseIntent;

    move-object/from16 v0, v17

    invoke-direct {v2, v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 842
    .local v2, ButtonIntent:Landroid/content/Intent;
    const/16 v17, 0x1

    const/high16 v18, 0x1000

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 844
    .local v3, ButtonIntent2:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 845
    .local v4, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 846
    const v17, 0x7f020288

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 847
    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 848
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 849
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 850
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 851
    const v17, 0x7f0203d6

    const-string v18, "Switch off"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 853
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 854
    .local v11, notification:Landroid/app/Notification;
    iget v0, v11, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x22

    move/from16 v0, v17

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v11, Landroid/app/Notification;->when:J

    .line 858
    const-string v13, "notification"

    .line 859
    .local v13, ns:Ljava/lang/String;
    invoke-virtual {v8, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 860
    .local v10, mNotificationManager:Landroid/app/NotificationManager;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 878
    .end local v2           #ButtonIntent:Landroid/content/Intent;
    .end local v3           #ButtonIntent2:Landroid/app/PendingIntent;
    .end local v4           #builder:Landroid/app/Notification$Builder;
    :goto_0
    return-object v11

    .line 865
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v10           #mNotificationManager:Landroid/app/NotificationManager;
    .end local v11           #notification:Landroid/app/Notification;
    .end local v12           #notificationIntent:Landroid/content/Intent;
    .end local v13           #ns:Ljava/lang/String;
    :cond_0
    new-instance v12, Landroid/content/Intent;

    const-class v17, Lcom/waze/FreeMapAppActivity;

    move-object/from16 v0, v17

    invoke-direct {v12, v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 866
    .restart local v12       #notificationIntent:Landroid/content/Intent;
    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    const/16 v17, 0x0

    const/high16 v18, 0x1000

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v12, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 870
    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    new-instance v11, Landroid/app/Notification;

    move-wide v0, v15

    invoke-direct {v11, v9, v14, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 871
    .restart local v11       #notification:Landroid/app/Notification;
    invoke-virtual {v11, v8, v7, v6, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 873
    iget v0, v11, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x22

    move/from16 v0, v17

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 875
    const-string v13, "notification"

    .line 876
    .restart local v13       #ns:Ljava/lang/String;
    invoke-virtual {v8, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 877
    .restart local v10       #mNotificationManager:Landroid/app/NotificationManager;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private static ShowCameraPreviewHandler()V
    .locals 0

    .prologue
    .line 799
    return-void
.end method

.method public static ShowCameraPreviewWindow()V
    .locals 2

    .prologue
    .line 495
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/waze/AppService$ServiceMsgDispatcher;->sendEmptyMessage(I)Z

    .line 496
    return-void
.end method

.method public static ShowContacts()V
    .locals 2

    .prologue
    .line 465
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/waze/AppService$ServiceMsgDispatcher;->sendEmptyMessage(I)Z

    .line 466
    return-void
.end method

.method private static ShowContactsHandler()V
    .locals 2

    .prologue
    .line 720
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    .local v0, contactsIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 722
    const-string v1, "content://contacts/people/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 723
    sget-object v1, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    invoke-virtual {v1, v0}, Lcom/waze/AppService;->startActivity(Landroid/content/Intent;)V

    .line 724
    return-void
.end method

.method private static ShowDialerHandler()V
    .locals 2

    .prologue
    .line 782
    sget-object v1, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    if-nez v1, :cond_0

    .line 787
    .local v0, dialIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 784
    .end local v0           #dialIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    .restart local v0       #dialIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 786
    sget-object v1, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    invoke-virtual {v1, v0}, Lcom/waze/AppService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static ShowDilerWindow(J)V
    .locals 2
    .parameter "aDelay"

    .prologue
    .line 480
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/waze/AppService$ServiceMsgDispatcher;->sendEmptyMessage(I)Z

    .line 481
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 483
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/waze/AppService$ServiceMsgDispatcher;->sendEmptyMessageDelayed(IJ)Z

    .line 485
    :cond_0
    return-void
.end method

.method private static ShowHomeHandler()V
    .locals 2

    .prologue
    .line 768
    sget-object v1, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    if-nez v1, :cond_0

    .line 775
    .local v0, homeIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 771
    .end local v0           #homeIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .restart local v0       #homeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 774
    sget-object v1, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    invoke-virtual {v1, v0}, Lcom/waze/AppService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static ShowHomeWindow(J)V
    .locals 2
    .parameter "aDelay"

    .prologue
    .line 452
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/AppService$ServiceMsgDispatcher;->sendEmptyMessage(I)Z

    .line 453
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 455
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/waze/AppService$ServiceMsgDispatcher;->sendEmptyMessageDelayed(IJ)Z

    .line 457
    :cond_0
    return-void
.end method

.method private static ShowMainActivityHandler()V
    .locals 3

    .prologue
    .line 755
    sget-object v1, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    if-nez v1, :cond_0

    .line 761
    .local v0, mainActivityIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 758
    .end local v0           #mainActivityIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waze/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 759
    .restart local v0       #mainActivityIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 760
    sget-object v1, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    invoke-virtual {v1, v0}, Lcom/waze/AppService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static ShowMainActivityWindow(J)V
    .locals 2
    .parameter "aDelay"

    .prologue
    .line 367
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/waze/AppService$ServiceMsgDispatcher;->sendEmptyMessageDelayed(IJ)Z

    .line 368
    return-void
.end method

.method public static ShutDown()V
    .locals 2

    .prologue
    .line 618
    sget-object v1, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    if-nez v1, :cond_0

    .line 639
    .local v0, ctx:Landroid/content/Context;
    :goto_0
    return-void

    .line 621
    .end local v0           #ctx:Landroid/content/Context;
    :cond_0
    invoke-static {}, Lcom/waze/pioneer/PioneerManager;->stop()V

    .line 623
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 625
    .restart local v0       #ctx:Landroid/content/Context;
    if-eqz v0, :cond_2

    .line 627
    sget-object v1, Lcom/waze/AppService;->mConnEventReceiver:Lcom/waze/ConnEventReceiver;

    if-eqz v1, :cond_1

    .line 628
    sget-object v1, Lcom/waze/AppService;->mConnEventReceiver:Lcom/waze/ConnEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 629
    :cond_1
    sget-object v1, Lcom/waze/AppService;->mPowerManager:Lcom/waze/PowerManager;

    if-eqz v1, :cond_2

    .line 630
    sget-object v1, Lcom/waze/AppService;->mPowerManager:Lcom/waze/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 633
    :cond_2
    sget-object v1, Lcom/waze/AppService;->mLogCatMonitor:Lcom/waze/Logger$LogCatMonitor;

    if-eqz v1, :cond_3

    .line 634
    sget-object v1, Lcom/waze/AppService;->mLogCatMonitor:Lcom/waze/Logger$LogCatMonitor;

    invoke-virtual {v1}, Lcom/waze/Logger$LogCatMonitor;->Destroy()V

    .line 636
    :cond_3
    invoke-static {}, Lcom/waze/AppService;->ClearNotification()V

    .line 638
    sget-object v1, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    invoke-virtual {v1}, Lcom/waze/AppService;->stopSelf()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/waze/ConnEventReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 976
    sput-object p0, Lcom/waze/AppService;->mConnEventReceiver:Lcom/waze/ConnEventReceiver;

    return-void
.end method

.method static synthetic access$1()Lcom/waze/ConnEventReceiver;
    .locals 1

    .prologue
    .line 976
    sget-object v0, Lcom/waze/AppService;->mConnEventReceiver:Lcom/waze/ConnEventReceiver;

    return-object v0
.end method

.method static synthetic access$10()Lcom/waze/AppService;
    .locals 1

    .prologue
    .line 982
    sget-object v0, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    return-object v0
.end method

.method static synthetic access$11()Lcom/waze/MainActivity;
    .locals 1

    .prologue
    .line 968
    sget-object v0, Lcom/waze/AppService;->mMainActivity:Lcom/waze/MainActivity;

    return-object v0
.end method

.method static synthetic access$2()Lcom/waze/AppService$ServiceMsgDispatcher;
    .locals 1

    .prologue
    .line 958
    sget-object v0, Lcom/waze/AppService;->mServiceMsgDispatcher:Lcom/waze/AppService$ServiceMsgDispatcher;

    return-object v0
.end method

.method static synthetic access$3()V
    .locals 0

    .prologue
    .line 753
    invoke-static {}, Lcom/waze/AppService;->ShowMainActivityHandler()V

    return-void
.end method

.method static synthetic access$4()V
    .locals 0

    .prologue
    .line 766
    invoke-static {}, Lcom/waze/AppService;->ShowHomeHandler()V

    return-void
.end method

.method static synthetic access$5()V
    .locals 0

    .prologue
    .line 780
    invoke-static {}, Lcom/waze/AppService;->ShowDialerHandler()V

    return-void
.end method

.method static synthetic access$6()V
    .locals 0

    .prologue
    .line 792
    invoke-static {}, Lcom/waze/AppService;->ShowCameraPreviewHandler()V

    return-void
.end method

.method static synthetic access$7()V
    .locals 0

    .prologue
    .line 739
    invoke-static {}, Lcom/waze/AppService;->OpenBrowserForUpgradeHandler()V

    return-void
.end method

.method static synthetic access$8()V
    .locals 0

    .prologue
    .line 730
    invoke-static {}, Lcom/waze/AppService;->RestartApplicationHandler()V

    return-void
.end method

.method static synthetic access$9()V
    .locals 0

    .prologue
    .line 718
    invoke-static {}, Lcom/waze/AppService;->ShowContactsHandler()V

    return-void
.end method

.method public static getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;
    .locals 1

    .prologue
    .line 568
    sget-object v0, Lcom/waze/AppService;->mActiveActivity:Lcom/waze/ifs/ui/ActivityBase;

    return-object v0
.end method

.method public static getActiveMapViewWrapper()Lcom/waze/MapViewWrapper;
    .locals 1

    .prologue
    .line 1001
    sget-object v0, Lcom/waze/AppService;->activeMapViewWrapper:Lcom/waze/MapViewWrapper;

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    if-eqz v0, :cond_0

    .line 287
    sget-object v0, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    invoke-virtual {v0}, Lcom/waze/AppService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    .line 289
    :cond_0
    sget-object v0, Lcom/waze/AppService;->mMainActivity:Lcom/waze/MainActivity;

    if-eqz v0, :cond_1

    .line 290
    sget-object v0, Lcom/waze/AppService;->mMainActivity:Lcom/waze/MainActivity;

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAppResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    invoke-virtual {v0}, Lcom/waze/AppService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplay()Landroid/view/Display;
    .locals 4

    .prologue
    .line 314
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 315
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 316
    .local v0, display:Landroid/view/Display;
    return-object v0
.end method

.method public static getInstance()Lcom/waze/AppService;
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    return-object v0
.end method

.method public static getMainActivity()Lcom/waze/MainActivity;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/waze/AppService;->mMainActivity:Lcom/waze/MainActivity;

    return-object v0
.end method

.method public static getMainView()Lcom/waze/MapViewWrapper;
    .locals 2

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, mainView:Lcom/waze/MapViewWrapper;
    sget-object v1, Lcom/waze/AppService;->mMainActivity:Lcom/waze/MainActivity;

    if-eqz v1, :cond_0

    .line 275
    sget-object v1, Lcom/waze/AppService;->mMainActivity:Lcom/waze/MainActivity;

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v0

    .line 276
    :cond_0
    return-object v0
.end method

.method public static getNativeManager()Lcom/waze/NativeManager;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/waze/AppService;->mNativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method public static getPowerManager()Lcom/waze/PowerManager;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/waze/AppService;->mPowerManager:Lcom/waze/PowerManager;

    return-object v0
.end method

.method public static getPrevActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 575
    sget-object v0, Lcom/waze/AppService;->mPrevActivity:Lcom/waze/ifs/ui/ActivityBase;

    return-object v0
.end method

.method public static getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/waze/AppService;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static isFirstRun()Z
    .locals 1

    .prologue
    .line 324
    sget-boolean v0, Lcom/waze/AppService;->mFirstRun:Z

    return v0
.end method

.method public static isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 650
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 651
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 652
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setActiveActivity(Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 3
    .parameter "aActivity"

    .prologue
    .line 555
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Previous active activity: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/waze/AppService;->mActiveActivity:Lcom/waze/ifs/ui/ActivityBase;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-object v0, Lcom/waze/AppService;->mActiveActivity:Lcom/waze/ifs/ui/ActivityBase;

    if-eqz v0, :cond_0

    .line 557
    sget-object v0, Lcom/waze/AppService;->mActiveActivity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->removeDialogs()V

    .line 559
    :cond_0
    sget-object v0, Lcom/waze/AppService;->mActiveActivity:Lcom/waze/ifs/ui/ActivityBase;

    sput-object v0, Lcom/waze/AppService;->mPrevActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 560
    sput-object p0, Lcom/waze/AppService;->mActiveActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 561
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current active activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/waze/AppService;->mActiveActivity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void

    .line 555
    :cond_1
    sget-object v0, Lcom/waze/AppService;->mActiveActivity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setActiveMapViewWrapper(Lcom/waze/MapViewWrapper;)V
    .locals 0
    .parameter "mapViewWrapper"

    .prologue
    .line 998
    sput-object p0, Lcom/waze/AppService;->activeMapViewWrapper:Lcom/waze/MapViewWrapper;

    .line 999
    return-void
.end method

.method public static setFirstRun()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/AppService;->mFirstRun:Z

    .line 335
    return-void
.end method

.method public static setMainActivity(Lcom/waze/MainActivity;)V
    .locals 0
    .parameter "aActivity"

    .prologue
    .line 524
    sput-object p0, Lcom/waze/AppService;->mMainActivity:Lcom/waze/MainActivity;

    .line 525
    return-void
.end method

.method public static setMainLayout()V
    .locals 2

    .prologue
    .line 502
    new-instance v0, Lcom/waze/AppService$3;

    invoke-direct {v0}, Lcom/waze/AppService$3;-><init>()V

    .line 508
    .local v0, event:Ljava/lang/Runnable;
    sget-object v1, Lcom/waze/AppService;->mMainActivity:Lcom/waze/MainActivity;

    invoke-virtual {v1, v0}, Lcom/waze/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 509
    return-void
.end method

.method public static setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "aUrl"

    .prologue
    .line 355
    sput-object p0, Lcom/waze/AppService;->mUrl:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public static showActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 531
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/waze/AppService;->showActivity(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 532
    return-void
.end method

.method public static showActivity(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 538
    if-nez p0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    if-nez p1, :cond_2

    .line 543
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object p1

    .line 545
    :cond_2
    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static start(Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 173
    invoke-static {}, Lcom/waze/AppService;->IsInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sput-object v1, Lcom/waze/AppService;->mNativeManager:Lcom/waze/NativeManager;

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/AppService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/ActivityBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private startLogCatMonitor()V
    .locals 0

    .prologue
    .line 903
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 228
    invoke-static {p1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 62
    sget-object v2, Lcom/waze/WazeApplication;->startSW:Lcom/waze/utils/Stopwatch;

    const-string v3, "Service onCreate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 65
    sget-object v2, Lcom/waze/AppService;->mMainActivity:Lcom/waze/MainActivity;

    if-nez v2, :cond_1

    .line 66
    const-string v2, "WAZE_Service"

    const-string v3, "AppService.onCreate main activity is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/waze/AppService;->stopSelf()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sput-object p0, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    .line 73
    sget-object v2, Lcom/waze/AppService;->mCurrentNotification:Landroid/app/Notification;

    if-eqz v2, :cond_2

    .line 75
    const-string v2, "WAZE_Service"

    const-string v3, "Setting the service to be foreground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sput-object v6, Lcom/waze/AppService;->mCurrentNotification:Landroid/app/Notification;

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/waze/AppService;->startForeground()V

    .line 83
    invoke-static {}, Lcom/waze/NativeManager;->CheckSDCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/PowerManager;->Create(Landroid/content/Context;)Lcom/waze/PowerManager;

    move-result-object v2

    sput-object v2, Lcom/waze/AppService;->mPowerManager:Lcom/waze/PowerManager;

    .line 88
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/waze/AppService;->mPowerManager:Lcom/waze/PowerManager;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    invoke-static {}, Lcom/waze/pioneer/PioneerManager;->create()Lcom/waze/pioneer/PioneerManager;

    .line 93
    invoke-static {}, Lcom/waze/NativeManager;->onServiceCreated()Z

    .line 99
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/StandbyManager;->start(Landroid/content/Context;)Lcom/waze/StandbyManager;

    move-result-object v2

    sput-object v2, Lcom/waze/AppService;->mStandbyManager:Lcom/waze/StandbyManager;

    .line 102
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    iget-object v2, p0, Lcom/waze/AppService;->mOnStartApp:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v2}, Lcom/waze/ifs/async/RunnableExecutor;->event()V

    .line 108
    :goto_1
    invoke-direct {p0}, Lcom/waze/AppService;->startLogCatMonitor()V

    .line 109
    const-string v2, "WAZE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Service Created. Instance: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Lcom/waze/AppService$EndCallListener;

    invoke-direct {v0, p0, v6}, Lcom/waze/AppService$EndCallListener;-><init>(Lcom/waze/AppService;Lcom/waze/AppService$EndCallListener;)V

    .line 112
    .local v0, callListener:Lcom/waze/AppService$EndCallListener;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/waze/AppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 113
    .local v1, mTM:Landroid/telephony/TelephonyManager;
    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 105
    .end local v0           #callListener:Lcom/waze/AppService$EndCallListener;
    .end local v1           #mTM:Landroid/telephony/TelephonyManager;
    :cond_3
    iget-object v2, p0, Lcom/waze/AppService;->mOnStartApp:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-static {v2}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 148
    sget-object v0, Lcom/waze/AppService;->mStandbyManager:Lcom/waze/StandbyManager;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/waze/AppService;->mStandbyManager:Lcom/waze/StandbyManager;

    invoke-virtual {v0}, Lcom/waze/StandbyManager;->stop()V

    .line 153
    :cond_0
    sget-object v0, Lcom/waze/AppService;->mNativeManager:Lcom/waze/NativeManager;

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/waze/AppService;->mNativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->RestoreSystemSettings()V

    .line 158
    :cond_1
    const-string v0, "WAZE_Service"

    const-string v1, "Service destroy."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Lcom/waze/ifs/ui/ShutdownManager;->onServiceDestroy()V

    .line 162
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 608
    const-string v0, "Waze Service"

    const-string v1, "Low memory warning!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    sget-object v0, Lcom/waze/AppService;->mNativeManager:Lcom/waze/NativeManager;

    if-eqz v0, :cond_0

    .line 610
    sget-object v0, Lcom/waze/AppService;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_LOW_MEMORY:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->PostUIMessage(Lcom/waze/NativeManager$UIEvent;)V

    .line 611
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 137
    const-string v0, "WAZE_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start service is called "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/waze/AppService;->mInstance:Lcom/waze/AppService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x2

    return v0
.end method

.method public startForeground()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 117
    sget-object v0, Lcom/waze/AppService;->mCurrentNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/waze/AppService;->mCurrentNotification:Landroid/app/Notification;

    invoke-virtual {p0, v1, v0}, Lcom/waze/AppService;->startForeground(ILandroid/app/Notification;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->SetNotification()Landroid/app/Notification;

    move-result-object v0

    sput-object v0, Lcom/waze/AppService;->mCurrentNotification:Landroid/app/Notification;

    .line 124
    sget-object v0, Lcom/waze/AppService;->mCurrentNotification:Landroid/app/Notification;

    invoke-virtual {p0, v1, v0}, Lcom/waze/AppService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public stopForeground()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/AppService;->mCurrentNotification:Landroid/app/Notification;

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/AppService;->stopForeground(Z)V

    .line 132
    return-void
.end method
