.class Lcom/waze/OGLRenderer$2;
.super Ljava/lang/Object;
.source "OGLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/OGLRenderer;->init(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/OGLRenderer;


# direct methods
.method constructor <init>(Lcom/waze/OGLRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/OGLRenderer$2;->this$0:Lcom/waze/OGLRenderer;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/waze/OGLRenderer$2;->this$0:Lcom/waze/OGLRenderer;

    #getter for: Lcom/waze/OGLRenderer;->mView:Lcom/waze/MapView;
    invoke-static {v0}, Lcom/waze/OGLRenderer;->access$0(Lcom/waze/OGLRenderer;)Lcom/waze/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MapView;->onGLReady()V

    .line 162
    return-void
.end method
