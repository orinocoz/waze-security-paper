.class Lcom/waze/reports/AddPlaceNewFragment$7;
.super Ljava/lang/Object;
.source "AddPlaceNewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/AddPlaceNewFragment;->setUpFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/AddPlaceNewFragment;

.field timesWaited:I


# direct methods
.method constructor <init>(Lcom/waze/reports/AddPlaceNewFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AddPlaceNewFragment$7;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/reports/AddPlaceNewFragment$7;->timesWaited:I

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/AddPlaceNewFragment$7;)Lcom/waze/reports/AddPlaceNewFragment;
    .locals 1
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$7;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 356
    iget v0, p0, Lcom/waze/reports/AddPlaceNewFragment$7;->timesWaited:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/reports/AddPlaceNewFragment$7;->timesWaited:I

    .line 357
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$7;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceNewFragment;->access$6(Lcom/waze/reports/AddPlaceNewFragment;)Lcom/waze/MapView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment$7;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mMapImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/waze/reports/AddPlaceNewFragment;->access$9(Lcom/waze/reports/AddPlaceNewFragment;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/waze/reports/AddPlaceNewFragment$7$1;

    invoke-direct {v2, p0}, Lcom/waze/reports/AddPlaceNewFragment$7$1;-><init>(Lcom/waze/reports/AddPlaceNewFragment$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/waze/MapView;->setImageViewToRender(Landroid/widget/ImageView;Lcom/waze/OGLRenderer$OnRenderListener;)V

    .line 367
    iget v0, p0, Lcom/waze/reports/AddPlaceNewFragment$7;->timesWaited:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$7;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceNewFragment;->access$6(Lcom/waze/reports/AddPlaceNewFragment;)Lcom/waze/MapView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment$7;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/reports/AddPlaceNewFragment;->access$7(Lcom/waze/reports/AddPlaceNewFragment;)Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lcom/waze/reports/AddPlaceNewFragment$7;->timesWaited:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    :cond_0
    return-void
.end method
