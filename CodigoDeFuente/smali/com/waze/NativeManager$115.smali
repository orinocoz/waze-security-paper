.class Lcom/waze/NativeManager$115;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$115;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$115;->val$id:Ljava/lang/String;

    .line 2489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2491
    iget-object v1, p0, Lcom/waze/NativeManager$115;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->closeProgressPopup()V
    invoke-static {v1}, Lcom/waze/NativeManager;->access$73(Lcom/waze/NativeManager;)V

    .line 2492
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 2493
    .local v0, context:Lcom/waze/ifs/ui/ActivityBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2494
    iget-object v1, p0, Lcom/waze/NativeManager$115;->this$0:Lcom/waze/NativeManager;

    new-instance v2, Lcom/waze/ifs/ui/ProgressBarDialog;

    iget-object v3, p0, Lcom/waze/NativeManager$115;->val$id:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/waze/ifs/ui/ProgressBarDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #setter for: Lcom/waze/NativeManager;->mProgressBarCommon:Lcom/waze/ifs/ui/ProgressBarDialog;
    invoke-static {v1, v2}, Lcom/waze/NativeManager;->access$74(Lcom/waze/NativeManager;Lcom/waze/ifs/ui/ProgressBarDialog;)V

    .line 2495
    iget-object v1, p0, Lcom/waze/NativeManager$115;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mProgressBarCommon:Lcom/waze/ifs/ui/ProgressBarDialog;
    invoke-static {v1}, Lcom/waze/NativeManager;->access$75(Lcom/waze/NativeManager;)Lcom/waze/ifs/ui/ProgressBarDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/ifs/ui/ProgressBarDialog;->show()V

    .line 2497
    :cond_0
    return-void
.end method
