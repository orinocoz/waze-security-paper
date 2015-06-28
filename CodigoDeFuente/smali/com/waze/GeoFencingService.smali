.class public Lcom/waze/GeoFencingService;
.super Landroid/app/Service;
.source "GeoFencingService.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# static fields
.field private static IsInitialized:Z

.field private static bIsInternalStop:Z

.field private static bIsStop:Z

.field private static callbackIntent:Landroid/app/PendingIntent;

.field private static mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

.field private static mHandler:Landroid/os/Handler;

.field private static mInstance:Lcom/waze/GeoFencingService;

.field private static mQuestion:Lcom/waze/messages/QuestionData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    sput-object v2, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    .line 27
    sput-boolean v1, Lcom/waze/GeoFencingService;->IsInitialized:Z

    .line 28
    sput-object v2, Lcom/waze/GeoFencingService;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/waze/GeoFencingService;->mHandler:Landroid/os/Handler;

    .line 31
    sput-boolean v1, Lcom/waze/GeoFencingService;->bIsInternalStop:Z

    .line 32
    sput-boolean v1, Lcom/waze/GeoFencingService;->bIsStop:Z

    .line 33
    sput-object v2, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static CreatePushMessage()V
    .locals 22

    .prologue
    .line 109
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    if-nez v19, :cond_1

    .line 240
    .local v15, parkingLocation:[Ljava/lang/String;
    .local v16, questionType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 114
    .end local v15           #parkingLocation:[Ljava/lang/String;
    .end local v16           #questionType:Ljava/lang/String;
    :cond_1
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v15, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "TIME"

    aput-object v20, v15, v19

    const/16 v19, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v15, v19

    .line 117
    .restart local v15       #parkingLocation:[Ljava/lang/String;
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "START_WALKING"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Lcom/waze/utils/OfflineStats;->SendStats(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "ADS_OFFLINE_ARRIVED"

    invoke-static/range {v19 .. v20}, Lcom/waze/utils/OfflineStats;->SendAdsStats(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/waze/messages/QuestionData;->GetQuestionData(Landroid/content/Context;)Lcom/waze/messages/QuestionData;

    move-result-object v19

    sput-object v19, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    .line 122
    sget-object v19, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/waze/messages/QuestionData;->AnswerType:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 144
    const-string v16, "UNKNOWN"

    .line 149
    .restart local v16       #questionType:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/waze/GeoFencingService;->SetParking()V

    .line 152
    sget-object v19, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/waze/messages/QuestionData;->AnswerType:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 154
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/waze/messages/QuestionData;->ResetQuestionData(Landroid/content/Context;)V

    goto :goto_0

    .line 124
    .end local v16           #questionType:Ljava/lang/String;
    :pswitch_0
    const-string v16, "UNKNOWN"

    .line 125
    .restart local v16       #questionType:Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v16           #questionType:Ljava/lang/String;
    :pswitch_1
    const-string v16, "NONE"

    .line 129
    .restart local v16       #questionType:Ljava/lang/String;
    goto :goto_1

    .line 132
    .end local v16           #questionType:Ljava/lang/String;
    :pswitch_2
    const-string v16, "ALERT"

    .line 133
    .restart local v16       #questionType:Ljava/lang/String;
    goto :goto_1

    .line 136
    .end local v16           #questionType:Ljava/lang/String;
    :pswitch_3
    const-string v16, "ANSWER"

    .line 137
    .restart local v16       #questionType:Ljava/lang/String;
    goto :goto_1

    .line 140
    .end local v16           #questionType:Ljava/lang/String;
    :pswitch_4
    const-string v16, "PARKING"

    .line 141
    .restart local v16       #questionType:Ljava/lang/String;
    goto :goto_1

    .line 157
    :cond_2
    sget-object v19, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->Text:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    sget-object v19, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->Text:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 163
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    .line 164
    const-string v20, "PUSH_TYPE|ID"

    aput-object v20, v17, v19

    const/16 v19, 0x1

    .line 166
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "|"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->QuestionID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v17, v19

    .line 167
    .local v17, statValue:[Ljava/lang/String;
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    .line 168
    const-string v20, "INTERNAL_PUSH_RECEIVED"

    .line 167
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/waze/utils/OfflineStats;->SendStats(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 173
    new-instance v13, Landroid/content/Intent;

    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/waze/FreeMapAppActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v13, notificationIntent:Landroid/content/Intent;
    sget-object v19, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->ActionText1:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 175
    .local v18, string:Landroid/net/Uri;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    const/high16 v21, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 178
    .local v8, contentIntent:Landroid/app/PendingIntent;
    new-instance v12, Landroid/content/Intent;

    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/waze/ActionIntent;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v12, notificationButtonIntent:Landroid/content/Intent;
    sget-object v19, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->ActionText1:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 180
    .local v7, buttonString:Landroid/net/Uri;
    const-string v19, "QuestionID"

    sget-object v20, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->QuestionID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v19, "QuestionType"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v19, "Action"

    sget-object v20, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->ActionText1:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {v12, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x1

    const/high16 v21, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 186
    .local v4, ButtonIntent:Landroid/app/PendingIntent;
    new-instance v11, Landroid/content/Intent;

    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/waze/ActionIntent;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v11, notificationButton2Intent:Landroid/content/Intent;
    sget-object v19, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->ActionText2:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 188
    .local v6, button2String:Landroid/net/Uri;
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 189
    const-string v19, "QuestionID"

    sget-object v20, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->QuestionID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v19, "QuestionType"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v19, "Action"

    sget-object v20, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->ActionText2:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x1

    const/high16 v21, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 195
    .local v3, Button2Intent:Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v5, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 197
    const v19, 0x7f020288

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 198
    const-string v19, "Waze"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 199
    sget-object v19, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->Text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 200
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 201
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 202
    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 203
    const v19, 0x7f02046c

    sget-object v20, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->SubText2:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 204
    const v19, 0x7f02042f

    sget-object v20, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->SubText1:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 206
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 207
    .local v10, notification:Landroid/app/Notification;
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x11

    move/from16 v0, v19

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v10, Landroid/app/Notification;->when:J

    .line 210
    const v19, -0xff0001

    move/from16 v0, v19

    iput v0, v10, Landroid/app/Notification;->ledARGB:I

    .line 211
    const/16 v19, 0x3a98

    move/from16 v0, v19

    iput v0, v10, Landroid/app/Notification;->ledOnMS:I

    .line 212
    const/16 v19, 0x3a98

    move/from16 v0, v19

    iput v0, v10, Landroid/app/Notification;->ledOffMS:I

    .line 214
    const-string v14, "notification"

    .line 215
    .local v14, ns:Ljava/lang/String;
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 216
    .local v9, mNotificationManager:Landroid/app/NotificationManager;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v9, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 218
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/waze/messages/QuestionData;->ResetQuestionData(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 222
    .end local v3           #Button2Intent:Landroid/app/PendingIntent;
    .end local v4           #ButtonIntent:Landroid/app/PendingIntent;
    .end local v5           #builder:Landroid/app/Notification$Builder;
    .end local v6           #button2String:Landroid/net/Uri;
    .end local v7           #buttonString:Landroid/net/Uri;
    .end local v8           #contentIntent:Landroid/app/PendingIntent;
    .end local v9           #mNotificationManager:Landroid/app/NotificationManager;
    .end local v10           #notification:Landroid/app/Notification;
    .end local v11           #notificationButton2Intent:Landroid/content/Intent;
    .end local v12           #notificationButtonIntent:Landroid/content/Intent;
    .end local v13           #notificationIntent:Landroid/content/Intent;
    .end local v14           #ns:Ljava/lang/String;
    .end local v18           #string:Landroid/net/Uri;
    :cond_3
    new-instance v13, Landroid/content/Intent;

    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/waze/FreeMapAppActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .restart local v13       #notificationIntent:Landroid/content/Intent;
    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    sget-object v19, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->ActionText1:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 226
    .restart local v18       #string:Landroid/net/Uri;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 227
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    const/high16 v21, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 229
    .restart local v8       #contentIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/waze/GeoFencingService;->createNotification()Landroid/app/Notification;

    move-result-object v10

    .line 230
    .restart local v10       #notification:Landroid/app/Notification;
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "Waze"

    sget-object v21, Lcom/waze/GeoFencingService;->mQuestion:Lcom/waze/messages/QuestionData;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/waze/messages/QuestionData;->Text:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 232
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x22

    move/from16 v0, v19

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 234
    const-string v14, "notification"

    .line 235
    .restart local v14       #ns:Ljava/lang/String;
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 236
    .restart local v9       #mNotificationManager:Landroid/app/NotificationManager;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v9, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 238
    sget-object v19, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual/range {v19 .. v19}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/waze/messages/QuestionData;->ResetQuestionData(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static IsRunning()Z
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SetParking()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 74
    sget-object v6, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    if-eqz v6, :cond_0

    .line 76
    sget-object v6, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    const-string v7, "location"

    invoke-virtual {v6, v7}, Lcom/waze/GeoFencingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 79
    .local v4, lm:Landroid/location/LocationManager;
    const/4 v3, 0x0

    .line 81
    .local v3, l:Landroid/location/Location;
    const-string v6, "gps"

    invoke-virtual {v4, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 84
    new-array v2, v12, [D

    .line 85
    .local v2, gps:[D
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    add-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 86
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v2, v10

    .line 87
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v2, v11

    .line 89
    aget-wide v6, v2, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, Lon:Ljava/lang/String;
    aget-wide v6, v2, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, Lat:Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/String;

    const-string v6, "LON|LAT|TIME"

    aput-object v6, v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 95
    .local v5, parkingLocation:[Ljava/lang/String;
    sget-object v6, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual {v6}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "SET_PARKING"

    invoke-static {v6, v7, v5}, Lcom/waze/utils/OfflineStats;->SendStats(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 96
    sget-object v6, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual {v6}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aget-wide v7, v2, v11

    aget-wide v9, v2, v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/waze/messages/QuestionData;->SetParking(Landroid/content/Context;DD)V

    .line 102
    .end local v0           #Lat:Ljava/lang/String;
    .end local v1           #Lon:Ljava/lang/String;
    .end local v5           #parkingLocation:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private StopServices(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 299
    invoke-direct {p0}, Lcom/waze/GeoFencingService;->stopActivityRecognitionConnection()V

    .line 301
    sget-boolean v3, Lcom/waze/GeoFencingService;->bIsInternalStop:Z

    if-nez v3, :cond_0

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.GEO_FENCING"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, Pending:Landroid/content/Intent;
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 306
    .local v2, proxIntent:Landroid/app/PendingIntent;
    const-string v3, "location"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 308
    .local v1, lm:Landroid/location/LocationManager;
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    .line 310
    .end local v0           #Pending:Landroid/content/Intent;
    .end local v1           #lm:Landroid/location/LocationManager;
    .end local v2           #proxIntent:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/waze/GeoFencingService;->bIsStop:Z

    return v0
.end method

.method private static createNotification()Landroid/app/Notification;
    .locals 4

    .prologue
    const/16 v3, 0x3a98

    .line 243
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 244
    .local v0, notification:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 245
    const v1, 0x7f020288

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 247
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 248
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 249
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 250
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 251
    const v1, -0xff0001

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 252
    iput v3, v0, Landroid/app/Notification;->ledOnMS:I

    .line 253
    iput v3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 254
    return-object v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 260
    sget-boolean v1, Lcom/waze/GeoFencingService;->IsInitialized:Z

    if-nez v1, :cond_0

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/GeoFencingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 270
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/waze/GeoFencingService;->bIsStop:Z

    goto :goto_0
.end method

.method private startActivityRecognitionConnection()V
    .locals 2

    .prologue
    .line 318
    sget-object v0, Lcom/waze/GeoFencingService;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionClient;

    invoke-virtual {p0}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/location/ActivityRecognitionClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    sput-object v0, Lcom/waze/GeoFencingService;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 321
    sget-object v0, Lcom/waze/GeoFencingService;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionClient;->connect()V

    .line 324
    :cond_0
    return-void
.end method

.method public static stop(Z)V
    .locals 1
    .parameter "bIsInternal"

    .prologue
    .line 276
    sget-object v0, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual {v0}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/messages/QuestionData;->ResetQuestionData(Landroid/content/Context;)V

    .line 281
    sget-object v0, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    invoke-virtual {v0}, Lcom/waze/GeoFencingService;->stopSelf()V

    .line 284
    :cond_0
    sput-boolean p0, Lcom/waze/GeoFencingService;->bIsInternalStop:Z

    .line 285
    return-void
.end method

.method private stopActivityRecognitionConnection()V
    .locals 3

    .prologue
    .line 329
    :try_start_0
    sget-object v1, Lcom/waze/GeoFencingService;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    sget-object v2, Lcom/waze/GeoFencingService;->callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/ActivityRecognitionClient;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    .line 330
    sget-object v1, Lcom/waze/GeoFencingService;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    sget-object v1, Lcom/waze/GeoFencingService;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionClient;->disconnect()V

    .line 334
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/waze/GeoFencingService;->bIsInternalStop:Z

    .line 335
    const/4 v1, 0x0

    sput-boolean v1, Lcom/waze/GeoFencingService;->bIsStop:Z

    .line 336
    const/4 v1, 0x0

    sput-boolean v1, Lcom/waze/GeoFencingService;->IsInitialized:Z

    .line 337
    const/4 v1, 0x0

    sput-object v1, Lcom/waze/GeoFencingService;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/IllegalStateException;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/waze/GeoFencingService;->bIsStop:Z

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 5
    .parameter "connectionHint"

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/ActivityRecognitionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 357
    const/high16 v3, 0x800

    .line 356
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/waze/GeoFencingService;->callbackIntent:Landroid/app/PendingIntent;

    .line 359
    sget-object v1, Lcom/waze/GeoFencingService;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    const-wide/16 v2, 0x0

    sget-object v4, Lcom/waze/GeoFencingService;->callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/location/ActivityRecognitionClient;->requestActivityUpdates(JLandroid/app/PendingIntent;)V

    .line 360
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/GeoFencingService;->stop(Z)V

    .line 348
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 45
    sput-object p0, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    .line 46
    invoke-direct {p0}, Lcom/waze/GeoFencingService;->startActivityRecognitionConnection()V

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/GeoFencingService;->bIsInternalStop:Z

    .line 49
    sput-boolean v1, Lcom/waze/GeoFencingService;->IsInitialized:Z

    .line 50
    sput-boolean v1, Lcom/waze/GeoFencingService;->bIsStop:Z

    .line 51
    sget-object v0, Lcom/waze/GeoFencingService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/waze/GeoFencingService$1;

    invoke-direct {v1, p0}, Lcom/waze/GeoFencingService$1;-><init>(Lcom/waze/GeoFencingService;)V

    .line 58
    const-wide/32 v2, 0x927c0

    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/waze/GeoFencingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waze/GeoFencingService;->StopServices(Landroid/content/Context;)V

    .line 64
    sget-boolean v0, Lcom/waze/GeoFencingService;->bIsStop:Z

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/GeoFencingService;->mInstance:Lcom/waze/GeoFencingService;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/GeoFencingService;->IsInitialized:Z

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 70
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method
