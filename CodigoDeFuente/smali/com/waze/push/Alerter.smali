.class public final Lcom/waze/push/Alerter;
.super Ljava/lang/Object;
.source "Alerter.java"


# static fields
.field private static final SIGNIFICANT_ACCURACY:I = 0xc8

.field private static final SIGNIFICANT_TIME:J = 0x493e0L

.field private static mInstance:Lcom/waze/push/Alerter;


# instance fields
.field private final mPickUpHandler:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/push/Alerter;->mInstance:Lcom/waze/push/Alerter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/waze/push/Alerter$1;

    invoke-direct {v0, p0}, Lcom/waze/push/Alerter$1;-><init>(Lcom/waze/push/Alerter;)V

    iput-object v0, p0, Lcom/waze/push/Alerter;->mPickUpHandler:Ljava/lang/Runnable;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/waze/push/Alerter;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/waze/push/Alerter;->showPickUpMessage()V

    return-void
.end method

.method public static instance()Lcom/waze/push/Alerter;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/waze/push/Alerter;->mInstance:Lcom/waze/push/Alerter;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/waze/push/Alerter;

    invoke-direct {v0}, Lcom/waze/push/Alerter;-><init>()V

    sput-object v0, Lcom/waze/push/Alerter;->mInstance:Lcom/waze/push/Alerter;

    .line 56
    :cond_0
    sget-object v0, Lcom/waze/push/Alerter;->mInstance:Lcom/waze/push/Alerter;

    return-object v0
.end method

.method private notify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "alert"
    .parameter "actionUrl"
    .parameter "InfoValue"

    .prologue
    .line 151
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    const v5, 0x7f02028c

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 154
    const-string v5, "Waze"

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 155
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02028b

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 157
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 158
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 160
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 161
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 163
    new-instance v5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v5, p2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 166
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/waze/FreeMapAppActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v2, notificationIntent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    if-eqz p3, :cond_1

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "waze://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    :cond_1
    const-string v5, "PushClicked"

    invoke-virtual {v2, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {p1, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 175
    .local v1, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 177
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 178
    .local v3, notificationManager:Landroid/app/NotificationManager;
    const-string v5, "Push Notifications"

    const/16 v6, 0x100

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 179
    return-void
.end method

.method protected static onAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "alert"
    .parameter "actionUrl"
    .parameter "alertType"

    .prologue
    .line 99
    const-string v3, "Push Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got new alert: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {}, Lcom/waze/push/Alerter;->instance()Lcom/waze/push/Alerter;

    move-result-object v0

    .line 104
    .local v0, alerter:Lcom/waze/push/Alerter;
    if-nez p3, :cond_2

    const-string v1, "NONE"

    .line 106
    .local v1, analyticsInfoValue:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    const-string v3, "Push Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Showing message for the alert: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/waze/Logger;->v_(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    if-eqz p2, :cond_0

    .line 115
    const-string v3, "?a=pickup"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/waze/push/Alerter;->notify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v3, v0, Lcom/waze/push/Alerter;->mPickUpHandler:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 122
    :goto_2
    const-string v3, "PUSH_MESSAGE_WHILE_RUNNING"

    const-string v4, "TYPE"

    invoke-static {v3, v4, v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #analyticsInfoValue:Ljava/lang/String;
    :cond_2
    move-object v1, p3

    .line 104
    goto :goto_1

    .line 120
    .restart local v1       #analyticsInfoValue:Ljava/lang/String;
    :cond_3
    invoke-direct {v0, p2, p1}, Lcom/waze/push/Alerter;->postAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :cond_4
    const-string v3, "OFFLINE_PUSH_RECEIVED"

    .line 127
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "VAUE"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 126
    invoke-static {p0, v3, v4}, Lcom/waze/utils/OfflineStats;->SendStats(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/waze/push/Alerter;->notify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v2, Lcom/waze/push/Alerter$2;

    invoke-direct {v2, v1}, Lcom/waze/push/Alerter$2;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, r:Lcom/waze/ifs/async/RunnableExecutor;
    invoke-static {v2}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    goto :goto_0
.end method

.method protected static onBadge(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "badge"

    .prologue
    .line 84
    return-void
.end method

.method private postAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "actionUrl"
    .parameter "alert"

    .prologue
    .line 221
    new-instance v0, Lcom/waze/push/Alerter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/push/Alerter$4;-><init>(Lcom/waze/push/Alerter;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method private showPickUpMessage()V
    .locals 9

    .prologue
    .line 183
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v8

    .line 184
    .local v8, nm:Lcom/waze/NativeManager;
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_POPUP_WHEN_RECEIVING_LOCATION_TITLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, title:Ljava/lang/String;
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_POPUP_WHEN_RECEIVING_LOCATION_BODY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, text:Ljava/lang/String;
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, textYes:Ljava/lang/String;
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_LATER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, textNo:Ljava/lang/String;
    new-instance v4, Lcom/waze/push/Alerter$3;

    invoke-direct {v4, p0}, Lcom/waze/push/Alerter$3;-><init>(Lcom/waze/push/Alerter;)V

    .line 214
    .local v4, listener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/waze/NativeManager;->SetPickUpLater(Z)V

    .line 215
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    return-void
.end method


# virtual methods
.method public clear(Landroid/app/NotificationManager;)V
    .locals 2
    .parameter "mgr"

    .prologue
    .line 70
    const-string v0, "Push Service"

    const-string v1, "Clearing current notifications"

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "Push Notifications"

    const/16 v1, 0x100

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public getBestLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 7
    .parameter "context"

    .prologue
    .line 239
    const-string v5, "location"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 240
    .local v2, locMgr:Landroid/location/LocationManager;
    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v4

    .line 241
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 243
    .local v0, bestLocation:Landroid/location/Location;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 249
    return-object v0

    .line 243
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, provider:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 245
    .local v1, loc:Landroid/location/Location;
    invoke-virtual {p0, v1, v0}, Lcom/waze/push/Alerter;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 246
    move-object v0, v1

    goto :goto_0
.end method

.method protected isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 13
    .parameter "location"
    .parameter "currentBestLocation"

    .prologue
    .line 259
    if-nez p2, :cond_0

    .line 261
    const/4 v9, 0x1

    .line 295
    :goto_0
    return v9

    .line 263
    :cond_0
    if-nez p1, :cond_1

    .line 265
    const/4 v9, 0x0

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    sub-long v7, v9, v11

    .line 270
    .local v7, timeDelta:J
    const-wide/32 v9, 0x493e0

    cmp-long v9, v7, v9

    if-lez v9, :cond_2

    const/4 v5, 0x1

    .line 271
    .local v5, isSignificantlyNewer:Z
    :goto_1
    const-wide/32 v9, -0x493e0

    cmp-long v9, v7, v9

    if-gez v9, :cond_3

    const/4 v6, 0x1

    .line 272
    .local v6, isSignificantlyOlder:Z
    :goto_2
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_4

    const/4 v3, 0x1

    .line 276
    .local v3, isNewer:Z
    :goto_3
    if-eqz v5, :cond_5

    .line 277
    const/4 v9, 0x1

    goto :goto_0

    .line 270
    .end local v3           #isNewer:Z
    .end local v5           #isSignificantlyNewer:Z
    .end local v6           #isSignificantlyOlder:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 271
    .restart local v5       #isSignificantlyNewer:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 272
    .restart local v6       #isSignificantlyOlder:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 279
    .restart local v3       #isNewer:Z
    :cond_5
    if-eqz v6, :cond_6

    .line 280
    const/4 v9, 0x0

    goto :goto_0

    .line 284
    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v0, v9

    .line 285
    .local v0, accuracyDelta:I
    if-lez v0, :cond_7

    const/4 v1, 0x1

    .line 286
    .local v1, isLessAccurate:Z
    :goto_4
    if-gez v0, :cond_8

    const/4 v2, 0x1

    .line 287
    .local v2, isMoreAccurate:Z
    :goto_5
    const/16 v9, 0xc8

    if-le v0, v9, :cond_9

    const/4 v4, 0x1

    .line 290
    .local v4, isSignificantlyLessAccurate:Z
    :goto_6
    if-eqz v2, :cond_a

    .line 291
    const/4 v9, 0x1

    goto :goto_0

    .line 285
    .end local v1           #isLessAccurate:Z
    .end local v2           #isMoreAccurate:Z
    .end local v4           #isSignificantlyLessAccurate:Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 286
    .restart local v1       #isLessAccurate:Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 287
    .restart local v2       #isMoreAccurate:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_6

    .line 292
    .restart local v4       #isSignificantlyLessAccurate:Z
    :cond_a
    if-eqz v3, :cond_b

    if-nez v4, :cond_b

    .line 293
    const/4 v9, 0x1

    goto :goto_0

    .line 295
    :cond_b
    const/4 v9, 0x0

    goto :goto_0
.end method
