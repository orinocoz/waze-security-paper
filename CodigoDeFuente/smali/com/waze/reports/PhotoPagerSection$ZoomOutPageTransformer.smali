.class public Lcom/waze/reports/PhotoPagerSection$ZoomOutPageTransformer;
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
    name = "ZoomOutPageTransformer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/PhotoPagerSection;


# direct methods
.method public constructor <init>(Lcom/waze/reports/PhotoPagerSection;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection$ZoomOutPageTransformer;->this$0:Lcom/waze/reports/PhotoPagerSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    const/high16 v3, 0x3f80

    .line 369
    const/high16 v1, -0x4080

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 373
    cmpg-float v1, p2, v3

    if-gtz v1, :cond_0

    .line 375
    const v1, 0x3f59999a

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 385
    .local v0, scaleFactor:F
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 386
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 396
    .end local v0           #scaleFactor:F
    :cond_0
    return-void
.end method
