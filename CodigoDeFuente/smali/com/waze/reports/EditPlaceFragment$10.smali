.class Lcom/waze/reports/EditPlaceFragment$10;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFragment;->setUpFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFragment;

.field timesWaited:I


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$10;->this$0:Lcom/waze/reports/EditPlaceFragment;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/reports/EditPlaceFragment$10;->timesWaited:I

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/EditPlaceFragment$10;)Lcom/waze/reports/EditPlaceFragment;
    .locals 1
    .parameter

    .prologue
    .line 584
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$10;->this$0:Lcom/waze/reports/EditPlaceFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 589
    iget v0, p0, Lcom/waze/reports/EditPlaceFragment$10;->timesWaited:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/reports/EditPlaceFragment$10;->timesWaited:I

    .line 590
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$10;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$15(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/MapView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$10;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mMapImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$16(Lcom/waze/reports/EditPlaceFragment;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/waze/reports/EditPlaceFragment$10$1;

    invoke-direct {v2, p0}, Lcom/waze/reports/EditPlaceFragment$10$1;-><init>(Lcom/waze/reports/EditPlaceFragment$10;)V

    invoke-virtual {v0, v1, v2}, Lcom/waze/MapView;->setImageViewToRender(Landroid/widget/ImageView;Lcom/waze/OGLRenderer$OnRenderListener;)V

    .line 600
    iget v0, p0, Lcom/waze/reports/EditPlaceFragment$10;->timesWaited:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$10;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$15(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/MapView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$10;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$17(Lcom/waze/reports/EditPlaceFragment;)Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lcom/waze/reports/EditPlaceFragment$10;->timesWaited:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 603
    :cond_0
    return-void
.end method
