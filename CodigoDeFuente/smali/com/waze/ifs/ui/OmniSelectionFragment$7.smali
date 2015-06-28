.class Lcom/waze/ifs/ui/OmniSelectionFragment$7;
.super Ljava/lang/Object;
.source "OmniSelectionFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


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

.field private final synthetic val$lv:Landroid/widget/ExpandableListView;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/OmniSelectionFragment;Landroid/widget/ExpandableListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    iput-object p2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->val$lv:Landroid/widget/ExpandableListView;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 356
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;

    invoke-virtual {v2, p3, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->getChildIndex(II)I

    move-result v0

    .line 358
    .local v0, position:I
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;

    invoke-virtual {v2, v0}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectExpandableAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsValue;

    .line 360
    .local v1, selected:Lcom/waze/settings/SettingsValue;
    iget-boolean v2, v1, Lcom/waze/settings/SettingsValue;->isSelected:Z

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #calls: Lcom/waze/ifs/ui/OmniSelectionFragment;->setResultValueAndContinue(ILcom/waze/settings/SettingsValue;Z)V
    invoke-static {v2, v0, v1, v5}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$4(Lcom/waze/ifs/ui/OmniSelectionFragment;ILcom/waze/settings/SettingsValue;Z)V

    .line 384
    :goto_0
    return v4

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->getSelectedItem()Lcom/waze/settings/SettingsValue;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->getSelectedItem()Lcom/waze/settings/SettingsValue;

    move-result-object v2

    iput-boolean v5, v2, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 369
    :cond_1
    iput-boolean v4, v1, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 371
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->val$lv:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->val$lv:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 373
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #setter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mPrevGroup:I
    invoke-static {v2, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$13(Lcom/waze/ifs/ui/OmniSelectionFragment;I)V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->val$lv:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 376
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mPrevGroup:I
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$14(Lcom/waze/ifs/ui/OmniSelectionFragment;)I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 377
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->val$lv:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mPrevGroup:I
    invoke-static {v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$14(Lcom/waze/ifs/ui/OmniSelectionFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 379
    :cond_3
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #setter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mPrevGroup:I
    invoke-static {v2, p3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$13(Lcom/waze/ifs/ui/OmniSelectionFragment;I)V

    .line 381
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$7;->val$lv:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p3}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method
