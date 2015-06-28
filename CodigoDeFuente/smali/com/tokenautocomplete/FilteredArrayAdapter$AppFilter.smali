.class Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;
.super Landroid/widget/Filter;
.source "FilteredArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/FilteredArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppFilter"
.end annotation


# instance fields
.field private sourceObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tokenautocomplete/FilteredArrayAdapter;


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/FilteredArrayAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->this$0:Lcom/tokenautocomplete/FilteredArrayAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 122
    invoke-virtual {p0, p2}, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->setSourceObjects(Ljava/util/List;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .parameter "chars"

    .prologue
    .line 133
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 134
    .local v3, result:Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 135
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, mask:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, keptObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    iget-object v4, p0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->sourceObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 142
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 143
    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 149
    .end local v0           #keptObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v1           #mask:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 138
    .restart local v0       #keptObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v1       #mask:Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    .line 139
    .local v2, object:Ljava/lang/Object;,"TT;"
    iget-object v5, p0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->this$0:Lcom/tokenautocomplete/FilteredArrayAdapter;

    invoke-virtual {v5, v2, v1}, Lcom/tokenautocomplete/FilteredArrayAdapter;->keepObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v0           #keptObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v1           #mask:Ljava/lang/String;
    .end local v2           #object:Ljava/lang/Object;,"TT;"
    :cond_2
    iget-object v4, p0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->sourceObjects:Ljava/util/ArrayList;

    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 147
    iget-object v4, p0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->sourceObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->this$0:Lcom/tokenautocomplete/FilteredArrayAdapter;

    invoke-virtual {v0}, Lcom/tokenautocomplete/FilteredArrayAdapter;->clear()V

    .line 156
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->this$0:Lcom/tokenautocomplete/FilteredArrayAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Lcom/tokenautocomplete/FilteredArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 158
    iget-object v0, p0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->this$0:Lcom/tokenautocomplete/FilteredArrayAdapter;

    invoke-virtual {v0}, Lcom/tokenautocomplete/FilteredArrayAdapter;->notifyDataSetChanged()V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->this$0:Lcom/tokenautocomplete/FilteredArrayAdapter;

    invoke-virtual {v0}, Lcom/tokenautocomplete/FilteredArrayAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public setSourceObjects(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 127
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tokenautocomplete/FilteredArrayAdapter$AppFilter;->sourceObjects:Ljava/util/ArrayList;

    .line 126
    monitor-exit p0

    .line 129
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
