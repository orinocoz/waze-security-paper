.class Lcom/waze/reports/PlacePhotoGallery$6;
.super Ljava/lang/Object;
.source "PlacePhotoGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PlacePhotoGallery;->showFlagSubmenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/PlacePhotoGallery;

.field private final synthetic val$optionValues:[I

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/waze/reports/PlacePhotoGallery;[II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery$6;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    iput-object p2, p0, Lcom/waze/reports/PlacePhotoGallery$6;->val$optionValues:[I

    iput p3, p0, Lcom/waze/reports/PlacePhotoGallery$6;->val$position:I

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 377
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$6;->val$optionValues:[I

    aget v0, v1, p2

    .line 378
    .local v0, reason:I
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$6;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    invoke-static {v1}, Lcom/waze/reports/PlacePhotoGallery;->access$6(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    move-result-object v1

    iget v2, p0, Lcom/waze/reports/PlacePhotoGallery$6;->val$position:I

    invoke-interface {v1, v2, v0}, Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;->onFlag(II)V

    .line 379
    return-void
.end method
