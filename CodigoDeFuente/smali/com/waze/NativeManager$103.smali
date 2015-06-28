.class Lcom/waze/NativeManager$103;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->showDetailsPopup(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$iconName:Ljava/lang/String;

.field private final synthetic val$moreActionEnabled:Z

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$special:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$103;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$103;->val$x:I

    iput p3, p0, Lcom/waze/NativeManager$103;->val$y:I

    iput-object p4, p0, Lcom/waze/NativeManager$103;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/NativeManager$103;->val$msg:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/NativeManager$103;->val$iconName:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/waze/NativeManager$103;->val$moreActionEnabled:Z

    iput-object p8, p0, Lcom/waze/NativeManager$103;->val$special:Ljava/lang/String;

    .line 2152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2155
    invoke-static {}, Lcom/waze/AppService;->getActiveMapViewWrapper()Lcom/waze/MapViewWrapper;

    move-result-object v0

    .line 2156
    .local v0, mapViewWrapper:Lcom/waze/MapViewWrapper;
    if-eqz v0, :cond_0

    .line 2157
    iget v1, p0, Lcom/waze/NativeManager$103;->val$x:I

    iget v2, p0, Lcom/waze/NativeManager$103;->val$y:I

    iget-object v3, p0, Lcom/waze/NativeManager$103;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/NativeManager$103;->val$msg:Ljava/lang/String;

    iget-object v5, p0, Lcom/waze/NativeManager$103;->val$iconName:Ljava/lang/String;

    .line 2158
    iget-boolean v6, p0, Lcom/waze/NativeManager$103;->val$moreActionEnabled:Z

    iget-object v7, p0, Lcom/waze/NativeManager$103;->val$special:Ljava/lang/String;

    .line 2157
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MapViewWrapper;->showDetailsPopup(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2164
    :goto_0
    return-void

    .line 2160
    :cond_0
    const-string v1, "WAZE"

    .line 2161
    const-string v2, "Cannot show DetailsPopup. MapView is not available"

    .line 2160
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    invoke-static {p0}, Lcom/waze/MainActivity;->registerOnResumeEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
