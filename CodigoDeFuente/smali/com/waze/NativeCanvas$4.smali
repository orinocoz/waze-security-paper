.class Lcom/waze/NativeCanvas$4;
.super Ljava/lang/Object;
.source "NativeCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeCanvas;->CreateCanvas(Lcom/waze/MapView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeCanvas;

.field private final synthetic val$aHeight:I

.field private final synthetic val$aWidth:I


# direct methods
.method constructor <init>(Lcom/waze/NativeCanvas;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeCanvas$4;->this$0:Lcom/waze/NativeCanvas;

    iput p2, p0, Lcom/waze/NativeCanvas$4;->val$aWidth:I

    iput p3, p0, Lcom/waze/NativeCanvas$4;->val$aHeight:I

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/waze/NativeCanvas$4;->this$0:Lcom/waze/NativeCanvas;

    #getter for: Lcom/waze/NativeCanvas;->mCanvasCreated:Z
    invoke-static {v0}, Lcom/waze/NativeCanvas;->access$3(Lcom/waze/NativeCanvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/waze/NativeCanvas$4;->this$0:Lcom/waze/NativeCanvas;

    invoke-virtual {v0}, Lcom/waze/NativeCanvas;->CanvasDestroyNTV()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/waze/NativeCanvas$4;->this$0:Lcom/waze/NativeCanvas;

    iget v1, p0, Lcom/waze/NativeCanvas$4;->val$aWidth:I

    iget v2, p0, Lcom/waze/NativeCanvas$4;->val$aHeight:I

    #calls: Lcom/waze/NativeCanvas;->createCanvasEvent(II)V
    invoke-static {v0, v1, v2}, Lcom/waze/NativeCanvas;->access$4(Lcom/waze/NativeCanvas;II)V

    .line 330
    iget-object v0, p0, Lcom/waze/NativeCanvas$4;->this$0:Lcom/waze/NativeCanvas;

    #calls: Lcom/waze/NativeCanvas;->notifyCreate()V
    invoke-static {v0}, Lcom/waze/NativeCanvas;->access$5(Lcom/waze/NativeCanvas;)V

    .line 331
    return-void
.end method
