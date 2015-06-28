.class Lcom/waze/reports/AddPlaceNewFragment$7$1;
.super Ljava/lang/Object;
.source "AddPlaceNewFragment.java"

# interfaces
.implements Lcom/waze/OGLRenderer$OnRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/AddPlaceNewFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/AddPlaceNewFragment$7;


# direct methods
.method constructor <init>(Lcom/waze/reports/AddPlaceNewFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AddPlaceNewFragment$7$1;->this$1:Lcom/waze/reports/AddPlaceNewFragment$7;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$7$1;->this$1:Lcom/waze/reports/AddPlaceNewFragment$7;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment$7;->this$0:Lcom/waze/reports/AddPlaceNewFragment;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceNewFragment$7;->access$0(Lcom/waze/reports/AddPlaceNewFragment$7;)Lcom/waze/reports/AddPlaceNewFragment;

    move-result-object v0

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceNewFragment;->access$6(Lcom/waze/reports/AddPlaceNewFragment;)Lcom/waze/MapView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/waze/MapView;->setImageViewToRender(Landroid/widget/ImageView;Lcom/waze/OGLRenderer$OnRenderListener;)V

    .line 362
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$7$1;->this$1:Lcom/waze/reports/AddPlaceNewFragment$7;

    iget v0, v0, Lcom/waze/reports/AddPlaceNewFragment$7;->timesWaited:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$7$1;->this$1:Lcom/waze/reports/AddPlaceNewFragment$7;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment$7;->this$0:Lcom/waze/reports/AddPlaceNewFragment;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceNewFragment$7;->access$0(Lcom/waze/reports/AddPlaceNewFragment$7;)Lcom/waze/reports/AddPlaceNewFragment;

    move-result-object v0

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceNewFragment;->access$6(Lcom/waze/reports/AddPlaceNewFragment;)Lcom/waze/MapView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->setVisibility(I)V

    .line 365
    :cond_0
    return-void
.end method
