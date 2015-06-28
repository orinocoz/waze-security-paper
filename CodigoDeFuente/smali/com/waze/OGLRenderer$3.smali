.class Lcom/waze/OGLRenderer$3;
.super Ljava/lang/Object;
.source "OGLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/OGLRenderer;->renderImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/OGLRenderer;

.field private final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/waze/OGLRenderer;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/OGLRenderer$3;->this$0:Lcom/waze/OGLRenderer;

    iput-object p2, p0, Lcom/waze/OGLRenderer$3;->val$b:Landroid/graphics/Bitmap;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/waze/OGLRenderer$3;->this$0:Lcom/waze/OGLRenderer;

    iget-object v0, v0, Lcom/waze/OGLRenderer;->toRender:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/waze/OGLRenderer$3;->this$0:Lcom/waze/OGLRenderer;

    iget-object v0, v0, Lcom/waze/OGLRenderer;->toRender:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/waze/OGLRenderer$3;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 513
    iget-object v0, p0, Lcom/waze/OGLRenderer$3;->this$0:Lcom/waze/OGLRenderer;

    iget-object v0, v0, Lcom/waze/OGLRenderer;->mOnRenderListener:Lcom/waze/OGLRenderer$OnRenderListener;

    invoke-interface {v0}, Lcom/waze/OGLRenderer$OnRenderListener;->onRender()V

    .line 515
    :cond_0
    return-void
.end method
