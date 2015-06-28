.class Lcom/waze/NativeCanvas$3;
.super Ljava/lang/Object;
.source "NativeCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeCanvas;->cancelSplash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeCanvas;

.field private final synthetic val$mainActivity:Lcom/waze/MainActivity;


# direct methods
.method constructor <init>(Lcom/waze/NativeCanvas;Lcom/waze/MainActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeCanvas$3;->this$0:Lcom/waze/NativeCanvas;

    iput-object p2, p0, Lcom/waze/NativeCanvas$3;->val$mainActivity:Lcom/waze/MainActivity;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/waze/NativeCanvas$3;->val$mainActivity:Lcom/waze/MainActivity;

    invoke-virtual {v0}, Lcom/waze/MainActivity;->cancelSplash()V

    .line 294
    return-void
.end method
