.class Lcom/waze/navigate/AddFavoriteActivity$1;
.super Landroid/view/animation/Animation;
.source "AddFavoriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddFavoriteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddFavoriteActivity;

.field private final synthetic val$grid:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddFavoriteActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddFavoriteActivity$1;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    iput-object p2, p0, Lcom/waze/navigate/AddFavoriteActivity$1;->val$grid:Landroid/view/View;

    .line 90
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v8, 0x4348

    const/high16 v7, 0x4000

    const-wide v5, 0x400921fb54442d18L

    .line 93
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 94
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteActivity$1;->val$grid:Landroid/view/View;

    mul-float v1, p1, v7

    float-to-double v1, v1

    mul-double/2addr v1, v5

    const-wide v3, 0x400599999999999aL

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 95
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteActivity$1;->val$grid:Landroid/view/View;

    mul-float v1, p1, v7

    float-to-double v1, v1

    mul-double/2addr v1, v5

    const-wide v3, 0x4002666666666666L

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 96
    return-void
.end method
