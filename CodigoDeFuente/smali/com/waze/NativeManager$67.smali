.class Lcom/waze/NativeManager$67;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->UserNameSuggestResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$nType:I

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$67;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$67;->val$nType:I

    iput-object p3, p0, Lcom/waze/NativeManager$67;->val$username:Ljava/lang/String;

    .line 1383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/waze/NativeManager$67;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mOnUserNameResultArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/waze/NativeManager;->access$72(Lcom/waze/NativeManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1390
    return-void

    .line 1386
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/NativeManager$IOnUserNameResult;

    .line 1387
    .local v0, iounr:Lcom/waze/NativeManager$IOnUserNameResult;
    iget v2, p0, Lcom/waze/NativeManager$67;->val$nType:I

    iget-object v3, p0, Lcom/waze/NativeManager$67;->val$username:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/waze/NativeManager$IOnUserNameResult;->onUserNameResult(ILjava/lang/String;)V

    goto :goto_0
.end method
