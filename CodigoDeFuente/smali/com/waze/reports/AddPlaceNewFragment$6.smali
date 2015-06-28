.class Lcom/waze/reports/AddPlaceNewFragment$6;
.super Ljava/lang/Object;
.source "AddPlaceNewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/waze/reports/AddPlaceNewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AddPlaceNewFragment$6;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$6;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceNewFragment;->access$6(Lcom/waze/reports/AddPlaceNewFragment;)Lcom/waze/MapView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment$6;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/reports/AddPlaceNewFragment;->access$7(Lcom/waze/reports/AddPlaceNewFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 344
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$6;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    invoke-virtual {v0}, Lcom/waze/reports/AddPlaceNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment$6;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/reports/AddPlaceNewFragment;->access$8(Lcom/waze/reports/AddPlaceNewFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/utils/EditTextUtils;->closeKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 345
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$6;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    invoke-virtual {v0}, Lcom/waze/reports/AddPlaceNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/AddPlaceFlowActivity;

    invoke-virtual {v0}, Lcom/waze/reports/AddPlaceFlowActivity;->goToEditMap()V

    .line 346
    return-void
.end method
