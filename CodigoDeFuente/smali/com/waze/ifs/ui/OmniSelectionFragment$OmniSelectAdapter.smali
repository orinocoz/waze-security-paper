.class public Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "OmniSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/OmniSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OmniSelectAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mBoldLastItem:Z

.field private mSelectedItem:Lcom/waze/settings/SettingsValue;

.field private mSelectedPos:I

.field private mShowLastItem:Z

.field protected values:[Lcom/waze/settings/SettingsValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 499
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mSelectedItem:Lcom/waze/settings/SettingsValue;

    .line 495
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mSelectedPos:I

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mShowLastItem:Z

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mBoldLastItem:Z

    .line 500
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 501
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->values:[Lcom/waze/settings/SettingsValue;

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 515
    :goto_0
    return v0

    .line 512
    :cond_0
    iget-boolean v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mShowLastItem:Z

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v0, v0

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->values:[Lcom/waze/settings/SettingsValue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->values:[Lcom/waze/settings/SettingsValue;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 533
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedItem()Lcom/waze/settings/SettingsValue;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mSelectedItem:Lcom/waze/settings/SettingsValue;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mSelectedPos:I

    return v0
.end method

.method public getValues()[Lcom/waze/settings/SettingsValue;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->values:[Lcom/waze/settings/SettingsValue;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 538
    if-nez p2, :cond_0

    .line 539
    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03009c

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 541
    :cond_0
    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->values:[Lcom/waze/settings/SettingsValue;

    aget-object v4, v8, p1

    .line 542
    .local v4, item:Lcom/waze/settings/SettingsValue;
    iget-object v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v8, v8

    add-int/lit8 v5, v8, -0x1

    .line 544
    .local v5, lastItem:I
    const v8, 0x7f0904ca

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 545
    .local v6, name:Landroid/widget/TextView;
    const v8, 0x7f0904cb

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 546
    .local v7, sub:Landroid/widget/TextView;
    const v8, 0x7f0904c8

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 548
    .local v3, iconView:Landroid/widget/ImageView;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 549
    iget-object v8, v4, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 550
    iget-object v8, v4, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    :cond_1
    :goto_0
    iget-object v8, v4, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-boolean v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mBoldLastItem:Z

    if-eqz v8, :cond_8

    if-ne p1, v5, :cond_8

    .line 566
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 571
    :goto_1
    iget-object v8, v4, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v4, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    .line 572
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    :goto_2
    iget-boolean v8, v4, Lcom/waze/settings/SettingsValue;->isSelected:Z

    if-eqz v8, :cond_3

    .line 578
    iput-object v4, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mSelectedItem:Lcom/waze/settings/SettingsValue;

    .line 579
    iput p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mSelectedPos:I

    .line 581
    :cond_3
    const v8, 0x7f0904cc

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 582
    .local v0, check:Landroid/widget/ImageView;
    iget-boolean v8, v4, Lcom/waze/settings/SettingsValue;->isSelected:Z

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    iget-boolean v8, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mShowLastItem:Z

    if-nez v8, :cond_4

    add-int/lit8 v5, v5, -0x1

    .line 586
    :cond_4
    const v8, 0x7f0904c7

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 587
    .local v1, container:Landroid/view/View;
    if-nez p1, :cond_c

    .line 588
    if-ne p1, v5, :cond_b

    .line 589
    const v8, 0x7f020225

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 600
    :goto_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 601
    return-object p2

    .line 552
    .end local v0           #check:Landroid/widget/ImageView;
    .end local v1           #container:Landroid/view/View;
    :cond_5
    iget-object v8, v4, Lcom/waze/settings/SettingsValue;->iconName:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 553
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/waze/settings/SettingsValue;->iconName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".bin"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 554
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    .line 555
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 557
    :cond_6
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 560
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_7
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 568
    :cond_8
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 574
    :cond_9
    iget-object v8, v4, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 582
    .restart local v0       #check:Landroid/widget/ImageView;
    :cond_a
    const/4 v8, 0x4

    goto :goto_3

    .line 591
    .restart local v1       #container:Landroid/view/View;
    :cond_b
    const v8, 0x7f020226

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 594
    :cond_c
    if-ne p1, v5, :cond_d

    .line 595
    const v8, 0x7f020223

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 597
    :cond_d
    const v8, 0x7f020224

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4
.end method

.method public setBoldLastItem(Z)V
    .locals 0
    .parameter "bold"

    .prologue
    .line 614
    iput-boolean p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mBoldLastItem:Z

    .line 615
    return-void
.end method

.method public setShowLastItem(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 610
    iput-boolean p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->mShowLastItem:Z

    .line 611
    return-void
.end method

.method public setValues([Lcom/waze/settings/SettingsValue;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 605
    iput-object p1, p0, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->values:[Lcom/waze/settings/SettingsValue;

    .line 606
    invoke-virtual {p0}, Lcom/waze/ifs/ui/OmniSelectionFragment$OmniSelectAdapter;->notifyDataSetChanged()V

    .line 607
    return-void
.end method
