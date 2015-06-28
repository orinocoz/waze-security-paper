.class Lcom/waze/ScreenShotManager$2;
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

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/ScreenShotManager;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ScreenShotManager$2;->this$0:Lcom/waze/ScreenShotManager;

    iput-object p2, p0, Lcom/waze/ScreenShotManager$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/ScreenShotManager$2;->val$bmp:Landroid/graphics/Bitmap;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/waze/ScreenShotManager$2;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/waze/ScreenShotManager$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    return-void
.end method
