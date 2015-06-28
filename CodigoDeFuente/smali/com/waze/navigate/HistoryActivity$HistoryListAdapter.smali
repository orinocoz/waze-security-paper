.class Lcom/waze/navigate/HistoryActivity$HistoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/HistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryListAdapter"
.end annotation


# instance fields
.field private historyItems:[Lcom/waze/navigate/AddressItem;

.field final synthetic this$0:Lcom/waze/navigate/HistoryActivity;


# direct methods
.method public constructor <init>(Lcom/waze/navigate/HistoryActivity;Landroid/content/Context;I[Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "hi"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/waze/navigate/HistoryActivity$HistoryListAdapter;->this$0:Lcom/waze/navigate/HistoryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 82
    iput-object p4, p0, Lcom/waze/navigate/HistoryActivity$HistoryListAdapter;->historyItems:[Lcom/waze/navigate/AddressItem;

    .line 83
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/waze/navigate/HistoryActivity$HistoryListAdapter;->historyItems:[Lcom/waze/navigate/AddressItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/waze/navigate/HistoryActivity$HistoryListAdapter;->historyItems:[Lcom/waze/navigate/AddressItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/waze/navigate/HistoryActivity$HistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/AddressItem;

    .line 97
    .local v1, ai:Lcom/waze/navigate/AddressItem;
    if-nez p2, :cond_0

    .line 98
    iget-object v8, p0, Lcom/waze/navigate/HistoryActivity$HistoryListAdapter;->this$0:Lcom/waze/navigate/HistoryActivity;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Lcom/waze/navigate/HistoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 99
    .local v6, li:Landroid/view/LayoutInflater;
    const v8, 0x7f03000e

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 101
    .end local v6           #li:Landroid/view/LayoutInflater;
    :cond_0
    const v8, 0x7f09002c

    invoke-virtual {p2, v8, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 102
    const v8, 0x7f0900e2

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const v8, 0x7f0900c3

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 105
    if-eqz v1, :cond_1

    .line 106
    const v8, 0x7f0900c2

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 107
    .local v7, name:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 108
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_0
    const v8, 0x7f0900c4

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, address:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 116
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_1
    const v8, 0x7f0900c6

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 124
    .local v4, distance:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getDistance()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 125
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_2
    const v8, 0x7f0900d9

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 132
    .local v3, btn:Landroid/widget/RelativeLayout;
    const v8, 0x7f09002c

    invoke-virtual {v3, v8, v1}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 134
    const v8, 0x7f09002c

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 135
    .local v2, aiView:Landroid/view/View;
    if-nez p1, :cond_5

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/waze/navigate/HistoryActivity$HistoryListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne p1, v9, :cond_6

    const/4 v9, 0x2

    :goto_4
    or-int v5, v8, v9

    .line 136
    .local v5, first_last:I
    packed-switch v5, :pswitch_data_0

    .line 150
    :goto_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 152
    .end local v0           #address:Landroid/widget/TextView;
    .end local v2           #aiView:Landroid/view/View;
    .end local v3           #btn:Landroid/widget/RelativeLayout;
    .end local v4           #distance:Landroid/widget/TextView;
    .end local v5           #first_last:I
    .end local v7           #name:Landroid/widget/TextView;
    :cond_1
    return-object p2

    .line 110
    .restart local v7       #name:Landroid/widget/TextView;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    .restart local v0       #address:Landroid/widget/TextView;
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    .restart local v4       #distance:Landroid/widget/TextView;
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getDistance()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 135
    .restart local v2       #aiView:Landroid/view/View;
    .restart local v3       #btn:Landroid/widget/RelativeLayout;
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    .line 138
    .restart local v5       #first_last:I
    :pswitch_0
    const v8, 0x7f020224

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 141
    :pswitch_1
    const v8, 0x7f020226

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 144
    :pswitch_2
    const v8, 0x7f020223

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 147
    :pswitch_3
    const v8, 0x7f020225

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
