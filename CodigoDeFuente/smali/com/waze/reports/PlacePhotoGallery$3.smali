.class Lcom/waze/reports/PlacePhotoGallery$3;
.super Ljava/lang/Object;
.source "PlacePhotoGallery.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PlacePhotoGallery;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/os/Bundle;Lcom/waze/ifs/ui/ActivityBase;)V
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
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery$3;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$3;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;
    invoke-static {v0}, Lcom/waze/reports/PlacePhotoGallery;->access$8(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/ifs/ui/WazeViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/ifs/ui/WazeViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 286
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$3;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #calls: Lcom/waze/reports/PlacePhotoGallery;->animatePagerIn()V
    invoke-static {v0}, Lcom/waze/reports/PlacePhotoGallery;->access$9(Lcom/waze/reports/PlacePhotoGallery;)V

    .line 287
    return-void
.end method
