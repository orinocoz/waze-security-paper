.class Lcom/waze/ifs/ui/OmniSelectionFragment$9;
.super Ljava/lang/Object;
.source "OmniSelectionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/OmniSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/OmniSelectionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 422
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$10(Lcom/waze/ifs/ui/OmniSelectionFragment;)[Lcom/waze/settings/SettingsValue;

    move-result-object v2

    if-nez v2, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsMultiSelect:Z
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$1(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 426
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->getSelectedItem()Lcom/waze/settings/SettingsValue;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 427
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->getSelectedItem()Lcom/waze/settings/SettingsValue;

    move-result-object v2

    iput-boolean v3, v2, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 432
    :cond_2
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsFilter:Z
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$15(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 433
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    invoke-virtual {v2, p3}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsValue;

    .line 438
    .local v1, selected:Lcom/waze/settings/SettingsValue;
    :goto_1
    iput-boolean v0, v1, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 440
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAddUserInput:Lcom/waze/settings/SettingsValue;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$6(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/settings/SettingsValue;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 441
    .local v0, bUserInput:Z
    :goto_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAddUserInput:Lcom/waze/settings/SettingsValue;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$6(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/settings/SettingsValue;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAddUserInput:Lcom/waze/settings/SettingsValue;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$6(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/settings/SettingsValue;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    :cond_3
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #calls: Lcom/waze/ifs/ui/OmniSelectionFragment;->setResultValueAndContinue(ILcom/waze/settings/SettingsValue;Z)V
    invoke-static {v2, p3, v1, v0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$4(Lcom/waze/ifs/ui/OmniSelectionFragment;ILcom/waze/settings/SettingsValue;Z)V

    goto :goto_0

    .line 435
    .end local v0           #bUserInput:Z
    .end local v1           #selected:Lcom/waze/settings/SettingsValue;
    :cond_4
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsValue;

    .restart local v1       #selected:Lcom/waze/settings/SettingsValue;
    goto :goto_1

    :cond_5
    move v0, v3

    .line 440
    goto :goto_2

    .line 447
    .end local v1           #selected:Lcom/waze/settings/SettingsValue;
    :cond_6
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$9;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$10(Lcom/waze/ifs/ui/OmniSelectionFragment;)[Lcom/waze/settings/SettingsValue;

    move-result-object v2

    aget-object v2, v2, p3

    iput-boolean v0, v2, Lcom/waze/settings/SettingsValue;->isSelected:Z

    goto :goto_0
.end method
