.class Lcom/waze/social/facebook/FacebookWrapper$5;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "FacebookWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/social/facebook/FacebookWrapper;->getFbPermissions(Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/social/facebook/FacebookWrapper;

.field private final synthetic val$bIsReadPermissions:Z

.field private final synthetic val$bIsStreamPermission:Z

.field private final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/waze/social/facebook/FacebookWrapper;ZZLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/social/facebook/FacebookWrapper$5;->this$0:Lcom/waze/social/facebook/FacebookWrapper;

    iput-boolean p2, p0, Lcom/waze/social/facebook/FacebookWrapper$5;->val$bIsReadPermissions:Z

    iput-boolean p3, p0, Lcom/waze/social/facebook/FacebookWrapper$5;->val$bIsStreamPermission:Z

    iput-object p4, p0, Lcom/waze/social/facebook/FacebookWrapper$5;->val$callback:Ljava/lang/Runnable;

    .line 433
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/waze/social/facebook/FacebookWrapper$5;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 463
    return-void
.end method

.method public event()V
    .locals 5

    .prologue
    .line 437
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 439
    .local v0, nm:Lcom/waze/NativeManager;
    iget-boolean v3, p0, Lcom/waze/social/facebook/FacebookWrapper$5;->val$bIsReadPermissions:Z

    if-eqz v3, :cond_1

    .line 441
    invoke-virtual {v0}, Lcom/waze/NativeManager;->getFbPermissionsNTV()[Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, permissions:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 443
    iget-object v3, p0, Lcom/waze/social/facebook/FacebookWrapper$5;->this$0:Lcom/waze/social/facebook/FacebookWrapper;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissions:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/waze/social/facebook/FacebookWrapper;->access$1(Lcom/waze/social/facebook/FacebookWrapper;Ljava/util/List;)V

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 445
    .end local v1           #permissions:[Ljava/lang/String;
    :cond_1
    iget-boolean v3, p0, Lcom/waze/social/facebook/FacebookWrapper$5;->val$bIsStreamPermission:Z

    if-eqz v3, :cond_2

    .line 447
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 448
    .local v2, s:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "publish_stream"

    aput-object v4, v2, v3

    .line 449
    move-object v1, v2

    .line 450
    .restart local v1       #permissions:[Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/social/facebook/FacebookWrapper$5;->this$0:Lcom/waze/social/facebook/FacebookWrapper;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissionsStream:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/waze/social/facebook/FacebookWrapper;->access$2(Lcom/waze/social/facebook/FacebookWrapper;Ljava/util/List;)V

    goto :goto_0

    .line 454
    .end local v1           #permissions:[Ljava/lang/String;
    .end local v2           #s:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/waze/NativeManager;->getPublishFbPermissionsNTV()[Ljava/lang/String;

    move-result-object v1

    .line 455
    .restart local v1       #permissions:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 456
    iget-object v3, p0, Lcom/waze/social/facebook/FacebookWrapper$5;->this$0:Lcom/waze/social/facebook/FacebookWrapper;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/waze/social/facebook/FacebookWrapper;->mFbPublishPermission:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/waze/social/facebook/FacebookWrapper;->access$3(Lcom/waze/social/facebook/FacebookWrapper;Ljava/util/List;)V

    goto :goto_0
.end method
