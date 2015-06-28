.class public Lcom/waze/share/ShareFbWithListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareFbWithListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;
    }
.end annotation


# instance fields
.field private final mContext:Lcom/waze/ifs/ui/ActivityBase;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/share/ShareFbFriend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/waze/share/ShareFbWithListAdapter;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    .line 26
    return-void
.end method

.method public static getView(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Lcom/waze/share/ShareFbFriend;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "convertView"
    .parameter "itemData"

    .prologue
    const/4 v3, 0x0

    .line 79
    if-nez p1, :cond_0

    move-object p1, v3

    .line 111
    .end local p1
    :goto_0
    return-object p1

    .line 82
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;

    .line 83
    .local v0, holder:Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;
    if-nez v0, :cond_1

    .line 88
    new-instance v0, Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;

    .end local v0           #holder:Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;
    invoke-direct {v0, v3}, Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;-><init>(Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;)V

    .line 89
    .restart local v0       #holder:Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;
    const v3, 0x7f0906bf

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;->image:Landroid/widget/ImageView;

    .line 90
    const v3, 0x7f0906c0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, v0, Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;->name:Landroid/widget/CheckedTextView;

    .line 91
    const v3, 0x7f0906be

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/ifs/ui/CheckedRelativeLayout;

    iput-object v3, v0, Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;->root:Lcom/waze/ifs/ui/CheckedRelativeLayout;

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :cond_1
    iget-object v3, v0, Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;->name:Landroid/widget/CheckedTextView;

    iget-object v4, p2, Lcom/waze/share/ShareFbFriend;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, v0, Lcom/waze/share/ShareFbWithListAdapter$ItemHolder;->image:Landroid/widget/ImageView;

    .line 98
    .local v1, imageView:Landroid/widget/ImageView;
    new-instance v2, Lcom/waze/share/ShareFbWithListAdapter$1;

    invoke-direct {v2, v1}, Lcom/waze/share/ShareFbWithListAdapter$1;-><init>(Landroid/widget/ImageView;)V

    .line 109
    .local v2, listener:Lcom/waze/utils/ImageRepository$ImageRepositoryListener;
    sget-object v3, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v4, p2, Lcom/waze/share/ShareFbFriend;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/waze/share/ShareFbWithListAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/share/ShareFbWithListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/waze/share/ShareFbWithListAdapter;->mItems:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/waze/share/ShareFbWithListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/share/ShareFbFriend;

    .line 57
    .local v1, itemData:Lcom/waze/share/ShareFbFriend;
    if-nez p2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/waze/share/ShareFbWithListAdapter;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030106

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/waze/share/ShareFbWithListAdapter;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v2, p2, v1}, Lcom/waze/share/ShareFbWithListAdapter;->getView(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Lcom/waze/share/ShareFbFriend;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public setChecked(IZ)V
    .locals 0
    .parameter "index"
    .parameter "checked"

    .prologue
    .line 69
    return-void
.end method

.method public toggleChecked(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 75
    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/share/ShareFbFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbFriend;>;"
    iput-object p1, p0, Lcom/waze/share/ShareFbWithListAdapter;->mItems:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Lcom/waze/share/ShareFbWithListAdapter;->notifyDataSetChanged()V

    .line 32
    return-void
.end method
