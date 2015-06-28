.class Lcom/waze/ifs/ui/OmniSelectionFragment$4;
.super Ljava/lang/Object;
.source "OmniSelectionFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$4;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 275
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$4;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsAutoComplete:Z
    invoke-static {v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$8(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$4;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAutoCompleteAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;
    invoke-static {v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$9(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$4;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAutoCompleteAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;
    invoke-static {v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$9(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsValue;

    .line 278
    .local v1, selected:Lcom/waze/settings/SettingsValue;
    iget v4, v1, Lcom/waze/settings/SettingsValue;->rank:F

    const/high16 v5, 0x4000

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$4;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAutoCompleteAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;
    invoke-static {v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$9(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;->getOriginalIndex(Lcom/waze/settings/SettingsValue;)I

    move-result v0

    .line 280
    .local v0, pos:I
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$4;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #calls: Lcom/waze/ifs/ui/OmniSelectionFragment;->setResultValueAndContinue(ILcom/waze/settings/SettingsValue;Z)V
    invoke-static {v4, v0, v1, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$4(Lcom/waze/ifs/ui/OmniSelectionFragment;ILcom/waze/settings/SettingsValue;Z)V

    .line 290
    .end local v0           #pos:I
    .end local v1           #selected:Lcom/waze/settings/SettingsValue;
    :cond_0
    :goto_0
    return v2

    .line 285
    :cond_1
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$4;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsUserInput:Z
    invoke-static {v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$5(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$4;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAddUserInput:Lcom/waze/settings/SettingsValue;
    invoke-static {v4}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$6(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/settings/SettingsValue;

    move-result-object v4

    iget-object v4, v4, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 287
    iget-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$4;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    iget-object v5, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$4;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mValues:[Lcom/waze/settings/SettingsValue;
    invoke-static {v5}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$10(Lcom/waze/ifs/ui/OmniSelectionFragment;)[Lcom/waze/settings/SettingsValue;

    move-result-object v5

    array-length v5, v5

    iget-object v6, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$4;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAddUserInput:Lcom/waze/settings/SettingsValue;
    invoke-static {v6}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$6(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/settings/SettingsValue;

    move-result-object v6

    #calls: Lcom/waze/ifs/ui/OmniSelectionFragment;->setResultValueAndContinue(ILcom/waze/settings/SettingsValue;Z)V
    invoke-static {v4, v5, v6, v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$4(Lcom/waze/ifs/ui/OmniSelectionFragment;ILcom/waze/settings/SettingsValue;Z)V

    :cond_2
    move v2, v3

    .line 290
    goto :goto_0
.end method
