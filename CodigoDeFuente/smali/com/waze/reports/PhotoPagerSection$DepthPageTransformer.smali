.class public Lcom/waze/reports/PhotoPagerSection$DepthPageTransformer;
.super Ljava/lang/Object;
.source "PhotoPagerSection.java"

# interfaces
.implements Lcom/waze/ifs/ui/WazeViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/PhotoPagerSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DepthPageTransformer"
.end annotation


# static fields
.field private static final MIN_SCALE:F = 0.75f


# instance fields
.field final synthetic this$0:Lcom/waze/reports/PhotoPagerSection;


# direct methods
.method public constructor <init>(Lcom/waze/reports/PhotoPagerSection;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection$DepthPageTransformer;->this$0:Lcom/waze/reports/PhotoPagerSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x3f80

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 329
    .local v0, pageWidth:I
    const/high16 v2, -0x4080

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 331
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 356
    :goto_0
    return-void

    .line 333
    :cond_0
    cmpg-float v2, p2, v3

    if-gtz v2, :cond_1

    .line 335
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 336
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 337
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 338
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 340
    :cond_1
    cmpg-float v2, p2, v5

    if-gtz v2, :cond_2

    .line 342
    sub-float v2, v5, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 345
    int-to-float v2, v0

    neg-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 348
    const/high16 v2, 0x3f40

    const/high16 v3, 0x3e80

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 349
    .local v1, scaleFactor:F
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 350
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 354
    .end local v1           #scaleFactor:F
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
