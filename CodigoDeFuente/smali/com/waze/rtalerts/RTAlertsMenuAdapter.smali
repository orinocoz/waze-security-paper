.class public Lcom/waze/rtalerts/RTAlertsMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "RTAlertsMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;,
        Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private final mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mRows:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mContext:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const v8, 0x7f020224

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    iget-object v4, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v0, p2

    .line 119
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 80
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    iget-object v4, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;

    .line 81
    .local v3, rowData:Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;
    if-nez p2, :cond_1

    .line 83
    iget-object v4, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 84
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0300dc

    invoke-virtual {v2, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;

    invoke-direct {v1, v5}, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;-><init>(Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;)V

    .line 89
    .local v1, holder:Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;
    const v4, 0x7f0905e0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->container:Landroid/widget/RelativeLayout;

    .line 90
    const v4, 0x7f0905e1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->icon:Landroid/widget/ImageView;

    .line 91
    const v4, 0x7f0905e2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->label:Landroid/widget/TextView;

    .line 92
    const v4, 0x7f0905e3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->counter:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :goto_1
    iget-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->icon:Landroid/widget/ImageView;

    iget v5, v3, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;->mIconResId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->label:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->counter:Landroid/widget/TextView;

    iget v5, v3, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;->mCounter:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 109
    iget-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->container:Landroid/widget/RelativeLayout;

    const v5, 0x7f020225

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 117
    :goto_2
    iget-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    move-object v0, p2

    .line 119
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto :goto_0

    .line 98
    .end local v0           #convertView:Landroid/view/View;
    .end local v1           #holder:Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;

    .restart local v1       #holder:Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;
    goto :goto_1

    .line 110
    :cond_2
    if-nez p1, :cond_3

    .line 111
    iget-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->container:Landroid/widget/RelativeLayout;

    const v5, 0x7f020226

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 112
    :cond_3
    iget-object v4, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_4

    .line 113
    iget-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 115
    :cond_4
    iget-object v4, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public updateList([Lcom/waze/rtalerts/RTAlertsMenuData;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 32
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 54
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->isEnforcementPoliceEnabledNTV()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 40
    const/4 v2, 0x2

    aget-object v3, p1, v0

    iget v3, v3, Lcom/waze/rtalerts/RTAlertsMenuData;->mId:I

    if-eq v2, v3, :cond_1

    .line 42
    new-instance v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;

    aget-object v2, p1, v0

    iget v2, v2, Lcom/waze/rtalerts/RTAlertsMenuData;->mId:I

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/waze/rtalerts/RTAlertsMenuData;->mIcon:Ljava/lang/String;

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/waze/rtalerts/RTAlertsMenuData;->mLabel:Ljava/lang/String;

    aget-object v5, p1, v0

    iget v5, v5, Lcom/waze/rtalerts/RTAlertsMenuData;->mCounter:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 44
    .local v1, row:Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v1           #row:Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    new-instance v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;

    aget-object v2, p1, v0

    iget v2, v2, Lcom/waze/rtalerts/RTAlertsMenuData;->mId:I

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/waze/rtalerts/RTAlertsMenuData;->mIcon:Ljava/lang/String;

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/waze/rtalerts/RTAlertsMenuData;->mLabel:Ljava/lang/String;

    aget-object v5, p1, v0

    iget v5, v5, Lcom/waze/rtalerts/RTAlertsMenuData;->mCounter:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 51
    .restart local v1       #row:Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
