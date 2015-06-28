.class public abstract Lcom/waze/ifs/ui/WazePagerAdapter;
.super Ljava/lang/Object;
.source "WazePagerAdapter.java"


# static fields
.field public static final POSITION_NONE:I = -0x2

.field public static final POSITION_UNCHANGED:I = -0x1


# instance fields
.field private mObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/waze/ifs/ui/WazePagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    .line 79
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/waze/ifs/ui/WazePagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 220
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/waze/ifs/ui/WazePagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 269
    const/4 v0, -0x1

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "position"

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageWidth(I)F
    .locals 1
    .parameter "position"

    .prologue
    .line 319
    const/high16 v0, 0x3f80

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 177
    const-string v1, "Required method instantiateItem was not overridden"

    .line 176
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .parameter "container"
    .parameter "position"

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/waze/ifs/ui/WazePagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/waze/ifs/ui/WazePagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 278
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/waze/ifs/ui/WazePagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 251
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 208
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/waze/ifs/ui/WazePagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 160
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/waze/ifs/ui/WazePagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/waze/ifs/ui/WazePagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 296
    return-void
.end method
