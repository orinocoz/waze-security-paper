.class Lcom/waze/ifs/ui/OmniSelectionFragment$6;
.super Ljava/lang/Object;
.source "OmniSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/OmniSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/OmniSelectionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$6;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 316
    if-eqz p2, :cond_0

    .line 317
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$6;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mTimesEnteredSearch:I
    invoke-static {v0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$11(Lcom/waze/ifs/ui/OmniSelectionFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mTimesEnteredSearch:I
    invoke-static {v0, v1}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$12(Lcom/waze/ifs/ui/OmniSelectionFragment;I)V

    .line 318
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$6;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/OmniSelectionFragment$IOmniSelect;

    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$6;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mTimesEnteredSearch:I
    invoke-static {v1}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$11(Lcom/waze/ifs/ui/OmniSelectionFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/waze/ifs/ui/OmniSelectionFragment$IOmniSelect;->isSearching(I)V

    .line 320
    :cond_0
    return-void
.end method
