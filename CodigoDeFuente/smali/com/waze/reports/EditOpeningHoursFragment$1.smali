.class Lcom/waze/reports/EditOpeningHoursFragment$1;
.super Ljava/lang/Object;
.source "EditOpeningHoursFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditOpeningHoursFragment;->setUpFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditOpeningHoursFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditOpeningHoursFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditOpeningHoursFragment$1;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$1;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    invoke-virtual {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/EditPlaceFlowActivity;

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$1;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$0(Lcom/waze/reports/EditOpeningHoursFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditPlaceFlowActivity;->doneOpeningHours(Ljava/util/ArrayList;)V

    .line 161
    return-void
.end method
