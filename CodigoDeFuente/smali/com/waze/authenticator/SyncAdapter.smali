.class public Lcom/waze/authenticator/SyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncAdapter.java"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "autoInitialize"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/authenticator/SyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 31
    iput-object p1, p0, Lcom/waze/authenticator/SyncAdapter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 7
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/waze/authenticator/SyncAdapter;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/waze/authenticator/SyncService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v6

    .line 52
    .local v6, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v6}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0
.end method
