.class final Lcom/waze/authenticator/SyncService$DirtyQuery;
.super Ljava/lang/Object;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/authenticator/SyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirtyQuery"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final PROJECTION2:[Ljava/lang/String; = null

.field public static final PROJECTION3:[Ljava/lang/String; = null

.field public static final PROJECTION4:[Ljava/lang/String; = null

.field public static final SELECTION:Ljava/lang/String; = "dirty=1 AND account_type=\'com.waze\' OR deleted=1 AND account_type=\'com.waze\'"

.field public static final SELECTION2:Ljava/lang/String; = "data_sync1!=data1"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 356
    new-array v0, v6, [Ljava/lang/String;

    .line 357
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 358
    const-string v1, "version"

    aput-object v1, v0, v4

    .line 359
    const-string v1, "sourceid"

    aput-object v1, v0, v5

    .line 356
    sput-object v0, Lcom/waze/authenticator/SyncService$DirtyQuery;->PROJECTION:[Ljava/lang/String;

    .line 362
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 363
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 364
    const-string v1, "data1"

    aput-object v1, v0, v4

    .line 365
    const-string v1, "display_name"

    aput-object v1, v0, v5

    .line 366
    const-string v1, "version"

    aput-object v1, v0, v6

    .line 367
    const-string v1, "photo_uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 368
    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    .line 362
    sput-object v0, Lcom/waze/authenticator/SyncService$DirtyQuery;->PROJECTION3:[Ljava/lang/String;

    .line 371
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 372
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 373
    const-string v1, "data1"

    aput-object v1, v0, v4

    .line 374
    const-string v1, "display_name"

    aput-object v1, v0, v5

    .line 375
    const-string v1, "version"

    aput-object v1, v0, v6

    .line 377
    const-string v1, "raw_contact_id"

    aput-object v1, v0, v7

    .line 371
    sput-object v0, Lcom/waze/authenticator/SyncService$DirtyQuery;->PROJECTION4:[Ljava/lang/String;

    .line 380
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 381
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 382
    const-string v1, "version"

    aput-object v1, v0, v4

    .line 383
    const-string v1, "deleted"

    aput-object v1, v0, v5

    .line 384
    const-string v1, "sourceid"

    aput-object v1, v0, v6

    .line 385
    const-string v1, "sync4"

    aput-object v1, v0, v7

    .line 380
    sput-object v0, Lcom/waze/authenticator/SyncService$DirtyQuery;->PROJECTION2:[Ljava/lang/String;

    .line 387
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 388
    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 387
    sput-object v0, Lcom/waze/authenticator/SyncService$DirtyQuery;->CONTENT_URI:Landroid/net/Uri;

    .line 397
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    return-void
.end method
