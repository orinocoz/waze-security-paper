.class final Lcom/waze/ScreenShotManager$ScaleEffectView;
.super Landroid/view/View;
.source "ScreenShotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ScreenShotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScaleEffectView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ScreenShotManager;


# direct methods
.method public constructor <init>(Lcom/waze/ScreenShotManager;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter "aContext"
    .parameter "aBitmap"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/waze/ScreenShotManager$ScaleEffectView;->this$0:Lcom/waze/ScreenShotManager;

    .line 220
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/ScreenShotManager$ScaleEffectView;->setFocusable(Z)V

    .line 223
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/waze/ScreenShotManager$ScaleEffectView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    return-void
.end method
