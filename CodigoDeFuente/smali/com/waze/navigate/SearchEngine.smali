.class public Lcom/waze/navigate/SearchEngine;
.super Ljava/lang/Object;
.source "SearchEngine.java"


# static fields
.field public static final ERROR_STATE_ERROR_NONE:I = 0x0

.field public static final ERROR_STATE_ERROR_NORETRY:I = 0x1

.field public static final ERROR_STATE_ERROR_RETRY:I = 0x2

.field private static final RESULTS_INIT_CAPACITY:I = 0x20


# instance fields
.field private button:Lcom/waze/navigate/SearchButton;

.field public canShowOnMap:Z

.field private errorState:I

.field private id:I

.field private name:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field public requestedResultEta:Z

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/waze/navigate/AddressItem;",
            ">;"
        }
    .end annotation
.end field

.field private searched:Z

.field private searching:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "i"
    .parameter "n"
    .parameter "p"
    .parameter "canShowOnMap"

    .prologue
    .line 39
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/navigate/SearchEngine;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcom/waze/navigate/SearchButton;)V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLcom/waze/navigate/SearchButton;)V
    .locals 3
    .parameter "i"
    .parameter "n"
    .parameter "p"
    .parameter "canShowOnMap"
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    .line 26
    iput v2, p0, Lcom/waze/navigate/SearchEngine;->errorState:I

    .line 27
    iput-boolean v2, p0, Lcom/waze/navigate/SearchEngine;->requestedResultEta:Z

    .line 30
    iput p1, p0, Lcom/waze/navigate/SearchEngine;->id:I

    .line 31
    iput-object p2, p0, Lcom/waze/navigate/SearchEngine;->name:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/waze/navigate/SearchEngine;->provider:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/waze/navigate/SearchEngine;->button:Lcom/waze/navigate/SearchButton;

    .line 34
    iput-boolean v2, p0, Lcom/waze/navigate/SearchEngine;->searched:Z

    .line 35
    iput-boolean v2, p0, Lcom/waze/navigate/SearchEngine;->searching:Z

    .line 36
    iput-boolean p4, p0, Lcom/waze/navigate/SearchEngine;->canShowOnMap:Z

    .line 37
    return-void
.end method


# virtual methods
.method public addResult(Lcom/waze/navigate/AddressItem;)V
    .locals 1
    .parameter "ai"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/waze/navigate/SearchEngine;->searched:Z

    .line 83
    iput-boolean v1, p0, Lcom/waze/navigate/SearchEngine;->searching:Z

    .line 84
    iget-object v0, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    invoke-virtual {p0, v1}, Lcom/waze/navigate/SearchEngine;->setErrorState(I)V

    .line 86
    return-void
.end method

.method public finalizeSearch()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/waze/navigate/SearchEngine;->searching:Z

    .line 55
    iget-object v1, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/waze/navigate/SearchEngine;->searched:Z

    .line 56
    return-void
.end method

.method public getButton()Lcom/waze/navigate/SearchButton;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/waze/navigate/SearchEngine;->button:Lcom/waze/navigate/SearchButton;

    return-object v0
.end method

.method public getErrorState()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/waze/navigate/SearchEngine;->errorState:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/waze/navigate/SearchEngine;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/waze/navigate/SearchEngine;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/waze/navigate/SearchEngine;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getResult(I)Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter "location"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method public getResults()[Lcom/waze/navigate/AddressItem;
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/waze/navigate/AddressItem;

    .line 44
    .local v0, array:[Lcom/waze/navigate/AddressItem;
    iget-object v1, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 45
    return-object v0
.end method

.method public getSearched()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/waze/navigate/SearchEngine;->searched:Z

    return v0
.end method

.method public getSearching()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/waze/navigate/SearchEngine;->searching:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/waze/navigate/SearchEngine;->errorState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(Lcom/waze/navigate/SearchButton;)V
    .locals 0
    .parameter "searchButton"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/waze/navigate/SearchEngine;->button:Lcom/waze/navigate/SearchButton;

    .line 126
    return-void
.end method

.method public setErrorState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 116
    iput p1, p0, Lcom/waze/navigate/SearchEngine;->errorState:I

    .line 117
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "buttonId"

    .prologue
    .line 129
    iput p1, p0, Lcom/waze/navigate/SearchEngine;->id:I

    .line 130
    return-void
.end method

.method public setResult(ILcom/waze/navigate/AddressItem;)V
    .locals 1
    .parameter "location"
    .parameter "item"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public setResults([Lcom/waze/navigate/AddressItem;)V
    .locals 1
    .parameter "ai"

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/navigate/SearchEngine;->searching:Z

    .line 62
    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/waze/navigate/SearchEngine;->clear()V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/navigate/SearchEngine;->searched:Z

    .line 68
    iget-object v0, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSearched(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/waze/navigate/SearchEngine;->searched:Z

    .line 104
    return-void
.end method

.method public setSearching(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/waze/navigate/SearchEngine;->clear()V

    .line 140
    :cond_0
    iput-boolean p1, p0, Lcom/waze/navigate/SearchEngine;->searching:Z

    .line 141
    return-void
.end method

.method public sortResults(Lcom/waze/navigate/SortPreferences;)V
    .locals 4
    .parameter "sortPreferences"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    .line 144
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/waze/navigate/AddressItem;>;"
    const/4 v0, 0x0

    .line 145
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/navigate/AddressItem;>;"
    iget v2, p1, Lcom/waze/navigate/SortPreferences;->type:I

    if-nez v2, :cond_1

    .line 147
    new-instance v0, Lcom/waze/navigate/SearchEngine$1;

    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/navigate/AddressItem;>;"
    invoke-direct {v0, p0}, Lcom/waze/navigate/SearchEngine$1;-><init>(Lcom/waze/navigate/SearchEngine;)V

    .line 226
    .restart local v0       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/navigate/AddressItem;>;"
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 227
    iput-object v1, p0, Lcom/waze/navigate/SearchEngine;->results:Ljava/util/List;

    .line 228
    return-void

    .line 169
    :cond_1
    iget v2, p1, Lcom/waze/navigate/SortPreferences;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 171
    new-instance v0, Lcom/waze/navigate/SearchEngine$2;

    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/navigate/AddressItem;>;"
    invoke-direct {v0, p0}, Lcom/waze/navigate/SearchEngine$2;-><init>(Lcom/waze/navigate/SearchEngine;)V

    .line 187
    .restart local v0       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/navigate/AddressItem;>;"
    goto :goto_0

    :cond_2
    iget v2, p1, Lcom/waze/navigate/SortPreferences;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 189
    new-instance v0, Lcom/waze/navigate/SearchEngine$3;

    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/navigate/AddressItem;>;"
    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/SearchEngine$3;-><init>(Lcom/waze/navigate/SearchEngine;Lcom/waze/navigate/SortPreferences;)V

    .restart local v0       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/navigate/AddressItem;>;"
    goto :goto_0
.end method
