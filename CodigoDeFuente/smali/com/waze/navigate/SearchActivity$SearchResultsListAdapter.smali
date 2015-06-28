.class Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultsListAdapter"
.end annotation


# instance fields
.field private isAddressItemSeenAlready:[Z

.field private searchResultItems:[Lcom/waze/navigate/AddressItem;

.field final synthetic this$0:Lcom/waze/navigate/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/waze/navigate/SearchActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 422
    iput-object p1, p0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 418
    iput-object v0, p0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->searchResultItems:[Lcom/waze/navigate/AddressItem;

    .line 420
    iput-object v0, p0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->isAddressItemSeenAlready:[Z

    .line 423
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->searchResultItems:[Lcom/waze/navigate/AddressItem;

    if-nez v0, :cond_0

    .line 443
    const/4 v0, 0x0

    .line 445
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->searchResultItems:[Lcom/waze/navigate/AddressItem;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->searchResultItems:[Lcom/waze/navigate/AddressItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 454
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 460
    invoke-virtual/range {p0 .. p1}, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/waze/navigate/AddressItem;

    .line 461
    .local v6, ai:Lcom/waze/navigate/AddressItem;
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v13

    .line 463
    .local v13, dnm:Lcom/waze/navigate/DriveToNativeManager;
    if-nez p2, :cond_0

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    const-string v29, "layout_inflater"

    invoke-virtual/range {v28 .. v29}, Lcom/waze/navigate/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 465
    .local v18, li:Landroid/view/LayoutInflater;
    const v28, 0x7f03000e

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    move-object/from16 v2, p3

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 468
    .end local v18           #li:Landroid/view/LayoutInflater;
    :cond_0
    const v28, 0x7f09002c

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 469
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 470
    const v28, 0x7f0900e2

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 471
    const/16 v29, 0x0

    .line 470
    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 472
    const v28, 0x7f0900c3

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 473
    const v28, 0x7f0900be

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 475
    if-eqz v6, :cond_4

    .line 478
    iget v0, v6, Lcom/waze/navigate/AddressItem;->index:I

    move/from16 v17, v0

    .line 480
    .local v17, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->isAddressItemSeenAlready:[Z

    move-object/from16 v28, v0

    aget-boolean v28, v28, p1

    move/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShown(IZ)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->isAddressItemSeenAlready:[Z

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aput-boolean v29, v28, p1

    .line 486
    const v28, 0x7f0900c2

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 485
    check-cast v20, Landroid/widget/TextView;

    .line 487
    .local v20, name:Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v27

    .line 488
    .local v27, title:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->access$0(Lcom/waze/navigate/SearchActivity;)Lcom/waze/NativeManager;

    move-result-object v28

    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 501
    :cond_1
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 502
    const/16 v28, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    :goto_0
    const v28, 0x7f0900c4

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 516
    check-cast v5, Landroid/widget/TextView;

    .line 518
    .local v5, address:Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 519
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    :goto_1
    const v28, 0x7f0900ba

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 525
    const/16 v29, 0x0

    .line 524
    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 526
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getIcon()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    const-string v29, ".bin"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 526
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 528
    .local v15, icon:Landroid/graphics/drawable/Drawable;
    const v28, 0x7f0900bb

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 529
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    iget-boolean v0, v6, Lcom/waze/navigate/AddressItem;->sponsored:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 532
    const v28, 0x7f0900bc

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 533
    const/16 v29, 0x0

    .line 532
    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    #setter for: Lcom/waze/navigate/SearchActivity;->bIsSponserd:Z
    invoke-static/range {v28 .. v29}, Lcom/waze/navigate/SearchActivity;->access$1(Lcom/waze/navigate/SearchActivity;Z)V

    .line 540
    :goto_2
    const/16 v25, 0x0

    .line 541
    .local v25, shouldDisplayDealLayout:Z
    iget-object v0, v6, Lcom/waze/navigate/AddressItem;->dealTitle:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    iget-object v0, v6, Lcom/waze/navigate/AddressItem;->dealTitle:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_a

    .line 542
    const/16 v25, 0x1

    .line 543
    const v28, 0x7f0900dc

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 544
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 545
    const v28, 0x7f0900dd

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 546
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 547
    const v28, 0x7f0900db

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 548
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 549
    const v28, 0x7f0900dc

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static/range {v29 .. v29}, Lcom/waze/navigate/SearchActivity;->access$0(Lcom/waze/navigate/SearchActivity;)Lcom/waze/NativeManager;

    move-result-object v29

    .line 551
    iget-object v0, v6, Lcom/waze/navigate/AddressItem;->dealTitle:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 550
    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    const v28, 0x7f0900dd

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static/range {v29 .. v29}, Lcom/waze/navigate/SearchActivity;->access$0(Lcom/waze/navigate/SearchActivity;)Lcom/waze/NativeManager;

    move-result-object v29

    .line 554
    iget-object v0, v6, Lcom/waze/navigate/AddressItem;->dealText:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 553
    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget v0, v6, Lcom/waze/navigate/AddressItem;->dealType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 557
    const v28, 0x7f0900db

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 556
    check-cast v28, Landroid/widget/ImageView;

    .line 558
    const v29, 0x7f020343

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    :goto_3
    iget v0, v6, Lcom/waze/navigate/AddressItem;->price:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_e

    .line 573
    const/16 v25, 0x1

    .line 574
    const v28, 0x7f0900de

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 575
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 576
    const v28, 0x7f0900df

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 577
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 578
    const v28, 0x7f0900e0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 579
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 580
    iget-object v0, v6, Lcom/waze/navigate/AddressItem;->currency:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    .line 581
    const-string v28, ""

    move-object/from16 v0, v28

    iput-object v0, v6, Lcom/waze/navigate/AddressItem;->currency:Ljava/lang/String;

    .line 584
    :cond_2
    const v28, 0x7f0900de

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 583
    check-cast v28, Landroid/widget/TextView;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static/range {v29 .. v29}, Lcom/waze/navigate/SearchActivity;->access$0(Lcom/waze/navigate/SearchActivity;)Lcom/waze/NativeManager;

    move-result-object v29

    .line 586
    iget-object v0, v6, Lcom/waze/navigate/AddressItem;->currency:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 585
    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    const v28, 0x7f0900df

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 587
    check-cast v22, Landroid/widget/TextView;

    .line 592
    .local v22, priceView:Landroid/widget/TextView;
    iget-object v0, v6, Lcom/waze/navigate/AddressItem;->price_format:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->getPriceFormatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    iget v0, v6, Lcom/waze/navigate/AddressItem;->price:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 594
    .local v21, priceStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->access$0(Lcom/waze/navigate/SearchActivity;)Lcom/waze/NativeManager;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget v0, v6, Lcom/waze/navigate/AddressItem;->range:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 597
    const v29, 0x7f08004c

    .line 596
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 605
    :cond_3
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    iget-wide v0, v6, Lcom/waze/navigate/AddressItem;->lastUpdated:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    const-wide/16 v30, 0xe10

    div-long v28, v28, v30

    const-wide/16 v30, 0x18

    div-long v9, v28, v30

    .line 607
    .local v9, daysAgo:J
    const-wide/16 v28, 0x0

    cmp-long v28, v9, v28

    if-lez v28, :cond_d

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->access$0(Lcom/waze/navigate/SearchActivity;)Lcom/waze/NativeManager;

    move-result-object v28

    .line 610
    sget-object v29, Lcom/waze/strings/DisplayStrings;->DS_PD_DAYS_AGO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v28 .. v29}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    .line 611
    long-to-int v0, v9

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    .line 609
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 618
    .local v11, daysAgoStr:Ljava/lang/String;
    :goto_5
    const v28, 0x7f0900e0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    .end local v9           #daysAgo:J
    .end local v11           #daysAgoStr:Ljava/lang/String;
    .end local v21           #priceStr:Ljava/lang/String;
    .end local v22           #priceView:Landroid/widget/TextView;
    :goto_6
    if-eqz v25, :cond_f

    .line 625
    const v28, 0x7f0900da

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 629
    :goto_7
    const v28, 0x7f0900c6

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 635
    .local v12, distance:Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getDistance()Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 636
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    :goto_8
    const v28, 0x7f0900d8

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 651
    .local v19, moreAction:Landroid/view/View;
    const/16 v28, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getAdditions()[Ljava/lang/String;

    move-result-object v4

    .line 654
    .local v4, additions:[Ljava/lang/String;
    const/16 v23, 0x1

    .line 658
    .local v23, roomAvailable:Z
    const v28, 0x7f0900c7

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 659
    .local v24, sep:Landroid/view/View;
    array-length v0, v4

    move/from16 v28, v0

    if-lez v28, :cond_12

    .line 660
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    :goto_9
    const/4 v14, 0x0

    .local v14, i:I
    :goto_a
    const/16 v28, 0x6

    move/from16 v0, v28

    if-lt v14, v0, :cond_13

    .line 702
    const v28, 0x7f09002c

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 703
    .local v7, aiView:Landroid/view/View;
    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 704
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 705
    const v28, 0x7f0900ba

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 728
    .end local v4           #additions:[Ljava/lang/String;
    .end local v5           #address:Landroid/widget/TextView;
    .end local v7           #aiView:Landroid/view/View;
    .end local v12           #distance:Landroid/widget/TextView;
    .end local v14           #i:I
    .end local v15           #icon:Landroid/graphics/drawable/Drawable;
    .end local v17           #index:I
    .end local v19           #moreAction:Landroid/view/View;
    .end local v20           #name:Landroid/widget/TextView;
    .end local v23           #roomAvailable:Z
    .end local v24           #sep:Landroid/view/View;
    .end local v25           #shouldDisplayDealLayout:Z
    .end local v27           #title:Ljava/lang/String;
    :cond_4
    :goto_b
    return-object p2

    .line 504
    .restart local v17       #index:I
    .restart local v20       #name:Landroid/widget/TextView;
    .restart local v27       #title:Ljava/lang/String;
    :cond_5
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    .line 508
    const v28, 0x7f0900bd

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 509
    const/16 v29, 0x13

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 511
    :cond_6
    const v28, 0x7f0900bd

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 512
    const/16 v29, 0x11

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 521
    .restart local v5       #address:Landroid/widget/TextView;
    :cond_7
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 537
    .restart local v15       #icon:Landroid/graphics/drawable/Drawable;
    :cond_8
    const v28, 0x7f0900bc

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 538
    const/16 v29, 0x8

    .line 537
    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 561
    .restart local v25       #shouldDisplayDealLayout:Z
    :cond_9
    const v28, 0x7f0900db

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 560
    check-cast v28, Landroid/widget/ImageView;

    .line 562
    const v29, 0x7f020344

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 565
    :cond_a
    const v28, 0x7f0900dc

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 566
    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 567
    const v28, 0x7f0900dd

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 568
    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 569
    const v28, 0x7f0900db

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 570
    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 598
    .restart local v21       #priceStr:Ljava/lang/String;
    .restart local v22       #priceView:Landroid/widget/TextView;
    :cond_b
    iget v0, v6, Lcom/waze/navigate/AddressItem;->range:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 600
    const v29, 0x7f08004d

    .line 599
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 601
    :cond_c
    iget v0, v6, Lcom/waze/navigate/AddressItem;->range:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 603
    const v29, 0x7f08004e

    .line 602
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 613
    .restart local v9       #daysAgo:J
    :cond_d
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static/range {v29 .. v29}, Lcom/waze/navigate/SearchActivity;->access$0(Lcom/waze/navigate/SearchActivity;)Lcom/waze/NativeManager;

    move-result-object v29

    .line 615
    sget-object v30, Lcom/waze/strings/DisplayStrings;->DS_TODAY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v29 .. v30}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v29

    .line 614
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 613
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #daysAgoStr:Ljava/lang/String;
    goto/16 :goto_5

    .line 620
    .end local v9           #daysAgo:J
    .end local v11           #daysAgoStr:Ljava/lang/String;
    .end local v21           #priceStr:Ljava/lang/String;
    .end local v22           #priceView:Landroid/widget/TextView;
    :cond_e
    const v28, 0x7f0900de

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 621
    const v28, 0x7f0900df

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 622
    const v28, 0x7f0900e0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 627
    :cond_f
    const v28, 0x7f0900da

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 638
    .restart local v12       #distance:Landroid/widget/TextView;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->access$2(Lcom/waze/navigate/SearchActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/waze/navigate/DriveToNativeManager;->isStopPointSearchNTV()Z

    move-result v28

    if-eqz v28, :cond_11

    invoke-static {}, Lcom/waze/navigate/SearchActivity;->access$3()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_11

    .line 640
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->access$0(Lcom/waze/navigate/SearchActivity;)Lcom/waze/NativeManager;

    move-result-object v28

    sget-object v29, Lcom/waze/strings/DisplayStrings;->DS_CALCULATING_TIME_OFF_ROUTEPPP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v28 .. v29}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 645
    :cond_11
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getDistance()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 662
    .restart local v4       #additions:[Ljava/lang/String;
    .restart local v19       #moreAction:Landroid/view/View;
    .restart local v23       #roomAvailable:Z
    .restart local v24       #sep:Landroid/view/View;
    :cond_12
    const/16 v28, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 665
    .restart local v14       #i:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "addressItemAddition"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v30, v14, 0x1

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Img"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/waze/navigate/SearchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v28 .. v31}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 666
    .local v16, imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "addressItemAddition"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v30, v14, 0x1

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Text"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/waze/navigate/SearchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v28 .. v31}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 667
    .local v26, textView:Landroid/widget/TextView;
    const/16 v28, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    const/16 v28, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 669
    if-eqz v23, :cond_14

    array-length v0, v4

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v14, v0, :cond_14

    .line 670
    aget-object v28, v4, v14

    const-string v29, "ls_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 671
    new-instance v28, Ljava/lang/StringBuilder;

    aget-object v29, v4, v14

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, ".bin"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 672
    .local v8, d:Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_15

    .line 673
    sget-object v28, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_IMAGE_JAVA:Lcom/waze/ResourceDownloadType;

    invoke-virtual/range {v28 .. v28}, Lcom/waze/ResourceDownloadType;->getValue()I

    move-result v28

    aget-object v29, v4, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lcom/waze/ResManager;->downloadRes(ILjava/lang/String;Lcom/waze/DownloadResCallback;)V

    .line 664
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    :cond_14
    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 676
    .restart local v8       #d:Landroid/graphics/drawable/Drawable;
    :cond_15
    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    .line 690
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    :cond_16
    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->this$0:Lcom/waze/navigate/SearchActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static/range {v28 .. v28}, Lcom/waze/navigate/SearchActivity;->access$0(Lcom/waze/navigate/SearchActivity;)Lcom/waze/NativeManager;

    move-result-object v28

    aget-object v29, v4, v14

    invoke-virtual/range {v28 .. v29}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 706
    .end local v16           #imageView:Landroid/widget/ImageView;
    .end local v26           #textView:Landroid/widget/TextView;
    .restart local v7       #aiView:Landroid/view/View;
    :cond_17
    iget-boolean v0, v6, Lcom/waze/navigate/AddressItem;->sponsored:Z

    move/from16 v28, v0

    if-eqz v28, :cond_18

    .line 707
    const v28, 0x7f08003b

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 708
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_b

    .line 722
    :cond_18
    const v28, 0x7f02021f

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 723
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_b
.end method

.method public setItems([Lcom/waze/navigate/AddressItem;)V
    .locals 2
    .parameter "items"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->searchResultItems:[Lcom/waze/navigate/AddressItem;

    .line 428
    if-eqz p1, :cond_0

    .line 430
    array-length v0, p1

    .line 431
    .local v0, itemsLength:I
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->isAddressItemSeenAlready:[Z

    .line 438
    .end local v0           #itemsLength:I
    :cond_0
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->notifyDataSetChanged()V

    .line 439
    return-void
.end method
