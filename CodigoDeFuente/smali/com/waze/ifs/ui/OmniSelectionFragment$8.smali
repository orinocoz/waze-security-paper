.class Lcom/waze/ifs/ui/OmniSelectionFragment$8;
.super Ljava/lang/Object;
.source "OmniSelectionFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$8;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$8;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;

    invoke-virtual {v2, p3, p4}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->getChildIndex(II)I

    move-result v0

    .line 396
    .local v0, position:I
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$8;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;

    invoke-virtual {v2, v0}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsValue;

    .line 398
    .local v1, selected:Lcom/waze/settings/SettingsValue;
    iget-boolean v2, v1, Lcom/waze/settings/SettingsValue;->isSelected:Z

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$8;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #calls: Lcom/waze/ifs/ui/OmniSelectionFragment;->setResultValueAndContinue(ILcom/waze/settings/SettingsValue;Z)V
    invoke-static {v2, v0, v1, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$4(Lcom/waze/ifs/ui/OmniSelectionFragment;ILcom/waze/settings/SettingsValue;Z)V

    .line 407
    :goto_0
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$8;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->notifyDataSetChanged()V

    .line 408
    return v4

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$8;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->getSelectedItem()Lcom/waze/settings/SettingsValue;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$8;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->getSelectedItem()Lcom/waze/settings/SettingsValue;

    move-result-object v2

    iput-boolean v3, v2, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 405
    :cond_1
    iput-boolean v4, v1, Lcom/waze/settings/SettingsValue;->isSelected:Z

    goto :goto_0
.end method
