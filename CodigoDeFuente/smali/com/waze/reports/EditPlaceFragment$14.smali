.class Lcom/waze/reports/EditPlaceFragment$14;
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
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$14;->this$0:Lcom/waze/reports/EditPlaceFragment;

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$14;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$14;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$11(Lcom/waze/reports/EditPlaceFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/utils/EditTextUtils;->closeKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 709
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$14;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/EditPlaceFlowActivity;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->showReportSubmenu()V

    .line 710
    return-void
.end method
