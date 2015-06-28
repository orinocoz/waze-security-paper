.class Lcom/waze/reports/PlacePhotoGallery$1;
.super Ljava/lang/Object;
.source "PlacePhotoGallery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery$1;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$1;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #calls: Lcom/waze/reports/PlacePhotoGallery;->animatePagerOut()V
    invoke-static {v0}, Lcom/waze/reports/PlacePhotoGallery;->access$0(Lcom/waze/reports/PlacePhotoGallery;)V

    .line 89
    return-void
.end method
