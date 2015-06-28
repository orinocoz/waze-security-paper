.class Lcom/waze/ScreenShotManager$1;
.super Ljava/lang/Object;
.source "ScreenShotManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ScreenShotManager;->DrawScaledImage(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ScreenShotManager;

.field private final synthetic val$context:Lcom/waze/MainActivity;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/ScreenShotManager;Lcom/waze/MainActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ScreenShotManager$1;->this$0:Lcom/waze/ScreenShotManager;

    iput-object p2, p0, Lcom/waze/ScreenShotManager$1;->val$context:Lcom/waze/MainActivity;

    iput-object p3, p0, Lcom/waze/ScreenShotManager$1;->val$view:Landroid/view/View;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 125
    iget-object v0, p0, Lcom/waze/ScreenShotManager$1;->val$context:Lcom/waze/MainActivity;

    iget-object v1, p0, Lcom/waze/ScreenShotManager$1;->val$view:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 126
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/waze/MainActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v0, p0, Lcom/waze/ScreenShotManager$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 128
    return-void
.end method
