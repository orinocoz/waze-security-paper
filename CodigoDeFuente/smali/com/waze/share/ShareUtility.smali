.class public Lcom/waze/share/ShareUtility;
.super Ljava/lang/Object;
.source "ShareUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/share/ShareUtility$IFriendSelected;,
        Lcom/waze/share/ShareUtility$OnShareClick;,
        Lcom/waze/share/ShareUtility$ShareType;
    }
.end annotation


# static fields
.field private static final ID_SELECTED:I = 0x1b5b

.field private static bIsSupported:Z

.field private static locationData:Lcom/waze/main/navigate/LocationData;

.field private static mStr:Ljava/lang/String;

.field private static mType:I

.field private static nativeManager:Lcom/waze/NativeManager;

.field private static placeStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/waze/share/ShareUtility;->mType:I

    .line 60
    sput-object v1, Lcom/waze/share/ShareUtility;->mStr:Ljava/lang/String;

    .line 61
    sput-object v1, Lcom/waze/share/ShareUtility;->nativeManager:Lcom/waze/NativeManager;

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/share/ShareUtility;->bIsSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BuildShareURL(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;)V
    .locals 8
    .parameter "type"
    .parameter "Url"
    .parameter "addressItem"

    .prologue
    .line 611
    const/4 v2, 0x0

    sput-object v2, Lcom/waze/share/ShareUtility;->locationData:Lcom/waze/main/navigate/LocationData;

    .line 613
    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDestination:Lcom/waze/share/ShareUtility$ShareType;

    if-eq p0, v2, :cond_0

    .line 618
    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareLocation:Lcom/waze/share/ShareUtility$ShareType;

    .line 637
    :cond_0
    if-eqz p2, :cond_2

    .line 639
    invoke-virtual {p2}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    .line 640
    sget-object v2, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 641
    :cond_1
    invoke-virtual {p2}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    .line 644
    :cond_2
    sget-object v2, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 645
    const-string v2, ""

    sput-object v2, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    .line 647
    :cond_3
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sput-object v2, Lcom/waze/share/ShareUtility;->nativeManager:Lcom/waze/NativeManager;

    .line 649
    const/4 v6, 0x0

    .line 650
    .local v6, locationX:I
    const/4 v7, 0x0

    .line 652
    .local v7, locationY:I
    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_PickUp:Lcom/waze/share/ShareUtility$ShareType;

    if-eq p0, v2, :cond_4

    .line 654
    if-eqz p2, :cond_4

    .line 655
    invoke-virtual {p2}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 656
    invoke-virtual {p2}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 660
    :cond_4
    const/4 v1, 0x2

    .line 661
    .local v1, nType:I
    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDestination:Lcom/waze/share/ShareUtility$ShareType;

    if-eq p0, v2, :cond_5

    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_PickUp:Lcom/waze/share/ShareUtility$ShareType;

    if-eq p0, v2, :cond_5

    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    if-ne p0, v2, :cond_8

    .line 663
    :cond_5
    const/4 v1, 0x1

    .line 670
    :cond_6
    :goto_0
    sput v1, Lcom/waze/share/ShareUtility;->mType:I

    .line 672
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 673
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    const/4 v5, 0x0

    .line 674
    .local v5, nIndex:Ljava/lang/String;
    if-eqz p2, :cond_7

    .line 676
    invoke-virtual {p2}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v5

    .line 679
    :cond_7
    const-string v2, ""

    sput-object v2, Lcom/waze/share/ShareUtility;->mStr:Ljava/lang/String;

    .line 681
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/waze/share/ShareUtility$2;

    invoke-direct {v4, p0, p2, p1}, Lcom/waze/share/ShareUtility$2;-><init>(Lcom/waze/share/ShareUtility$ShareType;Lcom/waze/navigate/AddressItem;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->getLocationData(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;Ljava/lang/String;)V

    .line 749
    return-void

    .line 665
    .end local v0           #driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    .end local v5           #nIndex:Ljava/lang/String;
    :cond_8
    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareSelection:Lcom/waze/share/ShareUtility$ShareType;

    if-ne p0, v2, :cond_6

    .line 667
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V
    .locals 14
    .parameter "type"
    .parameter "Url"
    .parameter "addressItem"
    .parameter "Sharefriends"

    .prologue
    .line 225
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/share/ShareUtility;->locationData:Lcom/waze/main/navigate/LocationData;

    .line 227
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDestination:Lcom/waze/share/ShareUtility$ShareType;

    if-eq p0, v0, :cond_0

    .line 232
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareLocation:Lcom/waze/share/ShareUtility$ShareType;

    .line 251
    :cond_0
    if-eqz p2, :cond_2

    .line 253
    invoke-virtual/range {p2 .. p2}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    .line 254
    sget-object v0, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    .line 258
    :cond_2
    sget-object v0, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 259
    const-string v0, ""

    sput-object v0, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    .line 261
    :cond_3
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    sput-object v0, Lcom/waze/share/ShareUtility;->nativeManager:Lcom/waze/NativeManager;

    .line 263
    const/4 v12, 0x0

    .line 264
    .local v12, locationX:I
    const/4 v13, 0x0

    .line 266
    .local v13, locationY:I
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_PickUp:Lcom/waze/share/ShareUtility$ShareType;

    if-eq p0, v0, :cond_4

    .line 268
    if-eqz p2, :cond_4

    .line 269
    invoke-virtual/range {p2 .. p2}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 270
    invoke-virtual/range {p2 .. p2}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 274
    :cond_4
    const/4 v6, 0x2

    .line 275
    .local v6, nType:I
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDestination:Lcom/waze/share/ShareUtility$ShareType;

    if-eq p0, v0, :cond_5

    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_PickUp:Lcom/waze/share/ShareUtility$ShareType;

    if-eq p0, v0, :cond_5

    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    if-ne p0, v0, :cond_8

    .line 277
    :cond_5
    const/4 v6, 0x1

    .line 284
    :cond_6
    :goto_0
    sput v6, Lcom/waze/share/ShareUtility;->mType:I

    .line 286
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/waze/navigate/social/ShareDriveActivity;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v4, intent:Landroid/content/Intent;
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    if-ne p0, v0, :cond_9

    .line 289
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    :goto_1
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v11

    .line 295
    .local v11, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    const/4 v10, 0x0

    .line 296
    .local v10, nIndex:Ljava/lang/String;
    if-eqz p2, :cond_7

    .line 298
    invoke-virtual/range {p2 .. p2}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v10

    .line 300
    :cond_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/waze/share/ShareUtility$1;

    move-object/from16 v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/share/ShareUtility$1;-><init>(Lcom/waze/navigate/AddressItem;Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Landroid/content/Intent;[Lcom/waze/user/PersonBase;)V

    move-object v5, v11

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/waze/navigate/DriveToNativeManager;->getLocationData(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;Ljava/lang/String;)V

    .line 439
    return-void

    .line 279
    .end local v4           #intent:Landroid/content/Intent;
    .end local v10           #nIndex:Ljava/lang/String;
    .end local v11           #driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    :cond_8
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareSelection:Lcom/waze/share/ShareUtility$ShareType;

    if-ne p0, v0, :cond_6

    .line 281
    const/4 v6, 0x3

    goto :goto_0

    .line 291
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_9
    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method static synthetic access$0(Z)V
    .locals 0
    .parameter

    .prologue
    .line 62
    sput-boolean p0, Lcom/waze/share/ShareUtility;->bIsSupported:Z

    return-void
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/waze/share/ShareUtility;->bIsSupported:Z

    return v0
.end method

.method static synthetic access$2(Lcom/waze/main/navigate/LocationData;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    sput-object p0, Lcom/waze/share/ShareUtility;->locationData:Lcom/waze/main/navigate/LocationData;

    return-void
.end method

.method static synthetic access$3()Lcom/waze/main/navigate/LocationData;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/waze/share/ShareUtility;->locationData:Lcom/waze/main/navigate/LocationData;

    return-object v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/waze/share/ShareUtility;->mType:I

    return v0
.end method

.method static synthetic access$5()Lcom/waze/NativeManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/waze/share/ShareUtility;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/waze/share/ShareUtility;->placeStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    sput-object p0, Lcom/waze/share/ShareUtility;->mStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/waze/share/ShareUtility;->mStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/NativeManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 785
    invoke-static {p0, p1, p2}, Lcom/waze/share/ShareUtility;->doShareAllowed(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/NativeManager;)V

    return-void
.end method

.method public static buildShareComponentAddMoreFriendsButton(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .parameter "ctx"
    .parameter "ocl"

    .prologue
    .line 539
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 540
    .local v0, frame:Landroid/widget/FrameLayout;
    const v1, 0x7f090697

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 541
    invoke-virtual {p0}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020368

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 543
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    return-object v0
.end method

.method public static buildShareComponentFriendButton(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;Lcom/waze/share/ShareUtility$IFriendSelected;)Landroid/view/View;
    .locals 15
    .parameter "ctx"
    .parameter "name"
    .parameter "imageUri"
    .parameter "isSelected"
    .parameter "isPermanent"
    .parameter "friend"
    .parameter "ofs"

    .prologue
    .line 448
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 450
    .local v6, frame:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4210

    mul-float/2addr v0, v1

    float-to-int v12, v0

    .line 451
    .local v12, dimen:I
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 452
    .local v13, params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 454
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 455
    .local v3, iv:Landroid/widget/ImageView;
    const v0, 0x7f020379

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    invoke-virtual {v6, v3, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 459
    .local v14, tv:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/waze/share/ShareUtility;->getInitials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    const/4 v0, -0x1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    const/16 v0, 0x11

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 462
    invoke-virtual {v6, v14, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 465
    new-instance v3, Landroid/widget/ImageView;

    .end local v3           #iv:Landroid/widget/ImageView;
    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 466
    .restart local v3       #iv:Landroid/widget/ImageView;
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 467
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 468
    invoke-virtual {v6, v3, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    :cond_0
    new-instance v3, Landroid/widget/ImageView;

    .end local v3           #iv:Landroid/widget/ImageView;
    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 472
    .restart local v3       #iv:Landroid/widget/ImageView;
    const v0, 0x7f02036d

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 473
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 475
    new-instance v3, Landroid/widget/ImageView;

    .end local v3           #iv:Landroid/widget/ImageView;
    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 476
    .restart local v3       #iv:Landroid/widget/ImageView;
    if-eqz p4, :cond_2

    .line 477
    const v0, 0x7f02036f

    .line 476
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 479
    const/16 v0, 0x1b5b

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 480
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 482
    if-nez p4, :cond_1

    .line 483
    new-instance v4, Lcom/waze/share/ShareUtility$OnShareClick;

    const/4 v11, 0x0

    move-object v5, p0

    move-object/from16 v7, p5

    move/from16 v8, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v11}, Lcom/waze/share/ShareUtility$OnShareClick;-><init>(Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/FrameLayout;Ljava/lang/Object;ZLcom/waze/share/ShareUtility$IFriendSelected;Ljava/lang/String;Lcom/waze/share/ShareUtility$OnShareClick;)V

    .line 484
    .local v4, onShareClick:Lcom/waze/share/ShareUtility$OnShareClick;
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    .end local v4           #onShareClick:Lcom/waze/share/ShareUtility$OnShareClick;
    :cond_1
    return-object v6

    .line 478
    :cond_2
    const v0, 0x7f02036e

    goto :goto_0
.end method

.method private static doShareAllowed(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/NativeManager;)V
    .locals 7
    .parameter "a"
    .parameter "type"
    .parameter "nm"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 786
    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_3

    .line 787
    invoke-virtual {p2}, Lcom/waze/NativeManager;->isFollowActiveNTV()Z

    move-result v1

    .line 788
    .local v1, bIsFollowed:Z
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v3

    .line 789
    .local v3, isNavigating:Z
    if-eqz v1, :cond_1

    .line 791
    invoke-virtual {p2}, Lcom/waze/NativeManager;->getCurMeetingNTV()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, MeetingID:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/waze/navigate/social/MyShareDriveActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 793
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "meeting"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0, v2, v6}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 836
    .end local v0           #MeetingID:Ljava/lang/String;
    .end local v1           #bIsFollowed:Z
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isNavigating:Z
    :cond_0
    :goto_0
    return-void

    .line 795
    .restart local v1       #bIsFollowed:Z
    .restart local v3       #isNavigating:Z
    :cond_1
    if-eqz v3, :cond_2

    .line 796
    sget-object v4, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    invoke-static {v4, v5, v5, v5}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    goto :goto_0

    .line 798
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/waze/navigate/social/ShareHelpActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 799
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v6}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 801
    .end local v1           #bIsFollowed:Z
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isNavigating:Z
    :cond_3
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_4

    .line 802
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/waze/share/ShareActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 803
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 804
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_5

    .line 805
    sget-object v4, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareLocation:Lcom/waze/share/ShareUtility$ShareType;

    invoke-static {v4, v5, v5, v5}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    goto :goto_0

    .line 806
    :cond_5
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_6

    .line 807
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v4

    .line 808
    new-instance v5, Lcom/waze/share/ShareUtility$4;

    invoke-direct {v5}, Lcom/waze/share/ShareUtility$4;-><init>()V

    .line 807
    invoke-virtual {v4, v5}, Lcom/waze/navigate/DriveToNativeManager;->getHome(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    goto :goto_0

    .line 820
    :cond_6
    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_0

    .line 821
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v4

    .line 822
    new-instance v5, Lcom/waze/share/ShareUtility$5;

    invoke-direct {v5}, Lcom/waze/share/ShareUtility$5;-><init>()V

    .line 821
    invoke-virtual {v4, v5}, Lcom/waze/navigate/DriveToNativeManager;->getWork(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    goto :goto_0
.end method

.method public static getFirstName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 531
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 532
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 533
    .local v0, end:I
    if-gez v0, :cond_0

    .line 534
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getInitials(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "name"

    .prologue
    const/4 v9, 0x3

    const/4 v3, 0x0

    .line 491
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v9, :cond_0

    .line 504
    .end local p0
    :goto_0
    return-object p0

    .line 494
    .restart local p0
    :cond_0
    const-string v0, ""

    .line 495
    .local v0, initials:Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_1
    if-lt v2, v5, :cond_2

    .line 501
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_1

    .line 502
    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object p0, v0

    .line 504
    goto :goto_0

    .line 495
    :cond_2
    aget-object v1, v4, v2

    .line 496
    .local v1, tok:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 495
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 499
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static getShortened(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 509
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-gt v3, v5, :cond_0

    .line 526
    .end local p0
    :goto_0
    return-object p0

    .line 512
    .restart local p0
    :cond_0
    const/4 v0, 0x1

    .line 513
    .local v0, first:Z
    const-string v1, ""

    .line 514
    .local v1, shortened:Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_1
    if-lt v3, v6, :cond_1

    move-object p0, v1

    .line 526
    goto :goto_0

    .line 514
    :cond_1
    aget-object v2, v5, v3

    .line 515
    .local v2, tok:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 514
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 518
    :cond_3
    if-eqz v0, :cond_4

    .line 519
    const/4 v0, 0x0

    .line 520
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    goto :goto_2

    .line 522
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static shareComponentPopulate(Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/waze/share/ShareUtility$IFriendSelected;)V
    .locals 21
    .parameter "ctx"
    .parameter "layout"
    .parameter
    .parameter
    .parameter "isSelected"
    .parameter "abberate"
    .parameter "ifs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/waze/ifs/ui/ActivityBase;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;ZZ",
            "Lcom/waze/share/ShareUtility$IFriendSelected;",
            ")V"
        }
    .end annotation

    .prologue
    .line 551
    .local p2, arrayPerm:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    .local p3, arraySelect:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 552
    const/4 v14, 0x0

    .line 554
    .local v14, numFriends:I
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    if-nez p2, :cond_5

    .line 559
    const/16 v16, 0x0

    .line 560
    .local v16, numPerm:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v10, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 568
    const/high16 v3, -0x3ee0

    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v6

    float-to-int v0, v3

    move/from16 v18, v0

    .line 569
    .local v18, rightMargin:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v13

    .line 570
    .local v13, layoutWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f02036d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 572
    .local v12, itemWidth:I
    add-int v3, v13, v18

    add-int v6, v12, v18

    div-int/2addr v3, v6

    add-int/lit8 v15, v3, -0x1

    .line 575
    .local v15, numItems:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/waze/user/PersonBase;

    .line 576
    .local v8, p:Lcom/waze/user/PersonBase;
    add-int/lit8 v14, v14, 0x1

    .line 577
    invoke-virtual {v8}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, image:Ljava/lang/String;
    move/from16 v0, v16

    if-gt v14, v0, :cond_6

    const/4 v7, 0x1

    .line 581
    .local v7, isPermanent:Z
    :goto_2
    if-eqz p5, :cond_4

    if-ne v14, v15, :cond_4

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v15, :cond_4

    .line 583
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v14

    add-int/lit8 v11, v3, 0x1

    .line 584
    .local v11, howMany:I
    const/16 v3, 0x64

    if-ge v11, v3, :cond_7

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 589
    :goto_3
    const/4 v5, 0x0

    .line 590
    const/4 v7, 0x0

    .line 591
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->isFollowActiveNTV()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 593
    const/4 v7, 0x1

    .line 595
    :cond_3
    const/16 p4, 0x1

    .line 596
    const/4 v8, 0x0

    .end local v11           #howMany:I
    :cond_4
    move-object/from16 v3, p0

    move/from16 v6, p4

    move-object/from16 v9, p6

    .line 599
    invoke-static/range {v3 .. v9}, Lcom/waze/share/ShareUtility;->buildShareComponentFriendButton(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;Lcom/waze/share/ShareUtility$IFriendSelected;)Landroid/view/View;

    move-result-object v19

    .line 601
    .local v19, v:Landroid/view/View;
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v6, -0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 602
    .local v17, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v6, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 603
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    if-lt v14, v15, :cond_2

    goto/16 :goto_0

    .line 562
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #image:Ljava/lang/String;
    .end local v7           #isPermanent:Z
    .end local v8           #p:Lcom/waze/user/PersonBase;
    .end local v10           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    .end local v12           #itemWidth:I
    .end local v13           #layoutWidth:I
    .end local v15           #numItems:I
    .end local v16           #numPerm:I
    .end local v17           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v18           #rightMargin:I
    .end local v19           #v:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 563
    .restart local v16       #numPerm:I
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v10       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    goto/16 :goto_1

    .line 579
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #image:Ljava/lang/String;
    .restart local v8       #p:Lcom/waze/user/PersonBase;
    .restart local v12       #itemWidth:I
    .restart local v13       #layoutWidth:I
    .restart local v15       #numItems:I
    .restart local v18       #rightMargin:I
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 587
    .restart local v7       #isPermanent:Z
    .restart local v11       #howMany:I
    :cond_7
    const-string v4, "++"

    goto :goto_3
.end method

.method public static shareLocationOrDrive(Lcom/waze/ifs/ui/ActivityBase;I)V
    .locals 5
    .parameter "a"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 752
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 755
    .local v2, nm:Lcom/waze/NativeManager;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 756
    invoke-virtual {v2}, Lcom/waze/NativeManager;->IsAccessToContactsEnableNTV()Z

    move-result v3

    if-nez v3, :cond_0

    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_1

    .line 758
    :cond_0
    invoke-static {p0, p1, v2}, Lcom/waze/share/ShareUtility;->doShareAllowed(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/NativeManager;)V

    .line 783
    :goto_0
    return-void

    .line 761
    :cond_1
    new-instance v0, Lcom/waze/phone/PhoneRequestAccessDialog;

    new-instance v3, Lcom/waze/share/ShareUtility$3;

    invoke-direct {v3, p0, p1, v2}, Lcom/waze/share/ShareUtility$3;-><init>(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/NativeManager;)V

    invoke-direct {v0, p0, v3}, Lcom/waze/phone/PhoneRequestAccessDialog;-><init>(Landroid/content/Context;Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;)V

    .line 771
    .local v0, dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    invoke-virtual {v0}, Lcom/waze/phone/PhoneRequestAccessDialog;->show()V

    goto :goto_0

    .line 775
    .end local v0           #dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 776
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "type"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 777
    const-string v3, "back"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 778
    const-string v3, "fon_shon_rea_son"

    .line 779
    const-string v4, "FEATURE"

    .line 778
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v3

    .line 781
    const v4, 0x10001

    or-int/2addr v4, p1

    .line 780
    invoke-virtual {v3, v1, v4}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
