.class Lcom/waze/navigate/FavoritesActivity$FavListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavoritesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/FavoritesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavListAdapter"
.end annotation


# instance fields
.field private favoriteItems:[Lcom/waze/navigate/AddressItem;

.field final synthetic this$0:Lcom/waze/navigate/FavoritesActivity;


# direct methods
.method public constructor <init>(Lcom/waze/navigate/FavoritesActivity;Landroid/content/Context;I[Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "fi"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->this$0:Lcom/waze/navigate/FavoritesActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 124
    iput-object p4, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    .line 125
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 133
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const v11, 0x7f0900be

    const v10, 0x7f09002c

    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 138
    if-nez p2, :cond_0

    .line 139
    iget-object v6, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->this$0:Lcom/waze/navigate/FavoritesActivity;

    const-string v8, "layout_inflater"

    invoke-virtual {v6, v8}, Lcom/waze/navigate/FavoritesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 140
    .local v4, li:Landroid/view/LayoutInflater;
    const v6, 0x7f03000e

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 142
    .end local v4           #li:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v6, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    invoke-virtual {p2, v10, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 143
    const v6, 0x7f0900e1

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v6, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    if-eqz v6, :cond_1

    .line 146
    const v6, 0x7f0900c4

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const v6, 0x7f0900c6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 148
    const v6, 0x7f0900c3

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const v6, 0x7f0900c2

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 150
    .local v5, text:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v6, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getImage()Ljava/lang/Integer;

    move-result-object v3

    .line 152
    .local v3, img:Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 153
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :goto_0
    const v6, 0x7f0900d9

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 159
    .local v1, btn:Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    invoke-virtual {v1, v10, v6}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 160
    iget-object v6, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getMoreAction()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getMoreAction()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    :goto_1
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, aiView:Landroid/view/View;
    if-nez p1, :cond_4

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_5

    const/4 v8, 0x2

    :goto_3
    or-int v2, v6, v8

    .line 167
    .local v2, first_last:I
    packed-switch v2, :pswitch_data_0

    .line 181
    :goto_4
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 183
    .end local v0           #aiView:Landroid/view/View;
    .end local v1           #btn:Landroid/widget/RelativeLayout;
    .end local v2           #first_last:I
    .end local v3           #img:Ljava/lang/Integer;
    .end local v5           #text:Landroid/widget/TextView;
    :cond_1
    return-object p2

    .line 156
    .restart local v3       #img:Ljava/lang/Integer;
    .restart local v5       #text:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 163
    .restart local v1       #btn:Landroid/widget/RelativeLayout;
    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .restart local v0       #aiView:Landroid/view/View;
    :cond_4
    move v6, v7

    .line 166
    goto :goto_2

    :cond_5
    move v8, v7

    goto :goto_3

    .line 169
    .restart local v2       #first_last:I
    :pswitch_0
    const v6, 0x7f020224

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 172
    :pswitch_1
    const v6, 0x7f020226

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 175
    :pswitch_2
    const v6, 0x7f020223

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 178
    :pswitch_3
    const v6, 0x7f020225

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
