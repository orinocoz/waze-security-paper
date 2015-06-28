.class Lcom/waze/NativeCanvas$1;
.super Ljava/lang/Object;
.source "NativeCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeCanvas;->DestroyCanvas(Lcom/waze/MapView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeCanvas;


# direct methods
.method constructor <init>(Lcom/waze/NativeCanvas;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeCanvas$1;->this$0:Lcom/waze/NativeCanvas;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/waze/NativeCanvas$1;->this$0:Lcom/waze/NativeCanvas;

    #calls: Lcom/waze/NativeCanvas;->destroyCanvasEvent()V
    invoke-static {v0}, Lcom/waze/NativeCanvas;->access$0(Lcom/waze/NativeCanvas;)V

    .line 181
    iget-object v0, p0, Lcom/waze/NativeCanvas$1;->this$0:Lcom/waze/NativeCanvas;

    #calls: Lcom/waze/NativeCanvas;->notifyDestroy()V
    invoke-static {v0}, Lcom/waze/NativeCanvas;->access$1(Lcom/waze/NativeCanvas;)V

    .line 182
    return-void
.end method
