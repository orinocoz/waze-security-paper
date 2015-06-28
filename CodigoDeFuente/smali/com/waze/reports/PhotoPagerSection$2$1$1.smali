.class Lcom/waze/reports/PhotoPagerSection$2$1$1;
.super Ljava/lang/Object;
.source "PhotoPagerSection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PhotoPagerSection$2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/reports/PhotoPagerSection$2$1;


# direct methods
.method constructor <init>(Lcom/waze/reports/PhotoPagerSection$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection$2$1$1;->this$2:Lcom/waze/reports/PhotoPagerSection$2$1;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$2$1$1;->this$2:Lcom/waze/reports/PhotoPagerSection$2$1;

    #getter for: Lcom/waze/reports/PhotoPagerSection$2$1;->this$1:Lcom/waze/reports/PhotoPagerSection$2;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection$2$1;->access$0(Lcom/waze/reports/PhotoPagerSection$2$1;)Lcom/waze/reports/PhotoPagerSection$2;

    move-result-object v0

    #getter for: Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection$2;->access$1(Lcom/waze/reports/PhotoPagerSection$2;)Lcom/waze/reports/PhotoPagerSection;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/waze/reports/PhotoPagerSection;->mGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v0, v1}, Lcom/waze/reports/PhotoPagerSection;->access$3(Lcom/waze/reports/PhotoPagerSection;Lcom/waze/reports/PlacePhotoGallery;)V

    .line 267
    return-void
.end method
