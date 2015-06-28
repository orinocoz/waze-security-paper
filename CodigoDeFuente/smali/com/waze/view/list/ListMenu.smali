.class public Lcom/waze/view/list/ListMenu;
.super Landroid/widget/RelativeLayout;
.source "ListMenu.java"


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 29
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030077

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    const v1, 0x7f090376

    invoke-virtual {p0, v1}, Lcom/waze/view/list/ListMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/waze/view/list/ListMenu;->mListView:Landroid/widget/ListView;

    .line 31
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/waze/view/list/ListMenu;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public setAdapter(Lcom/waze/view/list/ListMenuAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/waze/view/list/ListMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    return-void
.end method
