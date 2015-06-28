.class Lcom/waze/OGLRenderer$1;
.super Ljava/lang/Object;
.source "OGLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/OGLRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/OGLRenderer;

.field private final synthetic val$height:I

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/waze/OGLRenderer;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/OGLRenderer$1;->this$0:Lcom/waze/OGLRenderer;

    iput p2, p0, Lcom/waze/OGLRenderer$1;->val$width:I

    iput p3, p0, Lcom/waze/OGLRenderer$1;->val$height:I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/waze/OGLRenderer$1;->this$0:Lcom/waze/OGLRenderer;

    #getter for: Lcom/waze/OGLRenderer;->mView:Lcom/waze/MapView;
    invoke-static {v0}, Lcom/waze/OGLRenderer;->access$0(Lcom/waze/OGLRenderer;)Lcom/waze/MapView;

    move-result-object v0

    iget v1, p0, Lcom/waze/OGLRenderer$1;->val$width:I

    iget v2, p0, Lcom/waze/OGLRenderer$1;->val$height:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/MapView;->surfaceChangedCompleted(II)V

    .line 111
    return-void
.end method
