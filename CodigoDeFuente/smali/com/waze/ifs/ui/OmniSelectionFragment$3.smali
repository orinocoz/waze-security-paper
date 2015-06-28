.class Lcom/waze/ifs/ui/OmniSelectionFragment$3;
.super Ljava/lang/Object;
.source "OmniSelectionFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 269
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 266
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 243
    iget-object v3, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v3

    instance-of v3, v3, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    if-eqz v3, :cond_3

    .line 244
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, trimmed:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z
    invoke-static {v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$5(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAddUserInput:Lcom/waze/settings/SettingsValue;
    invoke-static {v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$6(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/settings/SettingsValue;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mUserInputFormat:Ljava/lang/String;
    invoke-static {v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$7(Lcom/waze/ifs/ui/OmniSelectionFragment;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    .line 247
    iget-object v3, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAddUserInput:Lcom/waze/settings/SettingsValue;
    invoke-static {v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$6(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/settings/SettingsValue;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    .line 249
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 250
    .local v0, longEnough:Z
    :goto_0
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->setShowLastItem(Z)V

    .line 251
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->setBoldLastItem(Z)V

    .line 257
    .end local v0           #longEnough:Z
    :goto_1
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 263
    .end local v1           #trimmed:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .restart local v1       #trimmed:Ljava/lang/String;
    :cond_1
    move v0, v2

    .line 249
    goto :goto_0

    .line 253
    :cond_2
    iget-object v3, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->setShowLastItem(Z)V

    .line 254
    iget-object v3, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->setBoldLastItem(Z)V

    goto :goto_1

    .line 258
    .end local v1           #trimmed:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;

    if-eqz v2, :cond_4

    .line 259
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectExpandableAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 260
    :cond_4
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$8(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$3;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAutoCompleteAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$9(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
