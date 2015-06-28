.class public Lcom/waze/PushCommands;
.super Ljava/lang/Object;
.source "PushCommands.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreatePush(Landroid/content/Context;Lcom/waze/messages/QuestionData;)V
    .locals 16
    .parameter "context"
    .parameter "question"

    .prologue
    .line 32
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-lt v14, v15, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/messages/QuestionData;->ActionText1:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/messages/QuestionData;->ActionText1:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 33
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/messages/QuestionData;->ActionText2:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/messages/QuestionData;->ActionText2:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 36
    new-instance v11, Landroid/content/Intent;

    const-class v14, Lcom/waze/FreeMapAppActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v11, notificationIntent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/messages/QuestionData;->ActionText1:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 38
    .local v13, string:Landroid/net/Uri;
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    const/4 v14, 0x0

    const/high16 v15, 0x1000

    move-object/from16 v0, p0

    invoke-static {v0, v14, v11, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 41
    .local v6, contentIntent:Landroid/app/PendingIntent;
    new-instance v10, Landroid/content/Intent;

    const-class v14, Lcom/waze/ActionIntent;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v10, notificationButtonIntent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/messages/QuestionData;->ActionText1:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 43
    .local v5, buttonString:Landroid/net/Uri;
    const-string v14, "QuestionID"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/waze/messages/QuestionData;->QuestionID:Ljava/lang/String;

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v14, "QuestionType"

    const-string v15, "ALERT"

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v14, "Action"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/waze/messages/QuestionData;->ActionText1:Ljava/lang/String;

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {v10, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    const/4 v14, 0x1

    const/high16 v15, 0x1000

    move-object/from16 v0, p0

    invoke-static {v0, v14, v10, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 49
    .local v2, ButtonIntent:Landroid/app/PendingIntent;
    new-instance v9, Landroid/content/Intent;

    const-class v14, Lcom/waze/ActionIntent;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v9, notificationButton2Intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/messages/QuestionData;->ActionText2:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 51
    .local v4, button2String:Landroid/net/Uri;
    invoke-virtual {v9, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    const-string v14, "QuestionID"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/waze/messages/QuestionData;->QuestionID:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v14, "QuestionType"

    const-string v15, "ALERT"

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v14, "Action"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/waze/messages/QuestionData;->ActionText2:Ljava/lang/String;

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const/4 v14, 0x1

    const/high16 v15, 0x1000

    move-object/from16 v0, p0

    invoke-static {v0, v14, v9, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 58
    .local v1, Button2Intent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v3, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 60
    const v14, 0x7f020288

    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 61
    const-string v14, "Waze"

    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 62
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/messages/QuestionData;->Text:Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 63
    const/4 v14, 0x2

    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 64
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 65
    const/4 v14, 0x7

    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 66
    const v14, 0x7f02046c

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/waze/messages/QuestionData;->SubText2:Ljava/lang/String;

    invoke-virtual {v3, v14, v15, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 67
    const v14, 0x7f02042f

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/waze/messages/QuestionData;->SubText1:Ljava/lang/String;

    invoke-virtual {v3, v14, v15, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 69
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 70
    .local v8, notification:Landroid/app/Notification;
    iget v14, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x11

    iput v14, v8, Landroid/app/Notification;->flags:I

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v8, Landroid/app/Notification;->when:J

    .line 73
    const v14, -0xff0001

    iput v14, v8, Landroid/app/Notification;->ledARGB:I

    .line 74
    const/16 v14, 0x3a98

    iput v14, v8, Landroid/app/Notification;->ledOnMS:I

    .line 75
    const/16 v14, 0x3a98

    iput v14, v8, Landroid/app/Notification;->ledOffMS:I

    .line 77
    const-string v12, "notification"

    .line 78
    .local v12, ns:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 79
    .local v7, mNotificationManager:Landroid/app/NotificationManager;
    const/4 v14, 0x2

    invoke-virtual {v7, v14, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 99
    .end local v1           #Button2Intent:Landroid/app/PendingIntent;
    .end local v2           #ButtonIntent:Landroid/app/PendingIntent;
    .end local v3           #builder:Landroid/app/Notification$Builder;
    .end local v4           #button2String:Landroid/net/Uri;
    .end local v5           #buttonString:Landroid/net/Uri;
    .end local v9           #notificationButton2Intent:Landroid/content/Intent;
    .end local v10           #notificationButtonIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 83
    .end local v6           #contentIntent:Landroid/app/PendingIntent;
    .end local v7           #mNotificationManager:Landroid/app/NotificationManager;
    .end local v8           #notification:Landroid/app/Notification;
    .end local v11           #notificationIntent:Landroid/content/Intent;
    .end local v12           #ns:Ljava/lang/String;
    .end local v13           #string:Landroid/net/Uri;
    :cond_0
    new-instance v11, Landroid/content/Intent;

    const-class v14, Lcom/waze/FreeMapAppActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .restart local v11       #notificationIntent:Landroid/content/Intent;
    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v11, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v14, "android.intent.category.LAUNCHER"

    invoke-virtual {v11, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/messages/QuestionData;->defaultAction:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 87
    .restart local v13       #string:Landroid/net/Uri;
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    const/4 v14, 0x0

    const/high16 v15, 0x1000

    move-object/from16 v0, p0

    invoke-static {v0, v14, v11, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 90
    .restart local v6       #contentIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/waze/PushCommands;->createNotification()Landroid/app/Notification;

    move-result-object v8

    .line 91
    .restart local v8       #notification:Landroid/app/Notification;
    const-string v14, "Waze"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/waze/messages/QuestionData;->Text:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v14, v15, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 93
    iget v14, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x12

    iput v14, v8, Landroid/app/Notification;->flags:I

    .line 95
    const-string v12, "notification"

    .line 96
    .restart local v12       #ns:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 97
    .restart local v7       #mNotificationManager:Landroid/app/NotificationManager;
    const/4 v14, 0x2

    invoke-virtual {v7, v14, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static ParseConstructionInstructionCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "command"

    .prologue
    const v6, 0xf4240

    .line 19
    invoke-static {}, Lcom/waze/push/Alerter;->instance()Lcom/waze/push/Alerter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/waze/push/Alerter;->getBestLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 20
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/waze/OfflineNativeManager;->getInstance()Lcom/waze/OfflineNativeManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/2addr v3, v6

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/2addr v4, v6

    invoke-virtual {v2, p1, v3, v4}, Lcom/waze/OfflineNativeManager;->HandleCommandForPush(Ljava/lang/String;II)Lcom/waze/messages/QuestionData;

    move-result-object v1

    .line 23
    .local v1, question:Lcom/waze/messages/QuestionData;
    if-eqz v1, :cond_0

    .line 25
    invoke-static {p0, v1}, Lcom/waze/PushCommands;->CreatePush(Landroid/content/Context;Lcom/waze/messages/QuestionData;)V

    .line 28
    .end local v1           #question:Lcom/waze/messages/QuestionData;
    :cond_0
    return-void
.end method

.method private static createNotification()Landroid/app/Notification;
    .locals 4

    .prologue
    const/16 v3, 0x3a98

    .line 102
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 103
    .local v0, notification:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 104
    const v1, 0x7f020288

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 106
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 107
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 108
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 109
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 110
    const v1, -0xff0001

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 111
    iput v3, v0, Landroid/app/Notification;->ledOnMS:I

    .line 112
    iput v3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 113
    return-object v0
.end method
