.class public Lcom/waze/ifs/ui/OmniSelectionFragment$AutoCompleteOmniSelectAdapter;
.super Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;
.source "OmniSelectionFragment.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/OmniSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCompleteOmniSelectAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;-><init>(Landroid/content/Context;)V

    .line 1006
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1010
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/OmniSelectionFragment$FilteredOmniSelectAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1011
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0904cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    return-object v0
.end method
