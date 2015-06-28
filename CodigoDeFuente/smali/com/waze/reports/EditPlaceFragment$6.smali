.class Lcom/waze/reports/EditPlaceFragment$6;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$6;->this$0:Lcom/waze/reports/EditPlaceFragment;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 456
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$6;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$10(Lcom/waze/reports/EditPlaceFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    :goto_0
    return-void

    .line 458
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 459
    .local v0, cameraButtonLocation:Landroid/os/Bundle;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 460
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 461
    const-string v2, "left"

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 462
    const-string v2, "top"

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const-string v2, "width"

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    const-string v2, "height"

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$6;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v2}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment$6;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;
    invoke-static {v3}, Lcom/waze/reports/EditPlaceFragment;->access$11(Lcom/waze/reports/EditPlaceFragment;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/waze/utils/EditTextUtils;->closeKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 468
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$6;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v2}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/waze/reports/EditPlaceFlowActivity;

    invoke-virtual {v2, v0}, Lcom/waze/reports/EditPlaceFlowActivity;->goToTakePhoto(Landroid/os/Bundle;)V

    goto :goto_0
.end method
