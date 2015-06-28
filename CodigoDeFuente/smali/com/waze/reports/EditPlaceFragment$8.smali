.class Lcom/waze/reports/EditPlaceFragment$8;
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
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$8;->this$0:Lcom/waze/reports/EditPlaceFragment;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$8;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/EditPlaceFlowActivity;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->goToPickCityStreet()V

    .line 549
    return-void
.end method
