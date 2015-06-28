.class Lcom/waze/reports/SimpleChoiceFragment$3;
.super Ljava/lang/Object;
.source "SimpleChoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/SimpleChoiceFragment;->addChoice(Landroid/view/ViewGroup;Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/SimpleChoiceFragment;

.field private final synthetic val$choice:Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/reports/SimpleChoiceFragment;Landroid/view/View;Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/SimpleChoiceFragment$3;->this$0:Lcom/waze/reports/SimpleChoiceFragment;

    iput-object p2, p0, Lcom/waze/reports/SimpleChoiceFragment$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/reports/SimpleChoiceFragment$3;->val$choice:Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const v2, 0x7f09065d

    .line 221
    iget-object v0, p0, Lcom/waze/reports/SimpleChoiceFragment$3;->this$0:Lcom/waze/reports/SimpleChoiceFragment;

    #getter for: Lcom/waze/reports/SimpleChoiceFragment;->mSelectedView:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/reports/SimpleChoiceFragment;->access$1(Lcom/waze/reports/SimpleChoiceFragment;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/SimpleChoiceFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/waze/reports/SimpleChoiceFragment$3;->this$0:Lcom/waze/reports/SimpleChoiceFragment;

    #getter for: Lcom/waze/reports/SimpleChoiceFragment;->mSelectedView:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/reports/SimpleChoiceFragment;->access$1(Lcom/waze/reports/SimpleChoiceFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/waze/reports/SimpleChoiceFragment$3;->this$0:Lcom/waze/reports/SimpleChoiceFragment;

    #getter for: Lcom/waze/reports/SimpleChoiceFragment;->mSelectedView:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/reports/SimpleChoiceFragment;->access$1(Lcom/waze/reports/SimpleChoiceFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/waze/reports/SimpleChoiceFragment$3;->this$0:Lcom/waze/reports/SimpleChoiceFragment;

    iget-object v1, p0, Lcom/waze/reports/SimpleChoiceFragment$3;->val$view:Landroid/view/View;

    #setter for: Lcom/waze/reports/SimpleChoiceFragment;->mSelectedView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/waze/reports/SimpleChoiceFragment;->access$2(Lcom/waze/reports/SimpleChoiceFragment;Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/waze/reports/SimpleChoiceFragment$3;->this$0:Lcom/waze/reports/SimpleChoiceFragment;

    iget-object v1, p0, Lcom/waze/reports/SimpleChoiceFragment$3;->val$choice:Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    #setter for: Lcom/waze/reports/SimpleChoiceFragment;->mChoice:Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;
    invoke-static {v0, v1}, Lcom/waze/reports/SimpleChoiceFragment;->access$3(Lcom/waze/reports/SimpleChoiceFragment;Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;)V

    goto :goto_0
.end method
