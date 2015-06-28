.class public Lcom/waze/selectionlist/SelectionListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private selection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"
    .parameter "selection"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 19
    iput p4, p0, Lcom/waze/selectionlist/SelectionListAdapter;->selection:I

    .line 20
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/16 v10, 0x8

    const/4 v8, 0x0

    .line 23
    move-object v4, p2

    .line 24
    .local v4, row:Landroid/view/View;
    if-nez v4, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/waze/selectionlist/SelectionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "layout_inflater"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 27
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030075

    invoke-virtual {v3, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 30
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v6, 0x7f090371

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, bg:Landroid/view/View;
    const v6, 0x7f0901f8

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 32
    .local v5, top:Landroid/view/View;
    const v6, 0x7f0901fc

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, bottom:Landroid/view/View;
    invoke-virtual {p0}, Lcom/waze/selectionlist/SelectionListAdapter;->getCount()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 34
    const v6, 0x7f020225

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_0
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    const v6, 0x7f090372

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 53
    .local v2, ctv:Landroid/widget/CheckedTextView;
    invoke-virtual {p0, p1}, Lcom/waze/selectionlist/SelectionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget v6, p0, Lcom/waze/selectionlist/SelectionListAdapter;->selection:I

    if-ne p1, v6, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 56
    return-object v4

    .line 37
    .end local v2           #ctv:Landroid/widget/CheckedTextView;
    :cond_1
    if-nez p1, :cond_2

    .line 38
    const v6, 0x7f020226

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/waze/selectionlist/SelectionListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_3

    .line 42
    const v6, 0x7f020223

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_3
    const v6, 0x7f020224

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 47
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .restart local v2       #ctv:Landroid/widget/CheckedTextView;
    :cond_4
    move v6, v8

    .line 54
    goto :goto_1
.end method

.method public select(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 60
    iput p1, p0, Lcom/waze/selectionlist/SelectionListAdapter;->selection:I

    .line 61
    invoke-virtual {p0}, Lcom/waze/selectionlist/SelectionListAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method
