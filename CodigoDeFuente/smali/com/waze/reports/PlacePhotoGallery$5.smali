.class Lcom/waze/reports/PlacePhotoGallery$5;
.super Ljava/lang/Object;
.source "PlacePhotoGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PlacePhotoGallery;->areYouSureDelete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/PlacePhotoGallery;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/waze/reports/PlacePhotoGallery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery$5;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    iput p2, p0, Lcom/waze/reports/PlacePhotoGallery$5;->val$position:I

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 314
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$5;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    invoke-static {v0}, Lcom/waze/reports/PlacePhotoGallery;->access$6(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    move-result-object v0

    iget v1, p0, Lcom/waze/reports/PlacePhotoGallery$5;->val$position:I

    invoke-interface {v0, v1}, Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;->onDelete(I)V

    .line 317
    :cond_0
    return-void
.end method
