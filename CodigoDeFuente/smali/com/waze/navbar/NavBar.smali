.class public Lcom/waze/navbar/NavBar;
.super Ljava/lang/Object;
.source "NavBar.java"


# static fields
.field public static final instImagesLeft:[I

.field public static final instImagesRight:[I


# instance fields
.field private IsInAlertMode:Z

.field private IsNextInstruction:Z

.field private NextInstruction:I

.field private Nextdisplayed:Z

.field bottomBar:Lcom/waze/view/navbar/BottomBar;

.field boxView:Landroid/view/View;

.field destinationData:Lcom/waze/main/navigate/LocationData;

.field directionText:Landroid/widget/TextView;

.field distance:Landroid/widget/TextView;

.field distanceUnit:Landroid/widget/TextView;

.field private dtnm:Lcom/waze/navigate/DriveToNativeManager;

.field private instImages:[I

.field private mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

.field private mDestAddressItem:Lcom/waze/navigate/AddressItem;

.field private mFoundVenue:Lcom/waze/reports/VenueData;

.field protected final mHandler:Landroid/os/Handler;

.field private mPhotoGallery:Lcom/waze/reports/PlacePhotoGallery;

.field private mReceivedSearchResult:Z

.field private mSaveNav:Z

.field private mVenueID:Ljava/lang/String;

.field private mainView:Landroid/view/View;

.field private nativeManager:Lcom/waze/NativeManager;

.field private nearingDisplayed:Z

.field nextView:Landroid/view/View;

.field private nightMode:Z

.field private scale:F

.field private shouldRestoreNearing:Z

.field private shown:Z

.field streetText:Lcom/waze/view/navbar/NavBarText;

.field thenDirection:Landroid/widget/TextView;

.field thenText:Landroid/widget/TextView;

.field topView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x7f020050

    const v3, 0x7f02004f

    .line 1045
    const/16 v0, 0x1b

    new-array v0, v0, [I

    .line 1047
    const v1, 0x7f020052

    aput v1, v0, v5

    .line 1048
    const v1, 0x7f020053

    aput v1, v0, v6

    .line 1049
    aput v3, v0, v7

    const/4 v1, 0x4

    .line 1050
    aput v4, v0, v1

    const/4 v1, 0x5

    .line 1051
    const v2, 0x7f020051

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 1052
    const v2, 0x7f020055

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 1053
    const v2, 0x7f020055

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 1054
    const v2, 0x7f020056

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 1055
    const v2, 0x7f020056

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 1056
    const v2, 0x7f020059

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 1057
    const v2, 0x7f020059

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 1058
    const v2, 0x7f020057

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 1059
    const v2, 0x7f020057

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 1060
    const v2, 0x7f02005a

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 1061
    const v2, 0x7f02005a

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 1062
    const v2, 0x7f02004e

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 1063
    aput v3, v0, v1

    const/16 v1, 0x12

    .line 1064
    aput v4, v0, v1

    const/16 v1, 0x14

    .line 1066
    const v2, 0x7f020060

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 1068
    const v2, 0x7f020054

    aput v2, v0, v1

    .line 1045
    sput-object v0, Lcom/waze/navbar/NavBar;->instImagesRight:[I

    .line 1071
    const/16 v0, 0x1b

    new-array v0, v0, [I

    .line 1073
    const v1, 0x7f020052

    aput v1, v0, v5

    .line 1074
    const v1, 0x7f020053

    aput v1, v0, v6

    .line 1075
    aput v3, v0, v7

    const/4 v1, 0x4

    .line 1076
    aput v4, v0, v1

    const/4 v1, 0x5

    .line 1077
    const v2, 0x7f020051

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 1078
    const v2, 0x7f02005c

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 1079
    const v2, 0x7f02005c

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 1080
    const v2, 0x7f02005d

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 1081
    const v2, 0x7f02005d

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 1082
    const v2, 0x7f02005f

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 1083
    const v2, 0x7f02005f

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 1084
    const v2, 0x7f020058

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 1085
    const v2, 0x7f020058

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 1086
    const v2, 0x7f02005b

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 1087
    const v2, 0x7f02005b

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 1088
    const v2, 0x7f02004e

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 1089
    aput v3, v0, v1

    const/16 v1, 0x12

    .line 1090
    aput v4, v0, v1

    const/16 v1, 0x14

    .line 1092
    const v2, 0x7f020061

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 1094
    const v2, 0x7f020054

    aput v2, v0, v1

    .line 1071
    sput-object v0, Lcom/waze/navbar/NavBar;->instImagesLeft:[I

    .line 1095
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/waze/view/navbar/BottomBar;)V
    .locals 13
    .parameter "view"
    .parameter "bottomBar"

    .prologue
    const v12, 0x7f09016c

    const v8, 0x7f090168

    const/4 v7, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v10, p0, Lcom/waze/navbar/NavBar;->IsInAlertMode:Z

    .line 88
    iput-boolean v10, p0, Lcom/waze/navbar/NavBar;->IsNextInstruction:Z

    .line 89
    iput-boolean v10, p0, Lcom/waze/navbar/NavBar;->Nextdisplayed:Z

    .line 92
    iput-boolean v10, p0, Lcom/waze/navbar/NavBar;->shouldRestoreNearing:Z

    .line 96
    iput-object v7, p0, Lcom/waze/navbar/NavBar;->mVenueID:Ljava/lang/String;

    .line 97
    iput-boolean v10, p0, Lcom/waze/navbar/NavBar;->mSaveNav:Z

    .line 99
    iput-boolean v10, p0, Lcom/waze/navbar/NavBar;->mReceivedSearchResult:Z

    .line 100
    iput-object v7, p0, Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;

    .line 101
    iput-object v7, p0, Lcom/waze/navbar/NavBar;->mPhotoGallery:Lcom/waze/reports/PlacePhotoGallery;

    .line 103
    new-instance v7, Lcom/waze/navbar/NavBar$1;

    invoke-direct {v7, p0}, Lcom/waze/navbar/NavBar$1;-><init>(Lcom/waze/navbar/NavBar;)V

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->mHandler:Landroid/os/Handler;

    .line 162
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v7

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iput v7, p0, Lcom/waze/navbar/NavBar;->scale:F

    .line 164
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v7

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    .line 166
    iput-object p1, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    .line 167
    iput-object p2, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    .line 168
    new-instance v7, Lcom/waze/navbar/NavBar$2;

    invoke-direct {v7, p0}, Lcom/waze/navbar/NavBar$2;-><init>(Lcom/waze/navbar/NavBar;)V

    invoke-virtual {p2, v7}, Lcom/waze/view/navbar/BottomBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    sget-object v7, Lcom/waze/navbar/NavBar;->instImagesRight:[I

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->instImages:[I

    .line 186
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    .line 187
    const v7, 0x7f090172

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/waze/view/navbar/NavBarText;

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    .line 188
    const v7, 0x7f090166

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->thenText:Landroid/widget/TextView;

    .line 189
    const v7, 0x7f09016a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->directionText:Landroid/widget/TextView;

    .line 190
    const v7, 0x7f090167

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->thenDirection:Landroid/widget/TextView;

    .line 191
    const v7, 0x7f090165

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->nextView:Landroid/view/View;

    .line 192
    const v7, 0x7f090169

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->boxView:Landroid/view/View;

    .line 194
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/waze/navbar/NavBar$3;

    invoke-direct {v8, p0}, Lcom/waze/navbar/NavBar$3;-><init>(Lcom/waze/navbar/NavBar;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v5, Lcom/waze/navbar/NavBar$4;

    invoke-direct {v5, p0}, Lcom/waze/navbar/NavBar$4;-><init>(Lcom/waze/navbar/NavBar;)V

    .line 303
    .local v5, onClickLaunchAddPlace:Landroid/view/View$OnClickListener;
    const v7, 0x7f090463

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const v7, 0x7f090456

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    const v7, 0x7f090465

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 307
    new-instance v8, Lcom/waze/navbar/NavBar$5;

    invoke-direct {v8, p0}, Lcom/waze/navbar/NavBar$5;-><init>(Lcom/waze/navbar/NavBar;)V

    .line 306
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v7, 0x7f090459

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 321
    .local v3, imageLayout:Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 322
    const v7, 0x7f09045d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 323
    .local v4, noImageLayout:Landroid/view/View;
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 324
    const v7, 0x7f090457

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 327
    const v7, 0x7f090460

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 328
    .local v1, almost:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_ALMOST_THERE___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const v7, 0x7f09045f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 330
    .local v0, add:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_BE_THE_FIRST_TO_ADD_A_PHOTOE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    const v7, 0x7f090461

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 332
    .local v2, dest:Landroid/widget/TextView;
    const-string v7, " "

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v7, p0, Lcom/waze/navbar/NavBar;->thenText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    .line 337
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_AND_THEN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 336
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v7, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    invoke-virtual {v7, p0}, Lcom/waze/view/navbar/NavBarText;->setNavBar(Lcom/waze/navbar/NavBar;)V

    .line 339
    iget-object v7, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    invoke-virtual {v7, v8}, Lcom/waze/view/navbar/NavBarText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v7, p0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v7}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v6

    .line 342
    .local v6, rtlMode:Z
    if-eqz v6, :cond_0

    .line 343
    iget-object v7, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/waze/view/navbar/NavBarText;->setGravity(I)V

    .line 347
    :goto_0
    invoke-virtual {p2, v6}, Lcom/waze/view/navbar/BottomBar;->initLang(Z)V

    .line 349
    if-eqz v6, :cond_1

    .line 350
    const v7, 0x7f09016f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 352
    const v7, 0x7f090170

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->distance:Landroid/widget/TextView;

    .line 353
    const v7, 0x7f090171

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->distanceUnit:Landroid/widget/TextView;

    .line 361
    :goto_1
    iput-boolean v10, p0, Lcom/waze/navbar/NavBar;->shown:Z

    .line 362
    return-void

    .line 345
    :cond_0
    iget-object v7, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/waze/view/navbar/NavBarText;->setGravity(I)V

    goto :goto_0

    .line 355
    :cond_1
    const v7, 0x7f09016f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 356
    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 357
    const v7, 0x7f09016d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->distance:Landroid/widget/TextView;

    .line 358
    const v7, 0x7f09016e

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/waze/navbar/NavBar;->distanceUnit:Landroid/widget/TextView;

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/PlacePhotoGallery;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mPhotoGallery:Lcom/waze/reports/PlacePhotoGallery;

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/navbar/NavBar;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/navbar/NavBar;Lcom/waze/reports/VenueData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1238
    invoke-direct {p0, p1}, Lcom/waze/navbar/NavBar;->updateVenueImages(Lcom/waze/reports/VenueData;)V

    return-void
.end method

.method static synthetic access$12(Lcom/waze/navbar/NavBar;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    return v0
.end method

.method static synthetic access$13(Lcom/waze/navbar/NavBar;Lcom/waze/main/navigate/LocationData;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1149
    invoke-direct {p0, p1, p2}, Lcom/waze/navbar/NavBar;->openNearingDest(Lcom/waze/main/navigate/LocationData;I)V

    return-void
.end method

.method static synthetic access$14(Lcom/waze/navbar/NavBar;)V
    .locals 0
    .parameter

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/waze/navbar/NavBar;->animateNearingDestinationIn()V

    return-void
.end method

.method static synthetic access$15(Lcom/waze/navbar/NavBar;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mVenueID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/waze/navbar/NavBar;Lcom/waze/reports/PlacePhotoGallery;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/waze/navbar/NavBar;->mPhotoGallery:Lcom/waze/reports/PlacePhotoGallery;

    return-void
.end method

.method static synthetic access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$18(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    return-object v0
.end method

.method static synthetic access$19(Lcom/waze/navbar/NavBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1308
    invoke-direct {p0, p1}, Lcom/waze/navbar/NavBar;->setNearingFriendsNumber(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/navbar/NavBar;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;

    return-void
.end method

.method static synthetic access$20(Lcom/waze/navbar/NavBar;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/waze/navbar/NavBar;->Nextdisplayed:Z

    return-void
.end method

.method static synthetic access$21(Lcom/waze/navbar/NavBar;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/waze/navbar/NavBar;->shouldRestoreNearing:Z

    return-void
.end method

.method static synthetic access$22(Lcom/waze/navbar/NavBar;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/waze/navbar/NavBar;->Nextdisplayed:Z

    return v0
.end method

.method static synthetic access$23(Lcom/waze/navbar/NavBar;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/waze/navbar/NavBar;->shown:Z

    return v0
.end method

.method static synthetic access$24(Lcom/waze/navbar/NavBar;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    return-void
.end method

.method static synthetic access$25(Lcom/waze/navbar/NavBar;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/waze/navbar/NavBar;->mReceivedSearchResult:Z

    return v0
.end method

.method static synthetic access$26(Lcom/waze/navbar/NavBar;)F
    .locals 1
    .parameter

    .prologue
    .line 94
    iget v0, p0, Lcom/waze/navbar/NavBar;->scale:F

    return v0
.end method

.method static synthetic access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/navbar/NavBar;Lcom/waze/reports/VenueData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;

    return-void
.end method

.method static synthetic access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/navbar/NavBar;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/waze/navbar/NavBar;->mReceivedSearchResult:Z

    return-void
.end method

.method static synthetic access$7(Lcom/waze/navbar/NavBar;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/waze/navbar/NavBar;->mVenueID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/waze/navbar/NavBar;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/waze/navbar/NavBar;->mSaveNav:Z

    return v0
.end method

.method static synthetic access$9(Lcom/waze/navbar/NavBar;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/waze/navbar/NavBar;->mSaveNav:Z

    return-void
.end method

.method private animateNearingDestinationIn()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 807
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v5, 0x7f090163

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 809
    .local v0, navBar:Landroid/view/View;
    iget-boolean v2, p0, Lcom/waze/navbar/NavBar;->IsInAlertMode:Z

    if-eqz v2, :cond_3

    .line 810
    iget-boolean v2, p0, Lcom/waze/navbar/NavBar;->Nextdisplayed:Z

    if-eqz v2, :cond_0

    .line 811
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v5, 0x7f090165

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 813
    :cond_0
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v5, 0x7f090452

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 814
    .local v1, nearingView:Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 815
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v5, 0x7f090453

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 816
    iget-boolean v2, p0, Lcom/waze/navbar/NavBar;->shown:Z

    if-eqz v2, :cond_1

    move v2, v3

    .line 815
    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 817
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v5, 0x7f090454

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 818
    iget-boolean v5, p0, Lcom/waze/navbar/NavBar;->shown:Z

    if-eqz v5, :cond_2

    .line 817
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 853
    .end local v1           #nearingView:Landroid/view/View;
    :goto_2
    return-void

    .restart local v1       #nearingView:Landroid/view/View;
    :cond_1
    move v2, v4

    .line 816
    goto :goto_0

    :cond_2
    move v3, v4

    .line 818
    goto :goto_1

    .line 822
    .end local v1           #nearingView:Landroid/view/View;
    :cond_3
    new-instance v2, Lcom/waze/navbar/NavBar$10;

    invoke-direct {v2, p0, v0}, Lcom/waze/navbar/NavBar$10;-><init>(Lcom/waze/navbar/NavBar;Landroid/view/View;)V

    invoke-static {v0, v2}, Lcom/waze/view/anim/AnimationUtils;->openAnimateAlert(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2
.end method

.method private animateNearingDestinationOut()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 858
    new-instance v1, Lcom/waze/navbar/NavBar$11;

    invoke-direct {v1, p0}, Lcom/waze/navbar/NavBar$11;-><init>(Lcom/waze/navbar/NavBar;)V

    .line 857
    invoke-static {v0, v1}, Lcom/waze/view/anim/AnimationUtils;->openAnimateAlert(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 903
    return-void
.end method

.method private openNearingDest(Lcom/waze/main/navigate/LocationData;I)V
    .locals 18
    .parameter "locationData"
    .parameter "numImages"

    .prologue
    .line 1150
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navbar/NavBar;->adjustImages()V

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v3, 0x7f090452

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 1154
    .local v14, naringView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/waze/navbar/NavBar;->nightMode:Z

    if-eqz v2, :cond_2

    const-string v2, "#446270"

    :goto_0
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1155
    const v2, 0x7f090460

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1156
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/waze/navbar/NavBar;->nightMode:Z

    if-eqz v3, :cond_3

    const-string v3, "#add9ea"

    :goto_1
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 1155
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1157
    const v2, 0x7f090461

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1158
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/waze/navbar/NavBar;->nightMode:Z

    if-eqz v3, :cond_4

    const-string v3, "#ffffff"

    :goto_2
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 1157
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1165
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    .line 1169
    :cond_0
    const-string v3, "PLACES_NEAR_DESTINATION_SHOWN"

    .line 1170
    const-string v4, "NUM_IMAGES|COLLAPSED|VENUE_ID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    iget-boolean v2, v2, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-eqz v2, :cond_5

    const-string v2, "TRUE"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/waze/navbar/NavBar;->mVenueID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1169
    invoke-static {v3, v4, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    new-instance v2, Lcom/waze/navbar/NavBar$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navbar/NavBar$15;-><init>(Lcom/waze/navbar/NavBar;)V

    invoke-virtual {v14, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v3, 0x7f090465

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1196
    .local v12, minimizeButton:Landroid/view/View;
    new-instance v1, Landroid/view/animation/RotateAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    iget-boolean v2, v2, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-eqz v2, :cond_6

    const/16 v2, 0xb4

    :goto_4
    int-to-float v2, v2

    .line 1197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    iget-boolean v3, v3, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-eqz v3, :cond_7

    const/16 v3, 0xb4

    :goto_5
    int-to-float v3, v3

    .line 1198
    const/4 v4, 0x1

    const/high16 v5, 0x3f00

    .line 1199
    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    .line 1196
    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1200
    .local v1, minimizeButtonAnimation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1201
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1202
    invoke-virtual {v12, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v3, 0x7f090460

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    iget-boolean v2, v2, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    .line 1203
    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v3, 0x7f090456

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    iget-boolean v2, v2, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-eqz v2, :cond_9

    const/16 v2, 0x8

    .line 1205
    :goto_7
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v3, 0x7f090461

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1209
    .local v13, nameText:Landroid/widget/TextView;
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    iget-boolean v2, v2, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-eqz v2, :cond_a

    const/16 v2, 0xe

    :goto_8
    int-to-float v2, v2

    invoke-virtual {v13, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    iget-boolean v2, v2, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1211
    const-string v10, " "

    .line 1212
    .local v10, destText:Ljava/lang/String;
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/waze/main/navigate/LocationData;->destinationName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1213
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/waze/main/navigate/LocationData;->destinationName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/waze/main/navigate/LocationData;->destinationName:Ljava/lang/String;

    .line 1214
    :cond_1
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1217
    .local v15, params:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    iget-boolean v2, v2, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-eqz v2, :cond_c

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v3, 0x7f090462

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 1219
    .local v9, buttonsWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 1220
    .local v11, frameWidth:I
    sub-int v2, v11, v9

    const/high16 v3, 0x41a0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1221
    const/high16 v2, 0x41a0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v9

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1226
    .end local v9           #buttonsWidth:I
    .end local v11           #frameWidth:I
    :goto_a
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v3, 0x7f090454

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1229
    .local v17, shadow:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v3, 0x7f090456

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1230
    .local v16, photoFrame:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v3, 0x7f090460

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1231
    .local v8, almostText:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->clearAnimation()V

    .line 1232
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->clearAnimation()V

    .line 1233
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->clearAnimation()V

    .line 1234
    invoke-virtual {v13}, Landroid/widget/TextView;->clearAnimation()V

    .line 1235
    invoke-virtual {v8}, Landroid/view/View;->clearAnimation()V

    .line 1236
    return-void

    .line 1154
    .end local v1           #minimizeButtonAnimation:Landroid/view/animation/Animation;
    .end local v8           #almostText:Landroid/view/View;
    .end local v10           #destText:Ljava/lang/String;
    .end local v12           #minimizeButton:Landroid/view/View;
    .end local v13           #nameText:Landroid/widget/TextView;
    .end local v15           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v16           #photoFrame:Landroid/view/View;
    .end local v17           #shadow:Landroid/view/View;
    :cond_2
    const-string v2, "#2e2e2e"

    goto/16 :goto_0

    .line 1156
    :cond_3
    const-string v3, "#ffffff"

    goto/16 :goto_1

    .line 1158
    :cond_4
    const-string v3, "#93c4d3"

    goto/16 :goto_2

    .line 1170
    :cond_5
    const-string v2, "FALSE"

    goto/16 :goto_3

    .line 1196
    .restart local v12       #minimizeButton:Landroid/view/View;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1197
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 1204
    .restart local v1       #minimizeButtonAnimation:Landroid/view/animation/Animation;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1206
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1209
    .restart local v13       #nameText:Landroid/widget/TextView;
    :cond_a
    const/16 v2, 0x12

    goto/16 :goto_8

    .line 1210
    :cond_b
    const/4 v2, 0x3

    goto/16 :goto_9

    .line 1223
    .restart local v10       #destText:Ljava/lang/String;
    .restart local v15       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    const/4 v2, -0x2

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1224
    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    iget v3, v0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_a
.end method

.method private setNearingFriendsNumber(I)V
    .locals 3
    .parameter "nFriends"

    .prologue
    .line 1309
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v2, 0x7f09046b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1310
    .local v0, friendsNumView:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 1311
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    :goto_0
    return-void

    .line 1314
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBackground(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "idRes"

    .prologue
    .line 776
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 777
    .local v1, l:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 778
    .local v2, r:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 779
    .local v3, t:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 780
    .local v0, b:I
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 781
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 782
    return-void
.end method

.method private updateMuteImage()V
    .locals 4

    .prologue
    .line 1287
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v3, 0x7f090467

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1288
    .local v0, menuMuteImage:Landroid/widget/ImageButton;
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->isNavigatingVoiceNTV()I

    move-result v1

    .line 1289
    .local v1, nType:I
    if-nez v1, :cond_0

    .line 1290
    const v2, 0x7f0203c0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1298
    :goto_0
    return-void

    .line 1291
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1292
    const v2, 0x7f0203bf

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1296
    :cond_1
    const v2, 0x7f02002d

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateVenueImages(Lcom/waze/reports/VenueData;)V
    .locals 13
    .parameter "venueData"

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f09045d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1240
    .local v12, noImageLayout:Landroid/view/View;
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/waze/reports/VenueData;->numImages:I

    if-nez v0, :cond_1

    .line 1241
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090459

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090457

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    :goto_0
    return-void

    .line 1245
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090459

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1247
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f09045a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1248
    .local v3, image:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f09045b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1249
    .local v11, mood:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f09045c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1251
    .local v9, by:Landroid/widget/TextView;
    iget-object v0, p1, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1252
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1259
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1260
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v1, p1, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1261
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    const/4 v8, 0x3

    .line 1260
    invoke-virtual/range {v0 .. v8}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;JI)V

    .line 1262
    iget-object v0, p1, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090457

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1265
    iget v0, p1, Lcom/waze/reports/VenueData;->numImages:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    const/4 v0, 0x0

    .line 1264
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1255
    :cond_3
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1256
    .local v10, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1265
    .end local v10           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method


# virtual methods
.method public AlertAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .parameter "bAlert"
    .parameter "nm"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 786
    new-instance v1, Lcom/waze/navbar/NavBar$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/waze/navbar/NavBar$9;-><init>(Lcom/waze/navbar/NavBar;ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 785
    invoke-static {v0, v1}, Lcom/waze/view/anim/AnimationUtils;->openAnimateAlert(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 804
    return-void
.end method

.method public ChangeToAlertMode(Z)V
    .locals 24
    .parameter "bIsAlertMode"

    .prologue
    .line 907
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/navbar/NavBar;->shouldRestoreNearing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 908
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/navbar/NavBar;->shouldRestoreNearing:Z

    .line 909
    const/4 v14, 0x0

    .line 910
    .local v14, numImages:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v14, v0, Lcom/waze/reports/VenueData;->numImages:I

    .line 913
    :cond_0
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/navbar/NavBar;->IsInAlertMode:Z

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->destinationData:Lcom/waze/main/navigate/LocationData;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14}, Lcom/waze/navbar/NavBar;->openNearingDest(Lcom/waze/main/navigate/LocationData;I)V

    .line 1043
    .end local v14           #numImages:I
    :goto_0
    return-void

    .line 918
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v15

    .line 920
    .local v15, rtlMode:Z
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 922
    .local v7, dm:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "window"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 923
    .local v18, wm:Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f090172

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/waze/view/navbar/NavBarText;

    .line 927
    .local v13, navBarLine:Lcom/waze/view/navbar/NavBarText;
    if-eqz p1, :cond_5

    .line 928
    const/16 v8, 0x37

    .line 929
    .local v8, dpValue:I
    int-to-float v0, v8

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/navbar/NavBar;->scale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    .line 930
    .local v12, nHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/navbar/NavBar;->scale:F

    move/from16 v19, v0

    const/high16 v20, 0x3f80

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 932
    .local v16, topMargin:I
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/navbar/NavBar;->IsInAlertMode:Z

    .line 934
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/waze/view/navbar/NavBarText;->setMaxLines(I)V

    .line 936
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    .line 937
    const/16 v20, -0x1

    .line 936
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 938
    .local v6, NavLine:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 940
    invoke-virtual {v13, v6}, Lcom/waze/view/navbar/NavBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f090164

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f090165

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016b

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 945
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 947
    if-eqz v15, :cond_3

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 949
    .local v17, width:I
    if-nez v17, :cond_2

    .line 950
    const/high16 v19, 0x428c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/navbar/NavBar;->scale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 953
    :cond_2
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 954
    const/16 v19, -0x1

    .line 953
    move/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 955
    .local v5, DistanceBar:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x3

    const/16 v20, 0x3

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 957
    const/16 v19, 0x15

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/waze/view/navbar/NavBarText;->setGravity(I)V

    .line 970
    :goto_1
    const/high16 v19, 0x4234

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/navbar/NavBar;->scale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v4, v0

    .line 972
    .local v4, Directionsize:I
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 973
    .local v10, lp2:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016a

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016a

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/view/View;->setPadding(IIII)V

    .line 979
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-direct {v9, v0, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 981
    .local v9, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f090450

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/LinearLayout;

    const/16 v20, 0x10

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f020024

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 959
    .end local v4           #Directionsize:I
    .end local v5           #DistanceBar:Landroid/widget/LinearLayout$LayoutParams;
    .end local v9           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v10           #lp2:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17           #width:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016c

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 960
    .restart local v17       #width:I
    if-nez v17, :cond_4

    .line 961
    const/high16 v19, 0x428c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/navbar/NavBar;->scale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 964
    :cond_4
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 965
    const/16 v19, -0x1

    .line 964
    move/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 966
    .restart local v5       #DistanceBar:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x3

    const/16 v20, 0x3

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016c

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    const/16 v19, 0x13

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/waze/view/navbar/NavBarText;->setGravity(I)V

    goto/16 :goto_1

    .line 989
    .end local v5           #DistanceBar:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #NavLine:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #dpValue:I
    .end local v12           #nHeight:I
    .end local v16           #topMargin:I
    .end local v17           #width:I
    :cond_5
    const/16 v8, 0x50

    .line 990
    .restart local v8       #dpValue:I
    int-to-float v0, v8

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/navbar/NavBar;->scale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    .line 992
    .restart local v12       #nHeight:I
    const/high16 v19, 0x428c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/navbar/NavBar;->scale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v4, v0

    .line 995
    .restart local v4       #Directionsize:I
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 996
    .restart local v10       #lp2:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016a

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016a

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/view/View;->setPadding(IIII)V

    .line 1000
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/navbar/NavBar;->IsInAlertMode:Z

    .line 1001
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f090452

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/navbar/NavBar;->Nextdisplayed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f090165

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    :cond_7
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    .line 1011
    const/16 v20, -0x2

    .line 1010
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1012
    .restart local v6       #NavLine:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v6}, Lcom/waze/view/navbar/NavBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1013
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/waze/view/navbar/NavBarText;->setMaxLines(I)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016b

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1016
    if-eqz v15, :cond_8

    .line 1018
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v19, 0x42b4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/navbar/NavBar;->scale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1019
    const/16 v20, -0x2

    .line 1018
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1020
    .restart local v5       #DistanceBar:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x3

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1021
    const/16 v19, 0x5

    move/from16 v0, v19

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/waze/view/navbar/NavBarText;->setGravity(I)V

    .line 1033
    :goto_2
    const/high16 v19, 0x40a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/navbar/NavBar;->scale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v11, v0

    .line 1034
    .local v11, margins:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f090450

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-direct {v9, v0, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1038
    .restart local v9       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v11, v11, v11, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f02026e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x3

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1026
    .end local v5           #DistanceBar:Landroid/widget/LinearLayout$LayoutParams;
    .end local v9           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #margins:I
    :cond_8
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v19, 0x42b4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/navbar/NavBar;->scale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1027
    const/16 v20, -0x2

    .line 1026
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1028
    .restart local v5       #DistanceBar:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x3

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1029
    const/16 v19, 0x3

    move/from16 v0, v19

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09016c

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/waze/view/navbar/NavBarText;->setGravity(I)V

    goto/16 :goto_2
.end method

.method public adjustImages()V
    .locals 15

    .prologue
    .line 621
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    iget-boolean v11, p0, Lcom/waze/navbar/NavBar;->nightMode:Z

    invoke-virtual {v10, v11}, Lcom/waze/view/navbar/BottomBar;->setMode(Z)V

    .line 623
    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->shown:Z

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-nez v10, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const/4 v4, 0x0

    .line 628
    .local v4, isLandscape:Z
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 629
    const/4 v4, 0x1

    .line 632
    :cond_2
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v11, 0x7f090452

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 633
    .local v9, photoView:Landroid/view/View;
    if-eqz v4, :cond_7

    .line 635
    const v10, 0x7f090458

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 636
    .local v3, frame:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 637
    .local v8, p1:Landroid/widget/FrameLayout$LayoutParams;
    iget v10, p0, Lcom/waze/navbar/NavBar;->scale:F

    const/high16 v11, 0x4244

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 638
    iget v10, p0, Lcom/waze/navbar/NavBar;->scale:F

    const/high16 v11, 0x4280

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 639
    const/high16 v10, 0x4120

    iget v11, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4080

    iget v12, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/high16 v12, 0x4000

    iget v13, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    const/high16 v13, 0x4080

    iget v14, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 640
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    const v10, 0x7f090457

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 643
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .end local v8           #p1:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 644
    .restart local v8       #p1:Landroid/widget/FrameLayout$LayoutParams;
    iget v10, p0, Lcom/waze/navbar/NavBar;->scale:F

    const/high16 v11, 0x4244

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 645
    iget v10, p0, Lcom/waze/navbar/NavBar;->scale:F

    const/high16 v11, 0x4280

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 646
    const/high16 v10, 0x4110

    iget v11, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x40a0

    iget v12, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/high16 v12, 0x4040

    iget v13, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    const/high16 v13, 0x4040

    iget v14, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 647
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    const v10, 0x7f09045e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :goto_1
    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->shown:Z

    if-eqz v10, :cond_0

    .line 674
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    invoke-virtual {v10}, Lcom/waze/view/navbar/NavBarText;->getLineCount()I

    move-result v2

    .line 675
    .local v2, count:I
    const/4 v10, 0x1

    if-le v2, v10, :cond_8

    const/4 v5, 0x1

    .line 686
    .local v5, longText:Z
    :goto_2
    const/4 v0, 0x0

    .line 688
    .local v0, bIsPopupsShown:Z
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 690
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/waze/LayoutManager;->IsPopupsShown()Z

    move-result v0

    .line 692
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-eqz v10, :cond_d

    .line 694
    :cond_4
    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->nightMode:Z

    if-eqz v10, :cond_9

    .line 696
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    const v11, 0x7f020025

    invoke-direct {p0, v10, v11}, Lcom/waze/navbar/NavBar;->updateBackground(Landroid/view/View;I)V

    .line 702
    :goto_3
    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-eqz v10, :cond_5

    .line 703
    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->nightMode:Z

    if-eqz v10, :cond_a

    const-string v10, "#57717d"

    :goto_4
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 704
    const v10, 0x7f090460

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 705
    iget-boolean v11, p0, Lcom/waze/navbar/NavBar;->nightMode:Z

    if-eqz v11, :cond_b

    const-string v11, "#add9ea"

    :goto_5
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 706
    const v10, 0x7f090461

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 707
    iget-boolean v11, p0, Lcom/waze/navbar/NavBar;->nightMode:Z

    if-eqz v11, :cond_c

    const-string v11, "#ffffff"

    :goto_6
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 706
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 729
    :cond_5
    :goto_7
    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->nightMode:Z

    if-eqz v10, :cond_11

    .line 731
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->nextView:Landroid/view/View;

    const v11, 0x7f020274

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 737
    :goto_8
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->nextView:Landroid/view/View;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 739
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v11, 0x7f090164

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 741
    .local v7, nearingView:Landroid/view/View;
    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->nightMode:Z

    if-eqz v10, :cond_12

    .line 743
    const v10, 0x7f020274

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 749
    :goto_9
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 755
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080041

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 756
    .local v1, color:I
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->distance:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 757
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->distanceUnit:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 758
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->thenText:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 760
    if-nez v0, :cond_6

    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->IsInAlertMode:Z

    if-eqz v10, :cond_13

    .line 762
    :cond_6
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/waze/view/navbar/NavBarText;->setMaxLines(I)V

    goto/16 :goto_0

    .line 652
    .end local v0           #bIsPopupsShown:Z
    .end local v1           #color:I
    .end local v2           #count:I
    .end local v3           #frame:Landroid/view/View;
    .end local v5           #longText:Z
    .end local v7           #nearingView:Landroid/view/View;
    .end local v8           #p1:Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const v10, 0x7f090458

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 653
    .restart local v3       #frame:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 654
    .restart local v8       #p1:Landroid/widget/FrameLayout$LayoutParams;
    iget v10, p0, Lcom/waze/navbar/NavBar;->scale:F

    const/high16 v11, 0x4300

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 655
    iget v10, p0, Lcom/waze/navbar/NavBar;->scale:F

    const/high16 v11, 0x4328

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 656
    const/high16 v10, 0x4120

    iget v11, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4100

    iget v12, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/high16 v12, 0x4000

    iget v13, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    const/high16 v13, 0x4100

    iget v14, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 657
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    const v10, 0x7f090457

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 660
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .end local v8           #p1:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 661
    .restart local v8       #p1:Landroid/widget/FrameLayout$LayoutParams;
    iget v10, p0, Lcom/waze/navbar/NavBar;->scale:F

    const/high16 v11, 0x4300

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 662
    iget v10, p0, Lcom/waze/navbar/NavBar;->scale:F

    const/high16 v11, 0x4328

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 663
    const/high16 v10, 0x4100

    iget v11, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x4120

    iget v12, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/high16 v12, 0x4080

    iget v13, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    const/high16 v13, 0x40c0

    iget v14, p0, Lcom/waze/navbar/NavBar;->scale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 664
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    const v10, 0x7f09045e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 675
    .restart local v2       #count:I
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 700
    .restart local v0       #bIsPopupsShown:Z
    .restart local v5       #longText:Z
    :cond_9
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    const v11, 0x7f020024

    invoke-direct {p0, v10, v11}, Lcom/waze/navbar/NavBar;->updateBackground(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 703
    :cond_a
    const-string v10, "#262626"

    goto/16 :goto_4

    .line 705
    :cond_b
    const-string v11, "#ffffff"

    goto/16 :goto_5

    .line 707
    :cond_c
    const-string v11, "#93c4d3"

    goto/16 :goto_6

    .line 710
    :cond_d
    if-eqz v4, :cond_f

    .line 711
    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->nightMode:Z

    if-eqz v10, :cond_e

    .line 713
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    const v11, 0x7f020270

    invoke-direct {p0, v10, v11}, Lcom/waze/navbar/NavBar;->updateBackground(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 717
    :cond_e
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    const v11, 0x7f02026f

    invoke-direct {p0, v10, v11}, Lcom/waze/navbar/NavBar;->updateBackground(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 720
    :cond_f
    iget-boolean v10, p0, Lcom/waze/navbar/NavBar;->nightMode:Z

    if-eqz v10, :cond_10

    .line 722
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    const v11, 0x7f020272

    invoke-direct {p0, v10, v11}, Lcom/waze/navbar/NavBar;->updateBackground(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 726
    :cond_10
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    const v11, 0x7f02026e

    invoke-direct {p0, v10, v11}, Lcom/waze/navbar/NavBar;->updateBackground(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 735
    :cond_11
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->nextView:Landroid/view/View;

    const v11, 0x7f020273

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 747
    .restart local v7       #nearingView:Landroid/view/View;
    :cond_12
    const v10, 0x7f020273

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_9

    .line 764
    .restart local v1       #color:I
    :cond_13
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    invoke-virtual {v10}, Lcom/waze/view/navbar/NavBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 765
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_14

    .line 766
    iget v10, p0, Lcom/waze/navbar/NavBar;->scale:F

    const/high16 v11, 0x4200

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 770
    :goto_a
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    invoke-virtual {v10, v6}, Lcom/waze/view/navbar/NavBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    iget-object v10, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/waze/view/navbar/NavBarText;->setMaxLines(I)V

    goto/16 :goto_0

    .line 768
    :cond_14
    iget v11, p0, Lcom/waze/navbar/NavBar;->scale:F

    if-eqz v5, :cond_15

    const/16 v10, 0x3c

    :goto_b
    int-to-float v10, v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_a

    :cond_15
    const/16 v10, 0x30

    goto :goto_b
.end method

.method public bottomBar()Lcom/waze/view/navbar/BottomBar;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    return-object v0
.end method

.method public canMinimizeNearing()Z
    .locals 1

    .prologue
    .line 1527
    iget-boolean v0, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    iget-boolean v0, v0, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->directionText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 371
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->directionText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->nextView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->thenDirection:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->distance:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->distanceUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/waze/view/navbar/NavBarText;->setText(Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method

.method public getNavBarHeight()I
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 454
    iget-boolean v0, p0, Lcom/waze/navbar/NavBar;->shown:Z

    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iput-boolean v2, p0, Lcom/waze/navbar/NavBar;->shown:Z

    .line 456
    iput-boolean v2, p0, Lcom/waze/navbar/NavBar;->Nextdisplayed:Z

    .line 457
    iput-boolean v2, p0, Lcom/waze/navbar/NavBar;->shouldRestoreNearing:Z

    .line 459
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/view/navbar/BottomBar;->hide(Z)V

    .line 460
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090453

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090454

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-boolean v0, p0, Lcom/waze/navbar/NavBar;->IsInAlertMode:Z

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0, v2}, Lcom/waze/navbar/NavBar;->ChangeToAlertMode(Z)V

    goto :goto_0
.end method

.method public hideNearingDestination(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1270
    iput-boolean v4, p0, Lcom/waze/navbar/NavBar;->shouldRestoreNearing:Z

    .line 1271
    iget-boolean v0, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-nez v0, :cond_0

    .line 1284
    :goto_0
    return-void

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    .line 1275
    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navbar/NavBar;->mHandler:Landroid/os/Handler;

    .line 1274
    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 1276
    iput-boolean v4, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    .line 1277
    if-eqz p1, :cond_1

    .line 1278
    invoke-direct {p0}, Lcom/waze/navbar/NavBar;->animateNearingDestinationOut()V

    goto :goto_0

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090452

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090454

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v1, 0x7f090453

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 1531
    iget-boolean v0, p0, Lcom/waze/navbar/NavBar;->shown:Z

    return v0
.end method

.method public minimizeNearingPanel()V
    .locals 23

    .prologue
    .line 1319
    const/16 v14, 0x12c

    .line 1320
    .local v14, durationMillis:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v4, 0x7f090462

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 1321
    .local v11, buttonsWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navbar/NavBar;->topView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 1323
    .local v10, frameWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v4, 0x7f090460

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1324
    .local v12, almostText:Landroid/view/View;
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-direct {v13, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1325
    .local v13, almostTextAnim:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x96

    invoke-virtual {v13, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1326
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1327
    invoke-virtual {v12, v13}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v4, 0x7f090461

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1330
    .local v9, nameText:Landroid/view/View;
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1331
    .local v16, nameTextAnim:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x96

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1332
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1333
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v4, 0x7f090465

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1337
    .local v15, minimizeButton:Landroid/view/View;
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x4334

    const/4 v4, 0x1

    const/high16 v5, 0x3f00

    const/4 v6, 0x1

    .line 1338
    const/high16 v7, 0x3f00

    .line 1337
    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1339
    .local v1, minimizeButtonAnimation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1340
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1341
    invoke-virtual {v15, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v4, 0x7f090452

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1344
    .local v17, nearingPanel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v4, 0x7f090454

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1347
    .local v20, shadow:Landroid/view/View;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1348
    .local v18, nearingPanelAnim:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x12c

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1349
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1350
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1351
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1354
    new-instance v21, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1355
    .local v21, shadowAnim:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x12c

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1356
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1357
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1358
    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v4, 0x7f090456

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 1362
    .local v19, photoFrame:Landroid/view/View;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1363
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v22

    add-int v8, v8, v22

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v8, v8, v22

    int-to-float v8, v8

    .line 1362
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1364
    .local v2, photoFrameAnim:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1365
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1366
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1368
    new-instance v3, Lcom/waze/navbar/NavBar$16;

    move-object/from16 v4, p0

    move-object v5, v12

    move-object/from16 v6, v19

    move-object/from16 v7, v17

    move-object/from16 v8, v20

    invoke-direct/range {v3 .. v11}, Lcom/waze/navbar/NavBar$16;-><init>(Lcom/waze/navbar/NavBar;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1407
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 1515
    const v0, 0x8011

    if-ne p2, v0, :cond_0

    .line 1516
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navbar/NavBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 1518
    iput-boolean v3, p0, Lcom/waze/navbar/NavBar;->mSaveNav:Z

    .line 1519
    const-string v0, "destination_venue_id"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navbar/NavBar;->mVenueID:Ljava/lang/String;

    .line 1521
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/messages/QuestionData;->ResetQuestionData(Landroid/content/Context;)V

    .line 1522
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/navbar/NavBar;->mVenueID:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/waze/NativeManager;->venueGet(Ljava/lang/String;I)V

    .line 1524
    :cond_0
    return-void
.end method

.method public restoreNearingPanel()V
    .locals 5

    .prologue
    .line 1410
    const/16 v0, 0x12c

    .line 1412
    .local v0, durationMillis:I
    iget-object v3, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v4, 0x7f090461

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1413
    .local v1, nameText:Landroid/view/View;
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1414
    .local v2, nameTextAnim:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1415
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1416
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1418
    new-instance v3, Lcom/waze/navbar/NavBar$17;

    invoke-direct {v3, p0, v1}, Lcom/waze/navbar/NavBar$17;-><init>(Lcom/waze/navbar/NavBar;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1512
    return-void
.end method

.method public setDistStr(Ljava/lang/String;)Z
    .locals 6
    .parameter "str"

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, res:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 560
    .end local v0           #res:Z
    .local v1, res:I
    :goto_0
    return v1

    .line 554
    .end local v1           #res:I
    .restart local v0       #res:Z
    :cond_0
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, strs:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 556
    iget-object v3, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/waze/view/navbar/BottomBar;->setDistance(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 560
    .restart local v1       #res:I
    goto :goto_0
.end method

.method public setDistance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "distString"
    .parameter "distUnit"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->distance:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->distanceUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    return-void
.end method

.method public setDrivingDirection(Z)V
    .locals 1
    .parameter "driveOnLeft"

    .prologue
    .line 611
    if-eqz p1, :cond_0

    sget-object v0, Lcom/waze/navbar/NavBar;->instImagesLeft:[I

    :goto_0
    iput-object v0, p0, Lcom/waze/navbar/NavBar;->instImages:[I

    .line 612
    return-void

    .line 611
    :cond_0
    sget-object v0, Lcom/waze/navbar/NavBar;->instImagesRight:[I

    goto :goto_0
.end method

.method public setEtaStr(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    .line 587
    const/4 v1, 0x0

    .line 588
    .local v1, res:Z
    if-nez p1, :cond_0

    move v2, v1

    .line 601
    .end local v1           #res:Z
    .local v2, res:I
    :goto_0
    return v2

    .line 592
    .end local v2           #res:I
    .restart local v1       #res:Z
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, eta:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 595
    .local v3, spaceIdx:I
    if-lez v3, :cond_1

    .line 596
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v4, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    invoke-virtual {v4, v0}, Lcom/waze/view/navbar/BottomBar;->setETA(Ljava/lang/String;)V

    .line 598
    const/4 v1, 0x1

    :cond_1
    move v2, v1

    .line 601
    .restart local v2       #res:I
    goto :goto_0
.end method

.method public setExit(I)V
    .locals 2
    .parameter "exit"

    .prologue
    .line 526
    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, exitStr:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->directionText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    return-void

    .line 526
    .end local v0           #exitStr:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setFollowersNum(II)Z
    .locals 1
    .parameter "num"
    .parameter "maxFollowers"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    invoke-virtual {v0, p1, p2}, Lcom/waze/view/navbar/BottomBar;->setFollowers(II)V

    .line 607
    const/4 v0, 0x1

    return v0
.end method

.method public setFriendsNum(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 1305
    invoke-direct {p0, p1}, Lcom/waze/navbar/NavBar;->setNearingFriendsNumber(I)V

    .line 1306
    return-void
.end method

.method public setInstruction(I)V
    .locals 3
    .parameter "instruction"

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->directionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/navbar/NavBar;->instImages:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 482
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->directionText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 483
    iput-boolean v2, p0, Lcom/waze/navbar/NavBar;->IsNextInstruction:Z

    .line 484
    return-void
.end method

.method public setNextDistance(Ljava/lang/String;)V
    .locals 0
    .parameter "distString"

    .prologue
    .line 542
    return-void
.end method

.method public setNextExit(I)V
    .locals 2
    .parameter "exit"

    .prologue
    .line 531
    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, exitStr:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->thenDirection:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    return-void

    .line 531
    .end local v0           #exitStr:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setNextInstruction(I)V
    .locals 6
    .parameter "instruction"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 487
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->instImages:[I

    array-length v2, v2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/waze/navbar/NavBar;->instImages:[I

    aget v2, v2, p1

    if-eqz v2, :cond_2

    .line 488
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->nextView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/waze/navbar/NavBar;->shown:Z

    if-eqz v2, :cond_1

    .line 489
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040008

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 490
    .local v1, anim:Landroid/view/animation/Animation;
    iget-boolean v2, p0, Lcom/waze/navbar/NavBar;->IsInAlertMode:Z

    if-nez v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->nextView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 493
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->nextView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :cond_0
    iput-boolean v5, p0, Lcom/waze/navbar/NavBar;->Nextdisplayed:Z

    .line 504
    .end local v1           #anim:Landroid/view/animation/Animation;
    :goto_0
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->thenDirection:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/navbar/NavBar;->instImages:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 505
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->thenDirection:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 523
    :goto_1
    return-void

    .line 500
    :cond_1
    iput-boolean v5, p0, Lcom/waze/navbar/NavBar;->IsNextInstruction:Z

    .line 501
    iput p1, p0, Lcom/waze/navbar/NavBar;->NextInstruction:I

    goto :goto_0

    .line 507
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 508
    .local v0, alphaAnim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 509
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 510
    new-instance v2, Lcom/waze/navbar/NavBar$8;

    invoke-direct {v2, p0}, Lcom/waze/navbar/NavBar$8;-><init>(Lcom/waze/navbar/NavBar;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 521
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->nextView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public setSkin(Z)V
    .locals 0
    .parameter "nightMode"

    .prologue
    .line 615
    iput-boolean p1, p0, Lcom/waze/navbar/NavBar;->nightMode:Z

    .line 616
    invoke-virtual {p0}, Lcom/waze/navbar/NavBar;->adjustImages()V

    .line 617
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 1
    .parameter "street"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->streetText:Lcom/waze/view/navbar/NavBarText;

    invoke-virtual {v0, p1}, Lcom/waze/view/navbar/NavBarText;->setText(Ljava/lang/CharSequence;)V

    .line 546
    invoke-virtual {p0}, Lcom/waze/navbar/NavBar;->adjustImages()V

    .line 547
    return-void
.end method

.method public setTimeStr(Ljava/lang/String;)Z
    .locals 9
    .parameter "str"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 564
    const/4 v2, 0x0

    .line 565
    .local v2, res:Z
    if-nez p1, :cond_0

    move v3, v2

    .line 582
    .end local v2           #res:Z
    .local v3, res:I
    :goto_0
    return v3

    .line 568
    .end local v3           #res:I
    .restart local v2       #res:Z
    :cond_0
    iget-object v5, p0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_HR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, hr:Ljava/lang/String;
    iget-object v5, p0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_MIN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, min:Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, strs:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 573
    iget-object v5, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    aget-object v6, v4, v7

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/waze/view/navbar/BottomBar;->setTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v2, 0x1

    :cond_1
    :goto_1
    move v3, v2

    .line 582
    .restart local v3       #res:I
    goto :goto_0

    .line 575
    .end local v3           #res:I
    :cond_2
    array-length v5, v4

    if-ne v5, v8, :cond_3

    .line 576
    iget-object v5, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    aget-object v6, v4, v7

    invoke-virtual {v5, v6, v1}, Lcom/waze/view/navbar/BottomBar;->setTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/4 v2, 0x1

    .line 578
    goto :goto_1

    :cond_3
    array-length v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 579
    iget-object v5, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/waze/view/navbar/BottomBar;->setTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setWaypoint(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    invoke-virtual {v0, p1}, Lcom/waze/view/navbar/BottomBar;->setWaypointVisibility(Z)V

    .line 1103
    :cond_0
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const v6, 0x7f090453

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 380
    iget-boolean v4, p0, Lcom/waze/navbar/NavBar;->shown:Z

    if-eqz v4, :cond_2

    .line 381
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    invoke-virtual {v1}, Lcom/waze/view/navbar/BottomBar;->show()V

    .line 382
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 383
    iget-boolean v1, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-eqz v1, :cond_0

    move v1, v9

    .line 382
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v2, 0x7f090454

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 385
    iget-boolean v2, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-eqz v2, :cond_1

    .line 384
    :goto_1
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 383
    goto :goto_0

    :cond_1
    move v9, v3

    .line 385
    goto :goto_1

    .line 388
    :cond_2
    iput-boolean v1, p0, Lcom/waze/navbar/NavBar;->shown:Z

    .line 390
    iget-boolean v4, p0, Lcom/waze/navbar/NavBar;->IsInAlertMode:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-eqz v4, :cond_3

    .line 391
    iget-boolean v4, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    invoke-virtual {p0, v4}, Lcom/waze/navbar/NavBar;->ChangeToAlertMode(Z)V

    .line 393
    :cond_3
    invoke-virtual {p0}, Lcom/waze/navbar/NavBar;->adjustImages()V

    .line 394
    iget-object v4, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v4, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v5, 0x7f090164

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v4, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v5, 0x7f090452

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 397
    iget-boolean v4, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-eqz v4, :cond_6

    move v4, v9

    .line 396
    :goto_3
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v4, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 399
    iget-boolean v4, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-eqz v4, :cond_7

    move v4, v9

    .line 398
    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v4, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v5, 0x7f090454

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 401
    iget-boolean v5, p0, Lcom/waze/navbar/NavBar;->nearingDisplayed:Z

    if-eqz v5, :cond_4

    move v3, v9

    .line 400
    :cond_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 402
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 403
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 404
    new-instance v2, Lcom/waze/navbar/NavBar$6;

    invoke-direct {v2, p0}, Lcom/waze/navbar/NavBar$6;-><init>(Lcom/waze/navbar/NavBar;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 420
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 421
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 422
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-boolean v1, p0, Lcom/waze/navbar/NavBar;->IsNextInstruction:Z

    if-eqz v1, :cond_5

    .line 427
    iget v1, p0, Lcom/waze/navbar/NavBar;->NextInstruction:I

    invoke-virtual {p0, v1}, Lcom/waze/navbar/NavBar;->setNextInstruction(I)V

    .line 428
    iput-boolean v9, p0, Lcom/waze/navbar/NavBar;->IsNextInstruction:Z

    .line 431
    :cond_5
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    if-nez v1, :cond_8

    .line 433
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    invoke-virtual {v1}, Lcom/waze/view/navbar/BottomBar;->show()V

    .line 445
    :goto_5
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v2, Lcom/waze/navbar/NavBar$7;

    invoke-direct {v2, p0}, Lcom/waze/navbar/NavBar$7;-><init>(Lcom/waze/navbar/NavBar;)V

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getNumberOfFriendsDriving(Lcom/waze/navigate/DriveToNativeManager$NumberOfFriendsDrivingListener;)V

    goto/16 :goto_2

    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_6
    move v4, v3

    .line 397
    goto :goto_3

    :cond_7
    move v4, v3

    .line 399
    goto :goto_4

    .line 436
    .restart local v0       #anim:Landroid/view/animation/Animation;
    :cond_8
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->getBottomNotification()Lcom/waze/view/bottom/BottomNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/view/bottom/BottomNotification;->isHidable()Z

    move-result v1

    if-nez v1, :cond_9

    .line 438
    iget-object v1, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    invoke-virtual {v1}, Lcom/waze/view/navbar/BottomBar;->show()V

    goto :goto_5

    .line 442
    :cond_9
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->getBottomBar()Lcom/waze/view/navbar/BottomBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/view/navbar/BottomBar;->setToShown()V

    goto :goto_5
.end method

.method public showNearingDestination()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1106
    iput-object v5, p0, Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;

    .line 1107
    iput-object v5, p0, Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;

    .line 1108
    iput-object v5, p0, Lcom/waze/navbar/NavBar;->mVenueID:Ljava/lang/String;

    .line 1109
    invoke-direct {p0, v5}, Lcom/waze/navbar/NavBar;->updateVenueImages(Lcom/waze/reports/VenueData;)V

    .line 1111
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    invoke-direct {v0}, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;-><init>()V

    iput-object v0, p0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    .line 1112
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    iput-boolean v6, v0, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    .line 1114
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v1}, Lcom/waze/navigate/DriveToNativeManager;->getDestinationIdNTV()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/waze/navbar/NavBar$12;

    invoke-direct {v2, p0}, Lcom/waze/navbar/NavBar$12;-><init>(Lcom/waze/navbar/NavBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getAddressItemAppData(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$ObjectListener;)V

    .line 1125
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    const/4 v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/waze/navbar/NavBar$13;

    invoke-direct {v4, p0}, Lcom/waze/navbar/NavBar$13;-><init>(Lcom/waze/navbar/NavBar;)V

    invoke-virtual/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->getLocationData(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;Ljava/lang/String;)V

    .line 1137
    iput-boolean v6, p0, Lcom/waze/navbar/NavBar;->mReceivedSearchResult:Z

    .line 1138
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/waze/navbar/NavBar$14;

    invoke-direct {v1, p0}, Lcom/waze/navbar/NavBar$14;-><init>(Lcom/waze/navbar/NavBar;)V

    .line 1146
    iget-object v2, p0, Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->getVenueGetTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 1138
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1147
    return-void
.end method

.method public unhide()V
    .locals 2

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/waze/navbar/NavBar;->shown:Z

    if-eqz v0, :cond_0

    .line 476
    :goto_0
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/navbar/NavBar;->shown:Z

    .line 474
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    invoke-virtual {v0}, Lcom/waze/view/navbar/BottomBar;->unhide()Z

    .line 475
    iget-object v0, p0, Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
