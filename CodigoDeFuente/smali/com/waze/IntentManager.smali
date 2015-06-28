.class public final Lcom/waze/IntentManager;
.super Ljava/lang/Object;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/IntentManager$CompatabilityWrapper;,
        Lcom/waze/IntentManager$WazeSDCardManager;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/waze/IntentManager;

.field private static mReferrerSubmitted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/IntentManager;->mInstance:Lcom/waze/IntentManager;

    .line 474
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/IntentManager;->mReferrerSubmitted:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method private static ConvertGeoUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "aGeoUri"

    .prologue
    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, res:Ljava/lang/String;
    const-string v3, "geo:"

    .line 375
    .local v3, scheme:Ljava/lang/String;
    const-string v0, "0,0?"

    .line 379
    .local v0, dummy_loc:Ljava/lang/String;
    const-string v5, "waze://?"

    .line 380
    .local v5, waze_prefix:Ljava/lang/String;
    const-string v1, "ll="

    .line 381
    .local v1, ll_prefix:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 383
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, token:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 390
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    .end local v4           #token:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 394
    .restart local v4       #token:Ljava/lang/String;
    :cond_1
    const/16 v6, 0x3f

    const/16 v7, 0x26

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static Create()Lcom/waze/IntentManager;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/waze/IntentManager;

    invoke-direct {v0}, Lcom/waze/IntentManager;-><init>()V

    sput-object v0, Lcom/waze/IntentManager;->mInstance:Lcom/waze/IntentManager;

    .line 56
    sget-object v0, Lcom/waze/IntentManager;->mInstance:Lcom/waze/IntentManager;

    return-object v0
.end method

.method private static FetchContactAddress(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;
    .locals 18
    .parameter "aUri"
    .parameter "aContext"

    .prologue
    .line 321
    const/4 v7, 0x0

    .line 322
    .local v7, address:Ljava/lang/String;
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 324
    .local v17, sdkBuildVersion:I
    const/4 v1, 0x5

    move/from16 v0, v17

    if-lt v0, v1, :cond_1

    .line 326
    #calls: Lcom/waze/IntentManager$CompatabilityWrapper;->FetchContactAddress(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lcom/waze/IntentManager$CompatabilityWrapper;->access$0(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    .line 364
    :cond_0
    :goto_0
    return-object v7

    .line 331
    :cond_1
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 332
    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    .line 333
    const-string v2, "kind"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    .line 334
    const-string v2, "data"

    aput-object v2, v3, v1

    .line 338
    .local v3, projection:[Ljava/lang/String;
    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 339
    .local v8, cur:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 341
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "No data for uri: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-static/range {p0 .. p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    .line 348
    .local v15, personId:J
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 349
    .local v10, indexID:I
    const-string v1, "data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 350
    .local v9, indexDATA:I
    const-string v1, "kind"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 353
    .local v11, indexKIND:I
    :cond_3
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 354
    .local v13, nextId:J
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 355
    .local v12, kind:I
    cmp-long v1, v13, v15

    if-nez v1, :cond_4

    const/4 v1, 0x2

    if-ne v12, v1, :cond_4

    .line 357
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 358
    goto :goto_0

    .line 360
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public static HandleIntent(Landroid/app/Activity;Z)V
    .locals 4
    .parameter "aContext"
    .parameter "removeIntent"

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, data:Landroid/net/Uri;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/IntentManager;->applyIntentHandling(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?a=addplace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "QuestionID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/waze/MainActivity;->sQuestionID:Ljava/lang/String;

    .line 79
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "PushClicked"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, sValue:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 82
    const-string v2, "PUSH_MESSAGE_LAUNCHED"

    const-string v3, "VAUE"

    invoke-static {v2, v3, v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v1           #sValue:Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    .line 88
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 91
    :cond_4
    invoke-static {v0, p0}, Lcom/waze/IntentManager;->HandleUri(Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static HandleUri(Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 15
    .parameter "aUrl"
    .parameter "aContext"

    .prologue
    .line 125
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v8

    .line 126
    .local v8, nativeMgr:Lcom/waze/NativeManager;
    const/4 v10, 0x0

    .line 128
    .local v10, resUrl:Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 130
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, scheme:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, decodedUrl:Ljava/lang/String;
    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "https"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 135
    :cond_0
    const-string v12, ".*daddr=[0-9]+\\.[0-9]+,[0-9]+\\.[0-9]+.*"

    invoke-virtual {v2, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 138
    .local v1, bIsMatches:Z
    const-string v12, "daddr"

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 139
    .local v4, index:I
    const/4 v12, -0x1

    if-ne v4, v12, :cond_b

    .line 141
    const-string v12, "?q"

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 142
    .local v5, index1:I
    const/4 v12, -0x1

    if-ne v5, v12, :cond_8

    .line 144
    const/16 v12, 0x22

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x5

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 145
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "waze://?ll="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x22

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x4

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 210
    .end local v1           #bIsMatches:Z
    .end local v4           #index:I
    .end local v5           #index1:I
    :cond_1
    :goto_0
    const-string v12, "WazeUrl"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 212
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 215
    :cond_2
    const-string v12, "waze"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 217
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/waze/NativeManager;->setIsAllowTripDialog(Z)V

    .line 219
    move-object v10, v2

    .line 222
    :cond_3
    const-string v12, "geo"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 224
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/waze/IntentManager;->ConvertGeoUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "&navigate=yes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 228
    :cond_4
    const-string v12, "content"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 230
    invoke-static/range {p0 .. p1}, Lcom/waze/IntentManager;->FetchContactAddress(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 233
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "waze://?q="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&navigate=yes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 239
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #decodedUrl:Ljava/lang/String;
    .end local v11           #scheme:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/waze/referrer/ReferrerTracker;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, referrer:Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 242
    if-nez v10, :cond_10

    .line 244
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "waze://?ref="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 250
    :goto_1
    const/4 v12, 0x1

    sput-boolean v12, Lcom/waze/IntentManager;->mReferrerSubmitted:Z

    .line 251
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/waze/referrer/ReferrerTracker;->invalidateReferrer(Landroid/content/Context;)V

    .line 254
    :cond_6
    if-eqz v10, :cond_7

    .line 256
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v12

    if-nez v12, :cond_11

    .line 257
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "&startup=yes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 265
    :cond_7
    :goto_2
    invoke-virtual {v8, v10}, Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;)Z

    .line 266
    return-void

    .line 149
    .end local v9           #referrer:Ljava/lang/String;
    .restart local v1       #bIsMatches:Z
    .restart local v2       #decodedUrl:Ljava/lang/String;
    .restart local v4       #index:I
    .restart local v5       #index1:I
    .restart local v11       #scheme:Ljava/lang/String;
    :cond_8
    const-string v12, "@"

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 150
    .local v6, index2:I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_a

    .line 152
    const-string v12, "loc:"

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 153
    .local v7, index3:I
    const/4 v12, -0x1

    if-ne v7, v12, :cond_9

    .line 155
    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 156
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "waze://?q="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 157
    goto/16 :goto_0

    .line 160
    :cond_9
    add-int/lit8 v12, v7, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 161
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "waze://?ll="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 163
    goto/16 :goto_0

    .line 166
    .end local v7           #index3:I
    :cond_a
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 167
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "waze://?ll="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 170
    goto/16 :goto_0

    .line 173
    .end local v5           #index1:I
    .end local v6           #index2:I
    :cond_b
    add-int/lit8 v12, v4, 0x6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 174
    const-string v12, "&"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 175
    .local v3, endIndex:I
    const/4 v12, -0x1

    if-ne v3, v12, :cond_d

    .line 177
    if-nez v1, :cond_c

    .line 179
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "waze://?q="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 180
    goto/16 :goto_0

    .line 183
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "waze://?ll="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 185
    goto/16 :goto_0

    .line 188
    :cond_d
    const/4 v12, 0x0

    invoke-virtual {v10, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 189
    if-nez v1, :cond_f

    .line 191
    const-string v12, "@"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 193
    .restart local v6       #index2:I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_e

    .line 195
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "waze://?q="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 196
    goto/16 :goto_0

    .line 199
    :cond_e
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 200
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "waze://?ll="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 202
    goto/16 :goto_0

    .line 205
    .end local v6           #index2:I
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "waze://?ll="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 248
    .end local v1           #bIsMatches:Z
    .end local v2           #decodedUrl:Ljava/lang/String;
    .end local v3           #endIndex:I
    .end local v4           #index:I
    .end local v11           #scheme:Ljava/lang/String;
    .restart local v9       #referrer:Ljava/lang/String;
    :cond_10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "&ref="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 258
    :cond_11
    invoke-static {}, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->isInBackground()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 259
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "&background=yes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2
.end method

.method public static ParseIntentDataFlags(Landroid/app/Activity;)V
    .locals 4
    .parameter "aContext"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, data:Landroid/net/Uri;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/IntentManager;->applyIntentHandling(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 106
    :cond_2
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, scheme:Ljava/lang/String;
    const-string v2, "waze"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/waze/NativeManager;->bToForceLoginWithSocial:Z

    goto :goto_0
.end method

.method public static RequestRestart(Landroid/content/Context;)V
    .locals 8
    .parameter "aContext"

    .prologue
    const/4 v4, 0x0

    .line 275
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 276
    .local v1, mgr:Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/waze/MainActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v0, i:Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 279
    .local v2, pi:Landroid/app/PendingIntent;
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 280
    return-void
.end method

.method private static applyIntentHandling(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 407
    if-nez p0, :cond_0

    sget-boolean v0, Lcom/waze/IntentManager;->mReferrerSubmitted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
