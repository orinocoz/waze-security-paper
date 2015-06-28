.class public abstract Lcom/tokenautocomplete/FilteredArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FilteredArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private filter:Landroid/widget/Filter;

.field private originalObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/tokenautocomplete/FilteredArrayAdapter;,"Lcom/tokenautocomplete/FilteredArrayAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 77
    iput-object p4, p0, Lcom/tokenautocomplete/FilteredArrayAdapter;->originalObjects:Ljava/util/List;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "objects"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/tokenautocomplete/FilteredArrayAdapter;,"Lcom/tokenautocomplete/FilteredArrayAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tokenautocomplete/FilteredArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/tokenautocomplete/FilteredArrayAdapter;,"Lcom/tokenautocomplete/FilteredArrayAdapter<TT;>;"
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tokenautocomplete/FilteredArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "objects"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/tokenautocomplete/FilteredArrayAdapter;,"Lcom/tokenautocomplete/FilteredArrayAdapter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tokenautocomplete/FilteredArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 96
    .local p0, this:Lcom/tokenautocomplete/FilteredArrayAdapter;,"Lcom/tokenautocomplete/FilteredArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/tokenautocomplete/FilteredArrayAdapter;->filter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;

    iget-object v1, p0, Lcom/tokenautocomplete/FilteredArrayAdapter;->originalObjects:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;-><init>(Lcom/tokenautocomplete/FilteredArrayAdapter;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tokenautocomplete/FilteredArrayAdapter;->filter:Landroid/widget/Filter;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/FilteredArrayAdapter;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method protected abstract keepObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 83
    .local p0, this:Lcom/tokenautocomplete/FilteredArrayAdapter;,"Lcom/tokenautocomplete/FilteredArrayAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/FilteredArrayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    check-cast v0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;

    iget-object v1, p0, Lcom/tokenautocomplete/FilteredArrayAdapter;->originalObjects:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->setSourceObjects(Ljava/util/List;)V

    .line 84
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    .prologue
    .line 90
    .local p0, this:Lcom/tokenautocomplete/FilteredArrayAdapter;,"Lcom/tokenautocomplete/FilteredArrayAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/tokenautocomplete/FilteredArrayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    check-cast v0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;

    iget-object v1, p0, Lcom/tokenautocomplete/FilteredArrayAdapter;->originalObjects:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->setSourceObjects(Ljava/util/List;)V

    .line 91
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 92
    return-void
.end method
