.class Lcom/waze/NativeManager$165;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ShowWebView([BIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$aFlags:I

.field private final synthetic val$aUrl:[B

.field private final synthetic val$rect:Lcom/waze/LayoutManager$WazeRect;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;[BLcom/waze/LayoutManager$WazeRect;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$165;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$165;->val$aUrl:[B

    iput-object p3, p0, Lcom/waze/NativeManager$165;->val$rect:Lcom/waze/LayoutManager$WazeRect;

    iput p4, p0, Lcom/waze/NativeManager$165;->val$aFlags:I

    .line 4195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4197
    iget-object v1, p0, Lcom/waze/NativeManager$165;->this$0:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 4198
    .local v0, mgr:Lcom/waze/LayoutManager;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$165;->val$aUrl:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iget-object v2, p0, Lcom/waze/NativeManager$165;->val$rect:Lcom/waze/LayoutManager$WazeRect;

    iget v3, p0, Lcom/waze/NativeManager$165;->val$aFlags:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/LayoutManager;->ShowWebView(Ljava/lang/String;Lcom/waze/LayoutManager$WazeRect;I)V

    .line 4199
    return-void
.end method
