.class final Lcom/waze/IntentManager$CompatabilityWrapper;
.super Ljava/lang/Object;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompatabilityWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static FetchContactAddress(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;
    .locals 11
    .parameter "aUri"
    .parameter "aContext"

    .prologue
    .line 425
    const/4 v6, 0x0

    .line 426
    .local v6, address:Ljava/lang/String;
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 429
    .local v8, personId:J
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 430
    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 431
    const-string v1, "data4"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "data7"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 432
    const-string v1, "data9"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "data4"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    .line 433
    const-string v1, "data8"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "data10"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "data2"

    aput-object v1, v2, v0

    .line 436
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string v1, " AND ContactsContract.Data.MIMETYPE = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 445
    const/4 v4, 0x0

    const-string v5, "data10 asc"

    move-object v0, p1

    .line 444
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 447
    .local v7, cur:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 449
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "No data for uri: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    :goto_0
    return-object v6

    .line 453
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 458
    .local v10, postFormattedIdx:I
    :cond_2
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 459
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 462
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method static synthetic access$0(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 423
    invoke-static {p0, p1}, Lcom/waze/IntentManager$CompatabilityWrapper;->FetchContactAddress(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
