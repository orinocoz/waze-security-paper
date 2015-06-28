.class public Lcom/waze/share/ShareFbLocListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareFbLocListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;
    }
.end annotation


# instance fields
.field private final mContext:Lcom/waze/ifs/ui/ActivityBase;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/share/ShareFbLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/waze/share/ShareFbLocListAdapter;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    .line 23
    return-void
.end method

.method public static getView(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Lcom/waze/share/ShareFbLocation;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "convertView"
    .parameter "itemData"

    .prologue
    const/4 v5, 0x0

    .line 68
    if-nez p1, :cond_0

    move-object p1, v5

    .line 94
    .end local p1
    :goto_0
    return-object p1

    .line 71
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;

    .line 72
    .local v2, holder:Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;
    if-nez v2, :cond_1

    .line 77
    new-instance v2, Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;

    .end local v2           #holder:Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;
    invoke-direct {v2, v5}, Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;-><init>(Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;)V

    .line 78
    .restart local v2       #holder:Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;
    const v5, 0x7f0906b6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;->name:Landroid/widget/TextView;

    .line 79
    const v5, 0x7f0906b7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;->address:Landroid/widget/TextView;

    .line 80
    const v5, 0x7f0906b8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;->distance:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :cond_1
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 85
    .local v3, nm:Lcom/waze/NativeManager;
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_AWAY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, away:Ljava/lang/String;
    iget-object v5, v2, Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;->name:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/waze/share/ShareFbLocation;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v5, v2, Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;->address:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/share/ShareNativeManager;->isMetricUnits()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_KM:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, units:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/waze/share/ShareFbLocation;->distance:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, distanceStr:Ljava/lang/String;
    iget-object v5, v2, Lcom/waze/share/ShareFbLocListAdapter$ItemHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 90
    .end local v1           #distanceStr:Ljava/lang/String;
    .end local v4           #units:Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_MILE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/waze/share/ShareFbLocListAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/share/ShareFbLocListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/waze/share/ShareFbLocListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 55
    iget-object v2, p0, Lcom/waze/share/ShareFbLocListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/share/ShareFbLocation;

    .line 57
    .local v1, itemData:Lcom/waze/share/ShareFbLocation;
    if-nez p2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/waze/share/ShareFbLocListAdapter;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030103

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/waze/share/ShareFbLocListAdapter;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v2, p2, v1}, Lcom/waze/share/ShareFbLocListAdapter;->getView(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Lcom/waze/share/ShareFbLocation;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public updateList(Ljava/util/ArrayList;I)V
    .locals 2
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/share/ShareFbLocation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbLocation;>;"
    iput-object p1, p0, Lcom/waze/share/ShareFbLocListAdapter;->mItems:Ljava/util/ArrayList;

    .line 28
    iget-object v1, p0, Lcom/waze/share/ShareFbLocListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 29
    move v0, p2

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/waze/share/ShareFbLocListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/waze/share/ShareFbLocListAdapter;->notifyDataSetChanged()V

    .line 32
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/waze/share/ShareFbLocListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
