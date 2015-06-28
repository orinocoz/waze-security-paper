.class Lcom/waze/reports/AddPlaceNewFragment$5;
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
    iput-object p1, p0, Lcom/waze/reports/AddPlaceNewFragment$5;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$5;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    invoke-virtual {v0}, Lcom/waze/reports/AddPlaceNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/AddPlaceFlowActivity;

    invoke-virtual {v0}, Lcom/waze/reports/AddPlaceFlowActivity;->goToPickCityStreet()V

    .line 306
    return-void
.end method
