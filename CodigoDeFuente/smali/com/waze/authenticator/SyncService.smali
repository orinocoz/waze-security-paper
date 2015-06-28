.class public Lcom/waze/authenticator/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/authenticator/SyncService$DirtyQuery;
    }
.end annotation


# static fields
.field static Index:I

.field static Index2:I

.field static IsLowApi:Z

.field static bChanged:Z

.field static ops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static sSyncAdapter:Lcom/waze/authenticator/SyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/authenticator/SyncService;->sSyncAdapter:Lcom/waze/authenticator/SyncAdapter;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/waze/authenticator/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/waze/authenticator/SyncService;->ops:Ljava/util/ArrayList;

    .line 192
    sput v1, Lcom/waze/authenticator/SyncService;->Index2:I

    .line 281
    sput-boolean v1, Lcom/waze/authenticator/SyncService;->bChanged:Z

    .line 282
    sput-boolean v1, Lcom/waze/authenticator/SyncService;->IsLowApi:Z

    .line 592
    sput v1, Lcom/waze/authenticator/SyncService;->Index:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static AggargateAll(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 431
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/waze/authenticator/SyncService$DirtyQuery;->PROJECTION2:[Ljava/lang/String;

    const-string v3, "account_type=\'com.waze\'"

    move-object v5, v4

    .line 430
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 435
    .local v8, allContacts:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 453
    if-eqz v8, :cond_0

    .line 454
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_0
    :goto_1
    return-void

    .line 437
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 438
    .local v6, ID:J
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 441
    .local v10, nMasterID:J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .local v9, cv:Landroid/content/ContentValues;
    const-string v0, "type"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    const-string v0, "raw_contact_id1"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 444
    const-string v0, "raw_contact_id2"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/waze/authenticator/SyncService;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 448
    .end local v6           #ID:J
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #nMasterID:J
    :catch_0
    move-exception v0

    .line 453
    if-eqz v8, :cond_0

    .line 454
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 452
    :catchall_0
    move-exception v0

    .line 453
    if-eqz v8, :cond_2

    .line 454
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_2
    throw v0
.end method

.method private static FinishAdd(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 150
    .local v1, resolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v3, Lcom/waze/authenticator/SyncService;->ops:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 153
    const-string v3, "com.android.contacts"

    sget-object v4, Lcom/waze/authenticator/SyncService;->ops:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 154
    .local v2, results:[Landroid/content/ContentProviderResult;
    sget-object v3, Lcom/waze/authenticator/SyncService;->ops:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 155
    const/4 v3, 0x0

    sput v3, Lcom/waze/authenticator/SyncService;->Index:I

    .line 156
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 166
    .end local v2           #results:[Landroid/content/ContentProviderResult;
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static GetCurrentContatcsVersions(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "mContext"

    .prologue
    .line 650
    const-string v0, "sb"

    return-object v0
.end method

.method private static IsFirstTimeUse()Z
    .locals 3

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, IsFirstTime:Z
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->getContactsLastAccessTime()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, sTime:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x1

    .line 189
    :cond_1
    return v0
.end method

.method public static RefreshContactUpdates(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 34
    .parameter "context"
    .parameter "account"

    .prologue
    .line 461
    const/16 v33, 0x0

    .line 462
    .local v33, sHash:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v8, v4

    .line 463
    .local v8, selectionArgs:[Ljava/lang/String;
    const/16 v22, 0x0

    .line 464
    .local v22, allContacts:Landroid/database/Cursor;
    const-string v7, "in_visible_group= ? "

    .line 467
    .local v7, where:Ljava/lang/String;
    const-string v4, "account"

    .line 466
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/accounts/AccountManager;

    .line 468
    .local v20, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual/range {v20 .. v20}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v19

    .line 470
    .local v19, accountList:[Landroid/accounts/Account;
    const-string v21, ""

    .line 471
    .local v21, accountSelection:Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v4, v0

    move/from16 v0, v27

    if-lt v0, v4, :cond_3

    .line 480
    const-string v4, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "in_visible_group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "= ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 485
    :cond_0
    sget-boolean v4, Lcom/waze/authenticator/SyncService;->IsLowApi:Z

    if-eqz v4, :cond_6

    .line 487
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 488
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/waze/authenticator/SyncService$DirtyQuery;->PROJECTION4:[Ljava/lang/String;

    const/4 v9, 0x0

    .line 487
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 497
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_7

    .line 584
    invoke-static/range {p0 .. p0}, Lcom/waze/authenticator/SyncService;->FinishAdd(Landroid/content/Context;)V

    .line 585
    if-eqz v22, :cond_2

    .line 586
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_2
    return-void

    .line 472
    :cond_3
    aget-object v4, v19, v27

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 474
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 476
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v19, v27

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 471
    :cond_5
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 492
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 493
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/waze/authenticator/SyncService$DirtyQuery;->PROJECTION3:[Ljava/lang/String;

    const/4 v9, 0x0

    .line 492
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    goto :goto_1

    .line 499
    :cond_7
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 500
    .local v28, id:J
    const/4 v4, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 501
    .local v18, Version:I
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 502
    .local v25, contactNumber:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 503
    .local v24, contactName:Ljava/lang/String;
    const/16 v30, 0x0

    .line 505
    .local v30, image_uri:Ljava/lang/String;
    sget-boolean v4, Lcom/waze/authenticator/SyncService;->IsLowApi:Z

    if-nez v4, :cond_a

    .line 507
    const/4 v4, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 508
    const/4 v4, 0x5

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 515
    .local v16, SourceID:J
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 516
    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Lcom/waze/authenticator/SyncService$DirtyQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sourceid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'com.waze\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 515
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 518
    .local v23, contact2:Landroid/database/Cursor;
    if-eqz v23, :cond_b

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 522
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 523
    .local v32, nLastVersion:I
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 527
    .local v31, nContactID:I
    move/from16 v0, v18

    move/from16 v1, v32

    if-le v0, v1, :cond_8

    .line 531
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Lcom/waze/NativeManager;->RemoveContactFromDB(J)V

    .line 533
    const/4 v4, 0x1

    sput-boolean v4, Lcom/waze/authenticator/SyncService;->bChanged:Z

    .line 535
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "caller_is_syncadapter"

    const-string v9, "true"

    invoke-virtual {v5, v6, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    move/from16 v0, v31

    int-to-long v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-virtual {v4, v5, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 540
    invoke-static {}, Lcom/waze/phone/AddressBook;->GetCountryZipCode()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lcom/waze/phone/AddressBook;->PhoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 541
    .local v26, formattedPhone:Ljava/lang/String;
    if-eqz v26, :cond_8

    .line 543
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/waze/NativeManager;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 545
    new-instance v10, Lcom/waze/autocomplete/Person;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-direct {v10, v0, v1, v2}, Lcom/waze/autocomplete/Person;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .local v10, p:Lcom/waze/autocomplete/Person;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    move/from16 v3, v18

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/waze/NativeManager;->AddContactToDB(Ljava/lang/String;JI)V

    move-object/from16 v9, p0

    move/from16 v11, v18

    move-wide/from16 v12, v28

    move-wide/from16 v14, v16

    .line 549
    invoke-static/range {v9 .. v15}, Lcom/waze/authenticator/SyncService;->addContact(Landroid/content/Context;Lcom/waze/autocomplete/Person;IJJ)V

    .line 554
    .end local v10           #p:Lcom/waze/autocomplete/Person;
    .end local v26           #formattedPhone:Ljava/lang/String;
    :cond_8
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 583
    .end local v16           #SourceID:J
    .end local v18           #Version:I
    .end local v23           #contact2:Landroid/database/Cursor;
    .end local v24           #contactName:Ljava/lang/String;
    .end local v25           #contactNumber:Ljava/lang/String;
    .end local v28           #id:J
    .end local v30           #image_uri:Ljava/lang/String;
    .end local v31           #nContactID:I
    .end local v32           #nLastVersion:I
    :catchall_0
    move-exception v4

    .line 584
    invoke-static/range {p0 .. p0}, Lcom/waze/authenticator/SyncService;->FinishAdd(Landroid/content/Context;)V

    .line 585
    if-eqz v22, :cond_9

    .line 586
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 588
    :cond_9
    throw v4

    .line 512
    .restart local v18       #Version:I
    .restart local v24       #contactName:Ljava/lang/String;
    .restart local v25       #contactNumber:Ljava/lang/String;
    .restart local v28       #id:J
    .restart local v30       #image_uri:Ljava/lang/String;
    :cond_a
    const/4 v4, 0x4

    :try_start_2
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .restart local v16       #SourceID:J
    goto/16 :goto_2

    .line 557
    .restart local v23       #contact2:Landroid/database/Cursor;
    :cond_b
    if-eqz v23, :cond_c

    .line 559
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 561
    :cond_c
    invoke-static {}, Lcom/waze/phone/AddressBook;->GetCountryZipCode()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lcom/waze/phone/AddressBook;->PhoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 562
    .restart local v26       #formattedPhone:Ljava/lang/String;
    if-eqz v26, :cond_1

    .line 571
    new-instance v10, Lcom/waze/autocomplete/Person;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-direct {v10, v0, v1, v2}, Lcom/waze/autocomplete/Person;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .restart local v10       #p:Lcom/waze/autocomplete/Person;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/waze/NativeManager;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 575
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    move/from16 v3, v18

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/waze/NativeManager;->AddContactToDB(Ljava/lang/String;JI)V

    .line 577
    const/4 v4, 0x1

    sput-boolean v4, Lcom/waze/authenticator/SyncService;->bChanged:Z

    move-object/from16 v9, p0

    move/from16 v11, v18

    move-wide/from16 v12, v28

    move-wide/from16 v14, v16

    .line 579
    invoke-static/range {v9 .. v15}, Lcom/waze/authenticator/SyncService;->addContact(Landroid/content/Context;Lcom/waze/autocomplete/Person;IJJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public static RefreshDeletedContacts(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 13
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 603
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 604
    sget-object v2, Lcom/waze/authenticator/SyncService$DirtyQuery;->PROJECTION2:[Ljava/lang/String;

    .line 605
    const-string v3, "dirty=1 AND account_type=\'com.waze\' OR deleted=1 AND account_type=\'com.waze\'"

    move-object v5, v4

    .line 603
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 609
    .local v8, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 628
    :cond_1
    if-eqz v8, :cond_2

    .line 629
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 632
    :cond_2
    return-void

    .line 610
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 611
    .local v10, rawContactId:J
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 612
    .local v6, SourceID:J
    const-string v1, "1"

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 614
    .local v9, isDeleted:Z
    if-eqz v9, :cond_0

    .line 618
    const/4 v1, 0x1

    sput-boolean v1, Lcom/waze/authenticator/SyncService;->bChanged:Z

    .line 620
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/waze/NativeManager;->RemoveContactFromDB(J)V

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 627
    .end local v6           #SourceID:J
    .end local v9           #isDeleted:Z
    .end local v10           #rawContactId:J
    :catchall_0
    move-exception v1

    .line 628
    if-eqz v8, :cond_4

    .line 629
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 631
    :cond_4
    throw v1
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "isSyncOperation"

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 173
    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 176
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static addContact(Landroid/content/Context;Lcom/waze/autocomplete/Person;IJJ)V
    .locals 6
    .parameter "context"
    .parameter "contact"
    .parameter "nVersion"
    .parameter "ID"
    .parameter "SourceID"

    .prologue
    const/4 v5, 0x1

    .line 84
    sget-object v1, Lcom/waze/authenticator/SyncService;->ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1ea

    if-le v1, v2, :cond_0

    .line 86
    invoke-static {p0}, Lcom/waze/authenticator/SyncService;->FinishAdd(Landroid/content/Context;)V

    .line 89
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 91
    sget-object v1, Lcom/waze/authenticator/SyncService;->ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    .local v0, nID:I
    sget-object v1, Lcom/waze/authenticator/SyncService;->ops:Ljava/util/ArrayList;

    .line 94
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5}, Lcom/waze/authenticator/SyncService;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 95
    const-string v3, "account_name"

    const-string v4, "Waze"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 96
    const-string v3, "account_type"

    const-string v4, "com.waze"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 97
    const-string v3, "sync1"

    invoke-virtual {p1}, Lcom/waze/autocomplete/Person;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 98
    const-string v3, "sync2"

    invoke-virtual {p1}, Lcom/waze/autocomplete/Person;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 99
    const-string v3, "sync3"

    invoke-virtual {p1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 100
    const-string v3, "aggregation_mode"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 101
    const-string v3, "sourceid"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 102
    const-string v3, "sync4"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 103
    const-string v3, "version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v1, Lcom/waze/authenticator/SyncService;->ops:Ljava/util/ArrayList;

    .line 108
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5}, Lcom/waze/authenticator/SyncService;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 109
    const-string v3, "raw_contact_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 110
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 111
    const-string v3, "data2"

    invoke-virtual {p1}, Lcom/waze/autocomplete/Person;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method private static addContactsToAccount(Landroid/content/Context;)V
    .locals 26
    .parameter "mContext"

    .prologue
    .line 197
    const/16 v25, 0x0

    .line 198
    .local v25, sHash:Ljava/lang/String;
    const/16 v18, 0x0

    .line 199
    .local v18, bIsChanged:Z
    const-string v6, "in_visible_group= ? "

    .line 200
    .local v6, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v7, v3

    .line 201
    .local v7, selectionArgs:[Ljava/lang/String;
    const/16 v21, 0x0

    .line 204
    .local v21, cursor:Landroid/database/Cursor;
    const-string v3, "account"

    .line 203
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/accounts/AccountManager;

    .line 205
    .local v16, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual/range {v16 .. v16}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v15

    .line 207
    .local v15, accountList:[Landroid/accounts/Account;
    const-string v17, ""

    .line 208
    .local v17, accountSelection:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, i:I
    :goto_0
    array-length v3, v15

    move/from16 v0, v23

    if-lt v0, v3, :cond_3

    .line 216
    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "in_visible_group"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 221
    :cond_0
    sget-boolean v3, Lcom/waze/authenticator/SyncService;->IsLowApi:Z

    if-eqz v3, :cond_6

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/waze/authenticator/SyncService$DirtyQuery;->PROJECTION4:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 229
    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 273
    if-eqz v18, :cond_2

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->IsAccessToContactsEnableNTV()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->ContactUpload()V

    .line 277
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/waze/authenticator/SyncService;->FinishAdd(Landroid/content/Context;)V

    .line 278
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 279
    return-void

    .line 209
    :cond_3
    aget-object v3, v15, v23

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 211
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 213
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v23

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 208
    :cond_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 227
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/waze/authenticator/SyncService$DirtyQuery;->PROJECTION3:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 229
    goto :goto_1

    .line 231
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 233
    .local v11, id:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 234
    .local v20, contactNumber:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 235
    .local v19, contactName:Ljava/lang/String;
    const/16 v24, 0x0

    .line 237
    .local v24, image_uri:Ljava/lang/String;
    sget-boolean v3, Lcom/waze/authenticator/SyncService;->IsLowApi:Z

    if-nez v3, :cond_8

    .line 239
    const/4 v3, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 240
    const/4 v3, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 249
    .local v13, SourceID:J
    :goto_2
    invoke-static {}, Lcom/waze/phone/AddressBook;->GetCountryZipCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/waze/phone/AddressBook;->PhoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 250
    .local v22, formattedPhone:Ljava/lang/String;
    if-eqz v22, :cond_1

    .line 252
    const/16 v18, 0x1

    .line 258
    new-instance v9, Lcom/waze/autocomplete/Person;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v9, v0, v1, v2}, Lcom/waze/autocomplete/Person;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .local v9, p:Lcom/waze/autocomplete/Person;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/waze/NativeManager;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 262
    sget v3, Lcom/waze/authenticator/SyncService;->Index2:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/waze/authenticator/SyncService;->Index2:I

    .line 266
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v11, v12, v4}, Lcom/waze/NativeManager;->AddContactToDB(Ljava/lang/String;JI)V

    .line 269
    const/4 v3, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v14}, Lcom/waze/authenticator/SyncService;->addContact(Landroid/content/Context;Lcom/waze/autocomplete/Person;IJJ)V

    goto/16 :goto_1

    .line 244
    .end local v9           #p:Lcom/waze/autocomplete/Person;
    .end local v13           #SourceID:J
    .end local v22           #formattedPhone:Ljava/lang/String;
    :cond_8
    const/4 v3, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .restart local v13       #SourceID:J
    goto :goto_2
.end method

.method public static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 5
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 289
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 291
    const/4 v1, 0x1

    sput-boolean v1, Lcom/waze/authenticator/SyncService;->IsLowApi:Z

    .line 294
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->IsSyncValid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    sget-object v1, Lcom/waze/authenticator/SyncService;->ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 298
    sput-boolean v3, Lcom/waze/authenticator/SyncService;->bChanged:Z

    .line 299
    sget-boolean v1, Lcom/waze/NativeManager;->bToUploadContacts:Z

    if-eqz v1, :cond_1

    .line 301
    sput-boolean v3, Lcom/waze/NativeManager;->bToUploadContacts:Z

    .line 302
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->ContactUpload()V

    .line 305
    :cond_1
    invoke-static {}, Lcom/waze/authenticator/SyncService;->IsFirstTimeUse()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 307
    const-string v1, "Sync Status"

    const-string v2, "First time Syncing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {p0}, Lcom/waze/authenticator/SyncService;->addContactsToAccount(Landroid/content/Context;)V

    .line 312
    invoke-static {}, Lcom/waze/phone/AddressBook;->SetFlagToInit()V

    .line 314
    invoke-static {p0}, Lcom/waze/authenticator/SyncService;->AggargateAll(Landroid/content/Context;)V

    .line 316
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/waze/NativeManager;->setContactsLastAccessTime(Ljava/lang/String;)V

    .line 337
    :cond_2
    :goto_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->GetIsAggaragteFinished()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, Agg:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 340
    :cond_3
    invoke-static {p0}, Lcom/waze/authenticator/SyncService;->AggargateAll(Landroid/content/Context;)V

    .line 341
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/waze/NativeManager;->setContactsLastAccessTime(Ljava/lang/String;)V

    .line 344
    .end local v0           #Agg:Ljava/lang/String;
    :cond_4
    return-void

    .line 325
    :cond_5
    invoke-static {p0, p1}, Lcom/waze/authenticator/SyncService;->RefreshDeletedContacts(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 326
    invoke-static {p0, p1}, Lcom/waze/authenticator/SyncService;->RefreshContactUpdates(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 330
    sget-boolean v1, Lcom/waze/authenticator/SyncService;->bChanged:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->IsAccessToContactsEnableNTV()Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/waze/NativeManager;->bToUploadContacts:Z

    if-eqz v1, :cond_2

    .line 332
    :cond_6
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->ContactUpload()V

    .line 333
    invoke-static {}, Lcom/waze/phone/AddressBook;->SetFlagToInit()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 73
    sget-object v0, Lcom/waze/authenticator/SyncService;->sSyncAdapter:Lcom/waze/authenticator/SyncAdapter;

    invoke-virtual {v0}, Lcom/waze/authenticator/SyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 54
    sget-object v1, Lcom/waze/authenticator/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/waze/authenticator/SyncService;->sSyncAdapter:Lcom/waze/authenticator/SyncAdapter;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/waze/authenticator/SyncAdapter;

    invoke-virtual {p0}, Lcom/waze/authenticator/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/waze/authenticator/SyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/waze/authenticator/SyncService;->sSyncAdapter:Lcom/waze/authenticator/SyncAdapter;

    .line 54
    :cond_0
    monitor-exit v1

    .line 59
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
