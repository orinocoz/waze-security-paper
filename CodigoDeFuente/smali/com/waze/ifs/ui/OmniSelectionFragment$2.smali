.class Lcom/waze/ifs/ui/OmniSelectionFragment$2;
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
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$2;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$2;->this$0:Lcom/waze/ifs/ui/OmniSelectionFragment;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/OmniSelectionFragment$IOmniSelect;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/waze/ifs/ui/OmniSelectionFragment$IOmniSelect;->omniSelected(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 220
    return-void
.end method
