.class Lcom/waze/reports/PlacePhotoGallery$7;
.super Ljava/lang/Object;
.source "PlacePhotoGallery.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PlacePhotoGallery;->animatePagerOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/PlacePhotoGallery;


# direct methods
.method constructor <init>(Lcom/waze/reports/PlacePhotoGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery$7;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$7;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    invoke-virtual {v0}, Lcom/waze/reports/PlacePhotoGallery;->dismiss()V

    .line 435
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 430
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 427
    return-void
.end method
