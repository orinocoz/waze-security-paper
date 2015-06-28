.class Lcom/waze/share/MySavedLocationActivity$FavListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MySavedLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/MySavedLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavListAdapter"
.end annotation


# instance fields
.field private favoriteItems:[Lcom/waze/navigate/AddressItem;

.field final synthetic this$0:Lcom/waze/share/MySavedLocationActivity;


# direct methods
.method public constructor <init>(Lcom/waze/share/MySavedLocationActivity;Landroid/content/Context;I[Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "fi"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/waze/share/MySavedLocationActivity$FavListAdapter;->this$0:Lcom/waze/share/MySavedLocationActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 96
    iput-object p4, p0, Lcom/waze/share/MySavedLocationActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    .line 97
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/waze/share/MySavedLocationActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/waze/share/MySavedLocationActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 105
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

    .line 110
    if-nez p2, :cond_0

    .line 111
    iget-object v6, p0, Lcom/waze/share/MySavedLocationActivity$FavListAdapter;->this$0:Lcom/waze/share/MySavedLocationActivity;

    const-string v8, "layout_inflater"

    invoke-virtual {v6, v8}, Lcom/waze/share/MySavedLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 112
    .local v4, li:Landroid/view/LayoutInflater;
    const v6, 0x7f03000e

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 115
    .end local v4           #li:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v6, p0, Lcom/waze/share/MySavedLocationActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    invoke-virtual {p2, v10, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 116
    const v6, 0x7f0900e1

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v6, p0, Lcom/waze/share/MySavedLocationActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    if-eqz v6, :cond_1

    .line 119
    const v6, 0x7f0900c4

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const v6, 0x7f0900c6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 121
    const v6, 0x7f0900c3

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 122
    const v6, 0x7f0900c2

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 123
    .local v5, text:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/waze/share/MySavedLocationActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v6, p0, Lcom/waze/share/MySavedLocationActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getImage()Ljava/lang/Integer;

    move-result-object v3

    .line 125
    .local v3, img:Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_0
    const v6, 0x7f0900d9

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 132
    .local v1, btn:Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/waze/share/MySavedLocationActivity$FavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v6, v6, p1

    invoke-virtual {v1, v10, v6}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 134
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, aiView:Landroid/view/View;
    if-nez p1, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/waze/share/MySavedLocationActivity$FavListAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_4

    const/4 v8, 0x2

    :goto_2
    or-int v2, v6, v8

    .line 137
    .local v2, first_last:I
    packed-switch v2, :pswitch_data_0

    .line 151
    :goto_3
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 153
    .end local v0           #aiView:Landroid/view/View;
    .end local v1           #btn:Landroid/widget/RelativeLayout;
    .end local v2           #first_last:I
    .end local v3           #img:Ljava/lang/Integer;
    .end local v5           #text:Landroid/widget/TextView;
    :cond_1
    return-object p2

    .line 129
    .restart local v3       #img:Ljava/lang/Integer;
    .restart local v5       #text:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .restart local v0       #aiView:Landroid/view/View;
    .restart local v1       #btn:Landroid/widget/RelativeLayout;
    :cond_3
    move v6, v7

    .line 136
    goto :goto_1

    :cond_4
    move v8, v7

    goto :goto_2

    .line 139
    .restart local v2       #first_last:I
    :pswitch_0
    const v6, 0x7f020224

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 142
    :pswitch_1
    const v6, 0x7f020226

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 145
    :pswitch_2
    const v6, 0x7f020223

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 148
    :pswitch_3
    const v6, 0x7f020225

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
