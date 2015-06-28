.class Lcom/waze/NativeCanvas$7;
.super Ljava/lang/Object;
.source "NativeCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeCanvas;->OnKeyDownHandler(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeCanvas;

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeCanvas;Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeCanvas$7;->this$0:Lcom/waze/NativeCanvas;

    iput-object p2, p0, Lcom/waze/NativeCanvas$7;->val$layoutMgr:Lcom/waze/LayoutManager;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/waze/NativeCanvas$7;->val$layoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->onBackPressed()Z

    .line 492
    return-void
.end method
