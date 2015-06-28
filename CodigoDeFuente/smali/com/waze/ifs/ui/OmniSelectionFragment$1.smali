.class Lcom/waze/ifs/ui/OmniSelectionFragment$1;
.super Ljava/lang/Object;
.source "OmniSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$1;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$1;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsMultiSelect:Z
    invoke-static {v1}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$1(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$1;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mIsExpandable:Z
    invoke-static {v1}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$2(Lcom/waze/ifs/ui/OmniSelectionFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$1;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v1}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->getSelectedItem()Lcom/waze/settings/SettingsValue;

    move-result-object v0

    .line 202
    .local v0, selected:Lcom/waze/settings/SettingsValue;
    if-eqz v0, :cond_1

    .line 203
    iget-object v1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$1;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$1;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$3(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->getSelectedPosition()I

    move-result v2

    const/4 v3, 0x0

    #calls: Lcom/waze/ifs/ui/OmniSelectionFragment;->setResultValueAndContinue(ILcom/waze/settings/SettingsValue;Z)V
    invoke-static {v1, v2, v0, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$4(Lcom/waze/ifs/ui/OmniSelectionFragment;ILcom/waze/settings/SettingsValue;Z)V

    .line 207
    .end local v0           #selected:Lcom/waze/settings/SettingsValue;
    :cond_1
    return-void
.end method
