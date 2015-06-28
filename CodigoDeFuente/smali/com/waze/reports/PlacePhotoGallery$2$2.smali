.class Lcom/waze/reports/PlacePhotoGallery$2$2;
.super Ljava/lang/Object;
.source "PlacePhotoGallery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PlacePhotoGallery$2;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/PlacePhotoGallery$2;


# direct methods
.method constructor <init>(Lcom/waze/reports/PlacePhotoGallery$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery$2$2;->this$1:Lcom/waze/reports/PlacePhotoGallery$2;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$2$2;->this$1:Lcom/waze/reports/PlacePhotoGallery$2;

    #getter for: Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v0}, Lcom/waze/reports/PlacePhotoGallery$2;->access$0(Lcom/waze/reports/PlacePhotoGallery$2;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v0

    #calls: Lcom/waze/reports/PlacePhotoGallery;->animatePagerOut()V
    invoke-static {v0}, Lcom/waze/reports/PlacePhotoGallery;->access$0(Lcom/waze/reports/PlacePhotoGallery;)V

    .line 179
    return-void
.end method
