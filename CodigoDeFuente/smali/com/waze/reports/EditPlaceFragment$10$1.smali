.class Lcom/waze/reports/EditPlaceFragment$10$1;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Lcom/waze/OGLRenderer$OnRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFragment$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/EditPlaceFragment$10;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$10$1;->this$1:Lcom/waze/reports/EditPlaceFragment$10;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 594
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$10$1;->this$1:Lcom/waze/reports/EditPlaceFragment$10;

    #getter for: Lcom/waze/reports/EditPlaceFragment$10;->this$0:Lcom/waze/reports/EditPlaceFragment;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment$10;->access$0(Lcom/waze/reports/EditPlaceFragment$10;)Lcom/waze/reports/EditPlaceFragment;

    move-result-object v0

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$15(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/MapView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/waze/MapView;->setImageViewToRender(Landroid/widget/ImageView;Lcom/waze/OGLRenderer$OnRenderListener;)V

    .line 595
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$10$1;->this$1:Lcom/waze/reports/EditPlaceFragment$10;

    iget v0, v0, Lcom/waze/reports/EditPlaceFragment$10;->timesWaited:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 596
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$10$1;->this$1:Lcom/waze/reports/EditPlaceFragment$10;

    #getter for: Lcom/waze/reports/EditPlaceFragment$10;->this$0:Lcom/waze/reports/EditPlaceFragment;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment$10;->access$0(Lcom/waze/reports/EditPlaceFragment$10;)Lcom/waze/reports/EditPlaceFragment;

    move-result-object v0

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$15(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/MapView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->setVisibility(I)V

    .line 598
    :cond_0
    return-void
.end method
