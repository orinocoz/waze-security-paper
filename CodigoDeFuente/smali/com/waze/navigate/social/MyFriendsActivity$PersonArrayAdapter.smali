.class Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MyFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/social/MyFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private _nativeManager:Lcom/waze/NativeManager;

.field private _numTotal:I

.field private activity:Lcom/waze/ifs/ui/ActivityBase;

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/waze/navigate/social/MyFriendsActivity;


# direct methods
.method public constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity;Lcom/waze/ifs/ui/ActivityBase;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "a"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/waze/ifs/ui/ActivityBase;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p3, friends:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 464
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Lcom/waze/ifs/ui/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 465
    iput-object p2, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->activity:Lcom/waze/ifs/ui/ActivityBase;

    .line 466
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->_numTotal:I

    .line 467
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->_nativeManager:Lcom/waze/NativeManager;

    .line 468
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;)Lcom/waze/navigate/social/MyFriendsActivity;
    .locals 1
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    return-object v0
.end method

.method private makeFooter(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .parameter "text"

    .prologue
    .line 628
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 629
    .local v1, footer:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->activity:Lcom/waze/ifs/ui/ActivityBase;

    const v5, 0x7f060049

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 630
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 632
    const/4 v4, 0x2

    const/high16 v5, 0x4160

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 633
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 634
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 635
    .local v0, density:F
    const/high16 v4, 0x4170

    mul-float/2addr v4, v0

    float-to-int v2, v4

    .line 636
    .local v2, hPad:I
    const/high16 v4, 0x40a0

    mul-float/2addr v4, v0

    float-to-int v3, v4

    .line 637
    .local v3, vPad:I
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 638
    return-object v1
.end method

.method private makeHeader(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "text"

    .prologue
    .line 614
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 615
    .local v2, header:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    const/16 v4, 0xd6

    const/16 v5, 0xe8

    const/16 v6, 0xed

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 617
    const/16 v4, 0x60

    const/16 v5, 0x72

    const/16 v6, 0x7a

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 618
    const/4 v4, 0x2

    const/high16 v5, 0x4190

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 620
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 621
    .local v0, density:F
    const/high16 v4, 0x4170

    mul-float/2addr v4, v0

    float-to-int v1, v4

    .line 622
    .local v1, hPad:I
    const/high16 v4, 0x40a0

    mul-float/2addr v4, v0

    float-to-int v3, v4

    .line 623
    .local v3, vPad:I
    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 624
    return-object v2
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 472
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 473
    .local v0, count:I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 478
    iget v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->_numTotal:I

    if-ge p1, v1, :cond_0

    .line 479
    invoke-virtual {p0, p1}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 480
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lcom/waze/user/PersonBase;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 482
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 487
    iget v7, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->_numTotal:I

    if-ne p1, v7, :cond_0

    .line 488
    iget-object v7, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->_nativeManager:Lcom/waze/NativeManager;

    .line 489
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_FRIENDS_SEE_EACH_OTHER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 488
    invoke-direct {p0, v7}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->makeFooter(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 610
    :goto_0
    return-object v1

    .line 492
    :cond_0
    invoke-virtual {p0, p1}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 494
    .local v4, obj:Ljava/lang/Object;
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 495
    check-cast v4, Ljava/lang/String;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->makeHeader(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .restart local v4       #obj:Ljava/lang/Object;
    :cond_1
    move-object v2, v4

    .line 497
    check-cast v2, Lcom/waze/user/FriendUserData;

    .line 501
    .local v2, fud:Lcom/waze/user/FriendUserData;
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->isHeader(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 502
    :cond_2
    iget-object v7, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030008

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 507
    .local v1, friendLayout:Landroid/view/View;
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 510
    iget-object v7, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    invoke-virtual {v2}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v8

    .line 511
    invoke-virtual {v2}, Lcom/waze/user/FriendUserData;->getImage()Ljava/lang/String;

    move-result-object v9

    .line 510
    invoke-static {v7, v1, v8, v9}, Lcom/waze/navigate/social/AddFriendsUtils;->setNameAndImage(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v7, v2, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v2, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    .line 514
    :cond_3
    const v7, 0x7f090087

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :goto_2
    const v7, 0x7f09007f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 521
    iget-boolean v7, v2, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    .line 520
    :goto_3
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 523
    const v7, 0x7f09008a

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 524
    .local v0, addButton:Landroid/widget/ImageView;
    const v7, 0x7f090089

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 526
    .local v5, removeButton:Landroid/view/View;
    iget-object v7, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mSuggested:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/waze/navigate/social/MyFriendsActivity;->access$0(Lcom/waze/navigate/social/MyFriendsActivity;)Landroid/util/SparseArray;

    move-result-object v7

    iget v8, v2, Lcom/waze/user/FriendUserData;->mID:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8

    const/4 v3, 0x1

    .line 528
    .local v3, isSuggestion:Z
    :goto_4
    iget-boolean v7, v2, Lcom/waze/user/FriendUserData;->mIsPendingMy:Z

    if-nez v7, :cond_4

    if-eqz v3, :cond_b

    .line 529
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v7, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mAcceptedFriendsArray:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/waze/navigate/social/MyFriendsActivity;->access$1(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 532
    const v7, 0x7f020171

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 533
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 581
    :goto_5
    new-instance v7, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter$3;

    invoke-direct {v7, p0, v2}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter$3;-><init>(Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;Lcom/waze/user/FriendUserData;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    const v7, 0x7f09008b

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 589
    .local v6, shareImg:Landroid/widget/ImageView;
    iget-object v7, v2, Lcom/waze/user/FriendUserData;->mMeetingIdSharedWithMe:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c

    .line 590
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    const v7, 0x7f020164

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 592
    const v7, 0x7f090087

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v8}, Lcom/waze/navigate/social/MyFriendsActivity;->access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v8

    .line 593
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_SHARING_A_DRIVE_WITH_YOU:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 592
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    const v7, 0x7f090087

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0xff

    .line 595
    const/16 v9, 0x6d

    const/16 v10, 0x3b

    .line 594
    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 596
    const v7, 0x7f090087

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_0

    .line 504
    .end local v0           #addButton:Landroid/widget/ImageView;
    .end local v1           #friendLayout:Landroid/view/View;
    .end local v3           #isSuggestion:Z
    .end local v5           #removeButton:Landroid/view/View;
    .end local v6           #shareImg:Landroid/widget/ImageView;
    :cond_5
    move-object v1, p2

    .restart local v1       #friendLayout:Landroid/view/View;
    goto/16 :goto_1

    .line 516
    :cond_6
    const v7, 0x7f090087

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 517
    const v7, 0x7f090087

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v2, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 521
    :cond_7
    const/4 v7, 0x4

    goto/16 :goto_3

    .line 526
    .restart local v0       #addButton:Landroid/widget/ImageView;
    .restart local v5       #removeButton:Landroid/view/View;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 537
    .restart local v3       #isSuggestion:Z
    :cond_9
    iget-boolean v7, v2, Lcom/waze/user/FriendUserData;->mIsPendingMy:Z

    if-eqz v7, :cond_a

    .line 538
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 539
    new-instance v7, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter$1;

    invoke-direct {v7, p0, v2}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter$1;-><init>(Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;Lcom/waze/user/FriendUserData;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    :goto_6
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    const v7, 0x7f020009

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 558
    new-instance v7, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter$2;

    invoke-direct {v7, p0, v2}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter$2;-><init>(Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;Lcom/waze/user/FriendUserData;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 552
    :cond_a
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 553
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 577
    :cond_b
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 578
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 597
    .restart local v6       #shareImg:Landroid/widget/ImageView;
    :cond_c
    iget-object v7, v2, Lcom/waze/user/FriendUserData;->mMeetingIdSharedByMe:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 598
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    const v7, 0x7f020165

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 600
    const v7, 0x7f090087

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v8}, Lcom/waze/navigate/social/MyFriendsActivity;->access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v8

    .line 601
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_ON_YOUR_SHARED_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 600
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    const v7, 0x7f090087

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0xff

    .line 603
    const/16 v9, 0x6d

    const/16 v10, 0x3b

    .line 602
    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 605
    :cond_d
    const v7, 0x7f090087

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0xaa

    .line 606
    const/16 v9, 0xaa

    const/16 v10, 0xaa

    .line 605
    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 607
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method isHeader(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 642
    instance-of v0, p1, Landroid/widget/TextView;

    return v0
.end method
