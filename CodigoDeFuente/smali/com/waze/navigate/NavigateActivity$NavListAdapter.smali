.class Lcom/waze/navigate/NavigateActivity$NavListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavigateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/NavigateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavListAdapter"
.end annotation


# instance fields
.field private favoriteItems:[Lcom/waze/navigate/AddressItem;

.field final synthetic this$0:Lcom/waze/navigate/NavigateActivity;


# direct methods
.method public constructor <init>(Lcom/waze/navigate/NavigateActivity;Landroid/content/Context;[Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "fi"

    .prologue
    .line 745
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity$NavListAdapter;->this$0:Lcom/waze/navigate/NavigateActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 746
    iput-object p3, p0, Lcom/waze/navigate/NavigateActivity$NavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    .line 747
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$NavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    array-length v0, v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$NavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$NavListAdapter;->favoriteItems:[Lcom/waze/navigate/AddressItem;

    aget-object v0, v0, p1

    .line 755
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 759
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 764
    if-nez p2, :cond_0

    .line 765
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity$NavListAdapter;->this$0:Lcom/waze/navigate/NavigateActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Lcom/waze/navigate/NavigateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 766
    .local v15, li:Landroid/view/LayoutInflater;
    const v1, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v15, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 768
    .end local v15           #li:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/waze/navigate/NavigateActivity$NavListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/navigate/AddressItem;

    .line 769
    .local v9, ai:Lcom/waze/navigate/AddressItem;
    const v1, 0x7f09002c

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 770
    const v1, 0x7f0900e1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 772
    const v1, 0x7f0900be

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 773
    .local v7, addressItemImage:Landroid/widget/ImageView;
    const v1, 0x7f0900c0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 774
    .local v4, addressItemImageUrl:Landroid/widget/ImageView;
    const v1, 0x7f0900bf

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 776
    .local v8, addressItemImageUrlFrame:Landroid/widget/FrameLayout;
    if-eqz v9, :cond_9

    .line 777
    const v1, 0x7f0900c2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 778
    const v1, 0x7f0900c2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getSecondaryTitle()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 782
    const v1, 0x7f0900c3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 798
    :goto_0
    const v1, 0x7f0900c4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 799
    const v1, 0x7f0900c6

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 801
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 802
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 803
    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getImage()Ljava/lang/Integer;

    move-result-object v14

    .line 805
    .local v14, img:Ljava/lang/Integer;
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 807
    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_5

    .line 808
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    iget-object v2, v9, Lcom/waze/navigate/AddressItem;->mImageURL:Ljava/lang/String;

    .line 810
    .local v2, image:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 811
    const v1, 0x7f02011b

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 812
    if-eqz v2, :cond_1

    .line 813
    sget-object v1, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 814
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/waze/navigate/NavigateActivity$NavListAdapter;->this$0:Lcom/waze/navigate/NavigateActivity;

    .line 813
    invoke-virtual/range {v1 .. v6}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 827
    .end local v2           #image:Ljava/lang/String;
    :cond_1
    :goto_1
    const v1, 0x7f0900d9

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 828
    .local v11, btn:Landroid/widget/RelativeLayout;
    const v1, 0x7f09002c

    invoke-virtual {v11, v1, v9}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 829
    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getMoreAction()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 830
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 845
    .end local v11           #btn:Landroid/widget/RelativeLayout;
    .end local v14           #img:Ljava/lang/Integer;
    :goto_2
    const v1, 0x7f09002c

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 846
    .local v10, aiView:Landroid/view/View;
    if-nez p1, :cond_a

    const/4 v1, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/NavigateActivity$NavListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    const/4 v3, 0x2

    :goto_4
    or-int v12, v1, v3

    .line 847
    .local v12, first_last:I
    packed-switch v12, :pswitch_data_0

    .line 861
    :goto_5
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v10, v1, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 863
    return-object p2

    .line 786
    .end local v10           #aiView:Landroid/view/View;
    .end local v12           #first_last:I
    :cond_2
    const v1, 0x7f0900c3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 787
    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xc

    if-eq v1, v3, :cond_3

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    .line 788
    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_4

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getIsValidate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 790
    :cond_3
    const v1, 0x7f0900c3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f08002d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 796
    :goto_6
    const v1, 0x7f0900c3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getSecondaryTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 794
    :cond_4
    const v1, 0x7f0900c3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080032

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 816
    .restart local v14       #img:Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->hasIcon()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".bin"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 818
    .local v13, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 819
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 820
    .end local v13           #icon:Landroid/graphics/drawable/Drawable;
    :cond_6
    if-eqz v14, :cond_7

    .line 821
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 822
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 824
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 832
    .restart local v11       #btn:Landroid/widget/RelativeLayout;
    :cond_8
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 835
    .end local v11           #btn:Landroid/widget/RelativeLayout;
    .end local v14           #img:Ljava/lang/Integer;
    :cond_9
    const v1, 0x7f0900c2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 836
    const v1, 0x7f0900c3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 837
    const v1, 0x7f0900c4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 838
    const v1, 0x7f0900c6

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 839
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 840
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 841
    const v1, 0x7f0900d9

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 846
    .restart local v10       #aiView:Landroid/view/View;
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 849
    .restart local v12       #first_last:I
    :pswitch_0
    const v1, 0x7f02021f

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 852
    :pswitch_1
    const v1, 0x7f02021f

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 855
    :pswitch_2
    const v1, 0x7f02021f

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 858
    :pswitch_3
    const v1, 0x7f020220

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
