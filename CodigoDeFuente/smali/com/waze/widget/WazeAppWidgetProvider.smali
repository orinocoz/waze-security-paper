.class public Lcom/waze/widget/WazeAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WazeAppWidgetProvider.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$waze$widget$routing$RouteScoreType:[I

.field public static _CONTEXT:Landroid/content/Context;

.field private static mIsEnabled:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$waze$widget$routing$RouteScoreType()[I
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/waze/widget/WazeAppWidgetProvider;->$SWITCH_TABLE$com$waze$widget$routing$RouteScoreType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/waze/widget/routing/RouteScoreType;->values()[Lcom/waze/widget/routing/RouteScoreType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/waze/widget/routing/RouteScoreType;->NONE:Lcom/waze/widget/routing/RouteScoreType;

    invoke-virtual {v1}, Lcom/waze/widget/routing/RouteScoreType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/waze/widget/routing/RouteScoreType;->ROUTE_BAD:Lcom/waze/widget/routing/RouteScoreType;

    invoke-virtual {v1}, Lcom/waze/widget/routing/RouteScoreType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/waze/widget/routing/RouteScoreType;->ROUTE_GOOD:Lcom/waze/widget/routing/RouteScoreType;

    invoke-virtual {v1}, Lcom/waze/widget/routing/RouteScoreType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/waze/widget/routing/RouteScoreType;->ROUTE_OK:Lcom/waze/widget/routing/RouteScoreType;

    invoke-virtual {v1}, Lcom/waze/widget/routing/RouteScoreType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/waze/widget/WazeAppWidgetProvider;->$SWITCH_TABLE$com$waze$widget$routing$RouteScoreType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/widget/WazeAppWidgetProvider;->_CONTEXT:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static formatDestination(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "aContext"
    .parameter "aDestDesc"

    .prologue
    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in:"

    invoke-static {v2}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, destFmtString:Ljava/lang/String;
    return-object v0
.end method

.method private static formatTime(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 22
    .parameter "aContext"
    .parameter "aTimeToDest"

    .prologue
    .line 429
    div-int/lit8 v3, p1, 0x3c

    .line 430
    .local v3, hours:I
    mul-int/lit8 v20, v3, 0x3c

    sub-int v8, p1, v20

    .line 431
    .local v8, mins:I
    const-string v5, ""

    .line 432
    .local v5, hoursString:Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, spanStart:I
    const/4 v15, 0x0

    .line 433
    .local v15, spanEnd:I
    const/4 v7, 0x0

    .line 434
    .local v7, hoursValue:Ljava/lang/String;
    const-string v6, "h."

    .line 435
    .local v6, hoursUnit:Ljava/lang/String;
    const-string v4, " "

    .line 436
    .local v4, hoursSep:Ljava/lang/String;
    const-string v13, "   "

    .line 438
    .local v13, sepString:Ljava/lang/String;
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 443
    .local v14, spanBuilder:Landroid/text/SpannableStringBuilder;
    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 444
    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 445
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 450
    :cond_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 451
    .local v12, minsValue:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 452
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 454
    :cond_2
    const-string v11, "min."

    .line 455
    .local v11, minsUnit:Ljava/lang/String;
    const-string v9, " "

    .line 456
    .local v9, minsSep:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 459
    .local v10, minsString:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 460
    .local v19, strFinal:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 465
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_3

    .line 466
    new-instance v18, Landroid/text/style/TextAppearanceSpan;

    .line 467
    const v20, 0x7f060009

    .line 466
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 468
    .local v18, spanValues:Landroid/text/style/TextAppearanceSpan;
    new-instance v17, Landroid/text/style/TextAppearanceSpan;

    .line 469
    const v20, 0x7f06000a

    .line 468
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 471
    .local v17, spanUnits:Landroid/text/style/TextAppearanceSpan;
    const/16 v16, 0x0

    .line 473
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    .line 474
    const/16 v20, 0x11

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v14, v0, v1, v15, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 477
    move/from16 v16, v15

    .line 478
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    .line 480
    const/16 v20, 0x21

    .line 479
    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v14, v0, v1, v15, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 483
    .end local v17           #spanUnits:Landroid/text/style/TextAppearanceSpan;
    .end local v18           #spanValues:Landroid/text/style/TextAppearanceSpan;
    :cond_3
    new-instance v18, Landroid/text/style/TextAppearanceSpan;

    .line 484
    const v20, 0x7f060009

    .line 483
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 485
    .restart local v18       #spanValues:Landroid/text/style/TextAppearanceSpan;
    new-instance v17, Landroid/text/style/TextAppearanceSpan;

    .line 486
    const v20, 0x7f06000a

    .line 485
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 487
    .restart local v17       #spanUnits:Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    .line 489
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    add-int v15, v16, v20

    .line 491
    const/16 v20, 0x21

    .line 490
    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v14, v0, v1, v15, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 493
    move/from16 v16, v15

    .line 494
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v16

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    add-int v15, v20, v21

    .line 500
    const/16 v20, 0x21

    .line 499
    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v14, v0, v1, v15, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 502
    return-object v14
.end method

.method public static getControlIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "aContext"
    .parameter "aAppWidgetId"
    .parameter "aCommand"

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/waze/widget/WazeAppWidgetService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, commandIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WazeAppWidget://widget/id/#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 148
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 148
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    const/4 v3, 0x0

    .line 151
    const/high16 v4, 0x800

    .line 150
    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 152
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    return-object v2
.end method

.method public static getControlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "aContext"
    .parameter "aCommand"

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/waze/widget/WazeAppWidgetService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, commandIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const/4 v2, 0x0

    .line 172
    const/high16 v3, 0x800

    .line 171
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 173
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method public static isWidgetEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "aContext"

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, manager:Landroid/appwidget/AppWidgetManager;
    const/4 v1, 0x0

    .line 565
    .local v1, widgetComponent:Landroid/content/ComponentName;
    sget-boolean v2, Lcom/waze/widget/WazeAppWidgetProvider;->mIsEnabled:Z

    if-nez v2, :cond_2

    .line 566
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 567
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #widgetComponent:Landroid/content/ComponentName;
    const-class v2, Lcom/waze/widget/WazeAppWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .restart local v1       #widgetComponent:Landroid/content/ComponentName;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 570
    :cond_1
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/waze/widget/WazeAppWidgetProvider;->mIsEnabled:Z

    .line 572
    :cond_2
    sget-boolean v2, Lcom/waze/widget/WazeAppWidgetProvider;->mIsEnabled:Z

    return v2

    .line 570
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static setActionIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 2
    .parameter "aContext"
    .parameter "aViews"
    .parameter "aAction"

    .prologue
    .line 546
    .line 545
    invoke-static {p0, p2}, Lcom/waze/widget/WazeAppWidgetProvider;->getControlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 547
    .local v0, intentCmd:Landroid/app/PendingIntent;
    const v1, 0x7f0901a5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 548
    return-void
.end method

.method private static setAlarm(Landroid/content/Context;Z)V
    .locals 7
    .parameter "aContext"
    .parameter "aCancel"

    .prologue
    .line 108
    .line 109
    const-string v1, "AppWidget Action Command Refresh Test"

    .line 108
    invoke-static {p0, v1}, Lcom/waze/widget/WazeAppWidgetProvider;->getControlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 111
    .local v6, refreshTestIntent:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    check-cast v0, Landroid/app/AlarmManager;

    .line 112
    .local v0, alarms:Landroid/app/AlarmManager;
    if-eqz p1, :cond_0

    .line 113
    const-string v1, "Disable Alarm"

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting Alarm for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->AllowRefreshTimer()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 120
    const/4 v1, 0x3

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 122
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->AllowRefreshTimer()J

    move-result-wide v4

    .line 120
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setIsWidgetEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 576
    sput-boolean p0, Lcom/waze/widget/WazeAppWidgetProvider;->mIsEnabled:Z

    .line 577
    return-void
.end method

.method public static setNeedRefreshState(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 7
    .parameter "aContext"
    .parameter "aDestDesc"
    .parameter "aTimeToDest"
    .parameter "OldData"

    .prologue
    const v6, 0x7f0901a7

    const v5, 0x7f0901a0

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setNeedRefreshState isOld="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 183
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 184
    const v4, 0x7f03001c

    .line 183
    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 186
    .local v2, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 187
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 196
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f0901a1

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 198
    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    if-eqz p3, :cond_0

    .line 203
    const v3, 0x7f02045f

    .line 202
    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 212
    :cond_0
    const v3, 0x7f080022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 211
    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 214
    const-string v3, "Refresh"

    invoke-static {v3}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 215
    const v3, 0x7f0901a6

    .line 216
    const v4, 0x7f020458

    .line 215
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 219
    const v3, 0x7f0901a3

    .line 220
    invoke-static {p0, p1}, Lcom/waze/widget/WazeAppWidgetProvider;->formatDestination(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 219
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 221
    const v3, 0x7f0901a4

    .line 222
    invoke-static {p0, p2}, Lcom/waze/widget/WazeAppWidgetProvider;->formatTime(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 221
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 225
    const-string v3, "AppWidget Action Command Refresh"

    .line 224
    invoke-static {p0, v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setRootIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 227
    const-string v3, "AppWidget Action Command Refresh"

    .line 226
    invoke-static {p0, v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setActionIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 228
    if-eqz p3, :cond_1

    .line 230
    const-string v3, "AppWidget Action Command Refresh"

    .line 229
    invoke-static {p0, v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setStatusIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 235
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    .line 236
    const-class v4, Lcom/waze/widget/WazeAppWidgetProvider;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    invoke-virtual {v0, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 238
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setAlarm(Landroid/content/Context;Z)V

    .line 239
    return-void

    .line 233
    :cond_1
    const-string v3, "AppWidget Action Command Graph"

    .line 232
    invoke-static {p0, v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setStatusIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setNoDataState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "aContext"
    .parameter "aDestDesc"

    .prologue
    const v7, 0x7f0901a7

    const v6, 0x7f0901a0

    const/4 v5, 0x0

    .line 363
    const-string v3, "setNoDataState"

    invoke-static {v3}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 364
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 365
    const v4, 0x7f03001c

    .line 364
    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 367
    .local v2, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 368
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 376
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f0901a1

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 378
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 381
    const v3, 0x7f02045f

    .line 380
    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 393
    const v3, 0x7f080022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 392
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 395
    const-string v3, "Refresh"

    invoke-static {v3}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 396
    const v3, 0x7f0901a6

    .line 397
    const v4, 0x7f020458

    .line 396
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 400
    const v3, 0x7f0901a3

    const-string v4, "No Data"

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 401
    const v3, 0x7f0901a4

    invoke-static {p0, v5}, Lcom/waze/widget/WazeAppWidgetProvider;->formatTime(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 410
    const-string v3, "AppWidget Action Command Refresh Info"

    .line 409
    invoke-static {p0, v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setRootIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 412
    const-string v3, "AppWidget Action Command Refresh Info"

    .line 411
    invoke-static {p0, v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setStatusIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 415
    const-string v3, "AppWidget Action Command Refresh Info"

    .line 414
    invoke-static {p0, v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setActionIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 416
    invoke-static {p0, v5}, Lcom/waze/widget/WazeAppWidgetProvider;->setAlarm(Landroid/content/Context;Z)V

    .line 418
    new-instance v3, Landroid/content/ComponentName;

    .line 419
    const-class v4, Lcom/waze/widget/WazeAppWidgetProvider;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    invoke-virtual {v0, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 420
    return-void
.end method

.method public static setRefreshingState(Landroid/content/Context;)V
    .locals 8
    .parameter "aContext"

    .prologue
    const v7, 0x7f0901a7

    const v6, 0x7f0901a0

    const/4 v5, 0x0

    .line 245
    const-string v3, "setRefreshingState"

    invoke-static {v3}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 246
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 247
    const v4, 0x7f03001c

    .line 246
    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 249
    .local v2, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 250
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 258
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f0901a1

    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 260
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 262
    const v3, 0x7f020465

    .line 261
    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 269
    const v3, 0x7f080027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 268
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 270
    const v3, 0x7f0901a6

    .line 271
    const v4, 0x7f020454

    .line 270
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Drive"

    invoke-static {v4}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 276
    const v3, 0x7f0901a3

    .line 277
    const-string v4, "Please wait..."

    invoke-static {v4}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 278
    const v3, 0x7f0901a4

    invoke-static {p0, v5}, Lcom/waze/widget/WazeAppWidgetProvider;->formatTime(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 280
    invoke-static {p0, v5}, Lcom/waze/widget/WazeAppWidgetProvider;->setAlarm(Landroid/content/Context;Z)V

    .line 281
    new-instance v3, Landroid/content/ComponentName;

    .line 282
    const-class v4, Lcom/waze/widget/WazeAppWidgetProvider;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    invoke-virtual {v0, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 283
    return-void
.end method

.method private static setRootIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 2
    .parameter "aContext"
    .parameter "aViews"
    .parameter "aAction"

    .prologue
    .line 539
    .line 538
    invoke-static {p0, p2}, Lcom/waze/widget/WazeAppWidgetProvider;->getControlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 540
    .local v0, intentCmd:Landroid/app/PendingIntent;
    const v1, 0x7f09019e

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 541
    return-void
.end method

.method private static setStatusIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 2
    .parameter "aContext"
    .parameter "aViews"
    .parameter "aAction"

    .prologue
    .line 553
    .line 552
    invoke-static {p0, p2}, Lcom/waze/widget/WazeAppWidgetProvider;->getControlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 554
    .local v0, intentCmd:Landroid/app/PendingIntent;
    const v1, 0x7f09019f

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 555
    return-void
.end method

.method public static setUptodateState(Landroid/content/Context;Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;)V
    .locals 8
    .parameter "aContext"
    .parameter "aDestDesc"
    .parameter "aTimeToDest"
    .parameter "score"

    .prologue
    const v7, 0x7f0901a7

    const/4 v6, 0x0

    const v5, 0x7f0901a0

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setUptodateState "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/waze/widget/routing/RouteScoreType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 292
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 293
    const v4, 0x7f03001c

    .line 292
    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 295
    .local v2, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 296
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 304
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f0901a1

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 306
    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 307
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetProvider;->$SWITCH_TABLE$com$waze$widget$routing$RouteScoreType()[I

    move-result-object v3

    invoke-virtual {p3}, Lcom/waze/widget/routing/RouteScoreType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 329
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Drive"

    invoke-static {v4}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 336
    const v3, 0x7f080022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 335
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 337
    const v3, 0x7f0901a6

    .line 338
    const v4, 0x7f020455

    .line 337
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 341
    const v3, 0x7f0901a3

    .line 342
    invoke-static {p0, p1}, Lcom/waze/widget/WazeAppWidgetProvider;->formatDestination(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 341
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 343
    const v3, 0x7f0901a4

    .line 344
    invoke-static {p0, p2}, Lcom/waze/widget/WazeAppWidgetProvider;->formatTime(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 343
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 347
    const-string v3, "AppWidget Action Command None"

    .line 346
    invoke-static {p0, v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setRootIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 349
    const-string v3, "AppWidget Action Command Drive"

    .line 348
    invoke-static {p0, v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setActionIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 351
    const-string v3, "AppWidget Action Command Graph"

    .line 350
    invoke-static {p0, v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->setStatusIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 354
    invoke-static {p0, v6}, Lcom/waze/widget/WazeAppWidgetProvider;->setAlarm(Landroid/content/Context;Z)V

    .line 355
    new-instance v3, Landroid/content/ComponentName;

    .line 356
    const-class v4, Lcom/waze/widget/WazeAppWidgetProvider;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    invoke-virtual {v0, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 357
    return-void

    .line 311
    :pswitch_0
    const v3, 0x7f020462

    .line 310
    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 316
    :pswitch_1
    const v3, 0x7f02045e

    .line 315
    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 321
    :pswitch_2
    const v3, 0x7f020461

    .line 320
    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 326
    :pswitch_3
    const v3, 0x7f02045f

    .line 325
    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static updateCallbacks(Landroid/content/Context;)V
    .locals 4
    .parameter "aContext"

    .prologue
    .line 507
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 508
    const v3, 0x7f03001c

    .line 507
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 511
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 514
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const-string v2, "AppWidget Action Command Refresh"

    .line 513
    invoke-static {p0, v1, v2}, Lcom/waze/widget/WazeAppWidgetProvider;->setRootIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 517
    const-string v2, "AppWidget Action Command Drive"

    .line 516
    invoke-static {p0, v1, v2}, Lcom/waze/widget/WazeAppWidgetProvider;->setActionIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 520
    new-instance v2, Landroid/content/ComponentName;

    .line 521
    const-class v3, Lcom/waze/widget/WazeAppWidgetProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 522
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 88
    const-string v1, "ON DISABLE"

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/widget/WazeAppWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, updateIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 93
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/waze/widget/WazeAppWidgetProvider;->setAlarm(Landroid/content/Context;Z)V

    .line 94
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetProvider;->setIsWidgetEnabled(Z)V

    .line 95
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 3
    .parameter "aContext"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 75
    const-string v1, "ON ENABLE"

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 76
    const-string v1, "WIDGET_INSTALL"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/waze/utils/OfflineStats;->SendStats(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/widget/WazeAppWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, enableIntent:Landroid/content/Intent;
    const-string v1, "AppWidget Action Command Enable"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/waze/widget/WazeAppWidgetProvider;->setAlarm(Landroid/content/Context;Z)V

    .line 82
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetProvider;->setIsWidgetEnabled(Z)V

    .line 83
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .parameter "aContext"
    .parameter "aAppWidgetManager"
    .parameter "aAppWidgetIds"

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/widget/WazeAppWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "AppWidget Action Command Update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    return-void
.end method
