.class public Lcom/waze/view/popups/FriendsOnlinePopUp;
.super Lcom/waze/view/popups/PopUp;
.source "FriendsOnlinePopUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/view/popups/FriendsOnlinePopUp$BitmapDownloaderTask;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/waze/view/popups/FriendsOnlinePopUp;

.field private static mIsShown:Z

.field private static mLayoutManager:Lcom/waze/LayoutManager;


# instance fields
.field protected data:Lcom/waze/navigate/social/FriendsListData;

.field private friendsListLayout:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mContext:Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mIsShown:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 82
    sput-object p1, Lcom/waze/view/popups/FriendsOnlinePopUp;->mContext:Landroid/content/Context;

    .line 83
    sput-object p2, Lcom/waze/view/popups/FriendsOnlinePopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 84
    invoke-direct {p0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->init()V

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/FriendsOnlinePopUp;Lcom/waze/user/FriendUserData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/waze/view/popups/FriendsOnlinePopUp;->friendsListAddFriend(Lcom/waze/user/FriendUserData;)V

    return-void
.end method

.method public static closeNow()V
    .locals 1

    .prologue
    .line 639
    sget-object v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mInstance:Lcom/waze/view/popups/FriendsOnlinePopUp;

    if-eqz v0, :cond_0

    .line 640
    sget-object v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mInstance:Lcom/waze/view/popups/FriendsOnlinePopUp;

    invoke-virtual {v0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->hide()V

    .line 641
    :cond_0
    return-void
.end method

.method private friendsListAddFriend(Lcom/waze/user/FriendUserData;)V
    .locals 9
    .parameter "friend"

    .prologue
    const v8, 0x7f0902f3

    const v7, 0x7f0902f2

    const/16 v6, 0x8

    .line 411
    iget-object v2, p0, Lcom/waze/view/popups/FriendsOnlinePopUp;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030061

    iget-object v4, p0, Lcom/waze/view/popups/FriendsOnlinePopUp;->friendsListLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 412
    .local v1, friendLayoutInListLayout:Landroid/widget/FrameLayout;
    const v2, 0x7f09028b

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 413
    .local v0, friendImageInLayout:Landroid/widget/ImageView;
    const v2, 0x7f09028f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/waze/user/FriendUserData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    const v2, 0x7f090290

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v2, p1, Lcom/waze/user/FriendUserData;->mLastReportIcon:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 416
    const v2, 0x7f090292

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/waze/user/FriendUserData;->mLastReportIcon:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    :goto_0
    const v2, 0x7f090293

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/waze/user/FriendUserData;->mLastReportText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const v2, 0x7f02011b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    sget-object v2, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v3, p1, Lcom/waze/user/FriendUserData;->pictureUrl:Ljava/lang/String;

    new-instance v4, Lcom/waze/view/popups/FriendsOnlinePopUp$3;

    invoke-direct {v4, p0, v0}, Lcom/waze/view/popups/FriendsOnlinePopUp$3;-><init>(Lcom/waze/view/popups/FriendsOnlinePopUp;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3, v4}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 435
    iget-boolean v2, p1, Lcom/waze/user/FriendUserData;->mAllowPrivatePing:Z

    if-eqz v2, :cond_2

    .line 436
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/view/popups/FriendsOnlinePopUp$4;

    invoke-direct {v3, p0, p1}, Lcom/waze/view/popups/FriendsOnlinePopUp$4;-><init>(Lcom/waze/view/popups/FriendsOnlinePopUp;Lcom/waze/user/FriendUserData;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-boolean v2, p1, Lcom/waze/user/FriendUserData;->mAllowBeepBeep:Z

    if-eqz v2, :cond_1

    .line 445
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/view/popups/FriendsOnlinePopUp$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/waze/view/popups/FriendsOnlinePopUp$5;-><init>(Lcom/waze/view/popups/FriendsOnlinePopUp;Lcom/waze/user/FriendUserData;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    :goto_1
    iget-object v2, p0, Lcom/waze/view/popups/FriendsOnlinePopUp;->friendsListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    return-void

    .line 418
    :cond_0
    const v2, 0x7f090291

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 459
    :cond_2
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 460
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/FriendsOnlinePopUp;
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 57
    sget-object v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mInstance:Lcom/waze/view/popups/FriendsOnlinePopUp;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/waze/view/popups/FriendsOnlinePopUp;

    invoke-direct {v0, p0, p1}, Lcom/waze/view/popups/FriendsOnlinePopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    sput-object v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mInstance:Lcom/waze/view/popups/FriendsOnlinePopUp;

    .line 60
    :cond_0
    sget-object v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mInstance:Lcom/waze/view/popups/FriendsOnlinePopUp;

    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mInstance:Lcom/waze/view/popups/FriendsOnlinePopUp;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 101
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030060

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 103
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 106
    const v1, 0x7f0902ee

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method


# virtual methods
.method public GetHeight()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/waze/view/popups/PopUp;->GetHeight()I

    move-result v0

    return v0
.end method

.method public GetView()Landroid/view/View;
    .locals 14

    .prologue
    .line 552
    sget-boolean v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mIsShown:Z

    if-eqz v9, :cond_0

    .line 554
    sget-object v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mInstance:Lcom/waze/view/popups/FriendsOnlinePopUp;

    invoke-virtual {v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->dismiss()V

    .line 565
    :cond_0
    const v9, 0x7f0902f1

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 566
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v10

    .line 567
    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_VIEW_ALL_FRIENDS:Lcom/waze/strings/DisplayStrings;

    .line 566
    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    const v9, 0x7f0902ef

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/waze/view/popups/FriendsOnlinePopUp$7;

    invoke-direct {v10, p0}, Lcom/waze/view/popups/FriendsOnlinePopUp$7;-><init>(Lcom/waze/view/popups/FriendsOnlinePopUp;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    const/4 v9, 0x1

    sput-boolean v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mIsShown:Z

    .line 581
    invoke-virtual {p0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->fillPopUpData()V

    .line 583
    const/16 v6, 0x154

    .line 584
    .local v6, ndpConst:I
    sget-object v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v2, v9, Landroid/util/DisplayMetrics;->density:F

    .line 585
    .local v2, ds:F
    int-to-float v9, v6

    mul-float/2addr v9, v2

    float-to-int v5, v9

    .line 587
    .local v5, nSize:I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 588
    .local v0, dm:Landroid/util/DisplayMetrics;
    sget-object v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 589
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 591
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v9, v5, :cond_1

    .line 593
    const v9, 0x7f0902ef

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f02016d

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 594
    const v9, 0x7f0902ed

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f020038

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 596
    const v9, 0x7f090092

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 597
    .local v3, layout:Landroid/widget/ScrollView;
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 598
    .local v7, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x10

    .line 599
    .local v1, dpValue:I
    int-to-float v9, v1

    mul-float/2addr v9, v2

    float-to-int v4, v9

    .line 600
    .local v4, margin:I
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v4, v9, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 601
    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 603
    const v9, 0x7f0902ed

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 604
    const v9, 0x7f0902ef

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 634
    .end local v1           #dpValue:I
    .end local v4           #margin:I
    :goto_0
    sget-object v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mInstance:Lcom/waze/view/popups/FriendsOnlinePopUp;

    return-object v9

    .line 608
    .end local v3           #layout:Landroid/widget/ScrollView;
    .end local v7           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const v9, 0x7f0902ef

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f02016c

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 609
    const v9, 0x7f0902ed

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f020035

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 610
    const v9, 0x7f090092

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 611
    .restart local v3       #layout:Landroid/widget/ScrollView;
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 612
    .restart local v7       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 613
    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 615
    const v9, 0x7f0902ed

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 616
    const v9, 0x7f0902ef

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mIsShown:Z

    .line 89
    new-instance v0, Lcom/waze/view/popups/FriendsOnlinePopUp$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/FriendsOnlinePopUp$1;-><init>(Lcom/waze/view/popups/FriendsOnlinePopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 94
    iget-object v0, p0, Lcom/waze/view/popups/FriendsOnlinePopUp;->friendsListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 95
    sget-object v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 96
    return-void
.end method

.method public fillPopUpData()V
    .locals 2

    .prologue
    .line 363
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_FRIENDS_ONLINE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->setTitle(Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/view/popups/FriendsOnlinePopUp;->inflater:Landroid/view/LayoutInflater;

    .line 367
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/view/popups/FriendsOnlinePopUp;->friendsListLayout:Landroid/widget/LinearLayout;

    .line 369
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/FriendsOnlinePopUp$2;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/FriendsOnlinePopUp$2;-><init>(Lcom/waze/view/popups/FriendsOnlinePopUp;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getFriendsListData(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 408
    return-void
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->dismiss()V

    .line 646
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mIsShown:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 468
    sget-object v0, Lcom/waze/view/popups/FriendsOnlinePopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 469
    return-void
.end method

.method public setCloseTime(I)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 356
    return-void
.end method

.method public show()V
    .locals 14

    .prologue
    .line 472
    sget-boolean v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mIsShown:Z

    if-eqz v9, :cond_0

    .line 474
    sget-object v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mInstance:Lcom/waze/view/popups/FriendsOnlinePopUp;

    invoke-virtual {v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->dismiss()V

    .line 485
    :cond_0
    const v9, 0x7f0902f1

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 486
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v10

    .line 487
    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_VIEW_ALL_FRIENDS:Lcom/waze/strings/DisplayStrings;

    .line 486
    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    const v9, 0x7f0902ef

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/waze/view/popups/FriendsOnlinePopUp$6;

    invoke-direct {v10, p0}, Lcom/waze/view/popups/FriendsOnlinePopUp$6;-><init>(Lcom/waze/view/popups/FriendsOnlinePopUp;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    const/4 v9, 0x1

    sput-boolean v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mIsShown:Z

    .line 502
    invoke-virtual {p0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->fillPopUpData()V

    .line 504
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 505
    .local v1, dm:Landroid/util/DisplayMetrics;
    sget-object v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 506
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 508
    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v10, 0x2a8

    if-le v9, v10, :cond_3

    .line 511
    const v9, 0x7f0902ef

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f02016d

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 512
    const v9, 0x7f0902ed

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f020038

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 514
    const v9, 0x7f090091

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 515
    .local v3, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 516
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    .line 517
    .local v2, dpValue:I
    invoke-virtual {p0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v0, v9, Landroid/util/DisplayMetrics;->density:F

    .line 518
    .local v0, d:F
    int-to-float v9, v2

    mul-float/2addr v9, v0

    float-to-int v4, v9

    .line 519
    .local v4, margin:I
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v4, v9, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 520
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    const v9, 0x7f0902ed

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 522
    const v9, 0x7f0902ef

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 533
    .end local v0           #d:F
    .end local v2           #dpValue:I
    .end local v3           #layout:Landroid/widget/RelativeLayout;
    .end local v4           #margin:I
    .end local v6           #params:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    sget-object v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 535
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 537
    const v9, 0x7f0902ed

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 538
    .restart local v3       #layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 539
    .local v6, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/NavBarManager;->getNavBar()Lcom/waze/navbar/NavBar;

    move-result-object v5

    .line 540
    .local v5, navBar:Lcom/waze/navbar/NavBar;
    const/4 v7, 0x0

    .line 541
    .local v7, topMargin:I
    if-eqz v5, :cond_1

    .line 542
    invoke-virtual {v5}, Lcom/waze/navbar/NavBar;->getNavBarHeight()I

    move-result v7

    .line 544
    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v7, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 545
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    .end local v3           #layout:Landroid/widget/RelativeLayout;
    .end local v5           #navBar:Lcom/waze/navbar/NavBar;
    .end local v6           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #topMargin:I
    :cond_2
    sget-object v9, Lcom/waze/view/popups/FriendsOnlinePopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    sget-object v10, Lcom/waze/view/popups/FriendsOnlinePopUp;->mInstance:Lcom/waze/view/popups/FriendsOnlinePopUp;

    invoke-virtual {v9, v10}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 549
    return-void

    .line 526
    :cond_3
    const v9, 0x7f0902ef

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f02016c

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 527
    const v9, 0x7f0902ed

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f020035

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 528
    const v9, 0x7f090091

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/16 v12, 0x5d

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    const v9, 0x7f0902ed

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 530
    const v9, 0x7f0902ef

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/FriendsOnlinePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0
.end method
