.class Lcom/waze/ifs/ui/OmniSelectionFragment$5;
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
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$5;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 305
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$5;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAutoCompleteAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$9(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsValue;

    .line 306
    .local v1, selected:Lcom/waze/settings/SettingsValue;
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$5;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    #getter for: Lcom/waze/ifs/ui/OmniSelectionFragment;->mAutoCompleteAdapter:Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;
    invoke-static {v2}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$9(Lcom/waze/ifs/ui/OmniSelectionFragment;)Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;->getOriginalIndex(Lcom/waze/settings/SettingsValue;)I

    move-result v0

    .line 307
    .local v0, pos:I
    iget-object v2, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$5;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    const/4 v3, 0x0

    #calls: Lcom/waze/ifs/ui/OmniSelectionFragment;->setResultValueAndContinue(ILcom/waze/settings/SettingsValue;Z)V
    invoke-static {v2, v0, v1, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->access$4(Lcom/waze/ifs/ui/OmniSelectionFragment;ILcom/waze/settings/SettingsValue;Z)V

    .line 308
    return-void
.end method
