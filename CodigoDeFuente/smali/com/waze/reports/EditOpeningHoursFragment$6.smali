.class Lcom/waze/reports/EditOpeningHoursFragment$6;
.super Ljava/lang/Object;
.source "EditOpeningHoursFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditOpeningHoursFragment;->addLine(Lcom/waze/reports/OpeningHours;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditOpeningHoursFragment;

.field private final synthetic val$newLine:Landroid/view/View;

.field private final synthetic val$oh:Lcom/waze/reports/OpeningHours;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditOpeningHoursFragment;Landroid/view/View;Lcom/waze/reports/OpeningHours;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditOpeningHoursFragment$6;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    iput-object p2, p0, Lcom/waze/reports/EditOpeningHoursFragment$6;->val$newLine:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/reports/EditOpeningHoursFragment$6;->val$oh:Lcom/waze/reports/OpeningHours;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$6;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mLinesContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->access$5(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$6;->val$newLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$6;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->access$0(Lcom/waze/reports/EditOpeningHoursFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$6;->val$oh:Lcom/waze/reports/OpeningHours;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$6;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mOpeningHours:Lcom/waze/settings/SettingsTitleText;
    invoke-static {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->access$6(Lcom/waze/reports/EditOpeningHoursFragment;)Lcom/waze/settings/SettingsTitleText;

    move-result-object v1

    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$6;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->access$0(Lcom/waze/reports/EditOpeningHoursFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/waze/settings/SettingsTitleText;->setVisibility(I)V

    .line 333
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
