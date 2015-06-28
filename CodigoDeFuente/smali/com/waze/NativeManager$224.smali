.class Lcom/waze/NativeManager$224;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->updateNavResultPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$dist:Ljava/lang/String;

.field private final synthetic val$eta:Ljava/lang/String;

.field private final synthetic val$isWaypoint:Z

.field private final synthetic val$time:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$224;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$224;->val$eta:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$224;->val$time:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$224;->val$dist:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/waze/NativeManager$224;->val$isWaypoint:Z

    .line 6076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 6078
    const-string v2, "WAZE"

    .line 6079
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in updateNavResultPopup eta="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/waze/NativeManager$224;->val$eta:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/NativeManager$224;->val$time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/NativeManager$224;->val$dist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6078
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6081
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 6082
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_1

    .line 6083
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 6084
    .local v0, layoutManager:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 6086
    iget-object v2, p0, Lcom/waze/NativeManager$224;->val$eta:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/NativeManager$224;->val$time:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/NativeManager$224;->val$dist:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/waze/NativeManager$224;->val$isWaypoint:Z

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/waze/LayoutManager;->updateNavResultPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6092
    .end local v0           #layoutManager:Lcom/waze/LayoutManager;
    :cond_0
    :goto_0
    return-void

    .line 6089
    :cond_1
    const-string v2, "WAZE"

    .line 6090
    const-string v3, "Cannot Call updateNavResultPopup. Main activity is not available"

    .line 6089
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
