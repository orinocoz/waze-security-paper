.class public Lcom/waze/navigate/social/MyShareDriveActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "MyShareDriveActivity.java"

# interfaces
.implements Lcom/waze/NativeManager$IRefreshFriendsDrivingData;


# static fields
.field public static final REQUEST_ADD_DRIVE_SHARE:I = 0x7d1


# instance fields
.field private IsSetMeeting:Z

.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;"
        }
    .end annotation
.end field

.field private bIsDriving:Z

.field private dtnm:Lcom/waze/navigate/DriveToNativeManager;

.field private increaseMapButton:Landroid/widget/ImageView;

.field private increaseMapOverlay:Landroid/widget/Button;

.field private isDayMode:Z

.field private isMapBig:Z

.field private leftCorner:Landroid/widget/ImageView;

.field private mFriendsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendsLayout:Landroid/widget/LinearLayout;

.field private mFriendsListData:Lcom/waze/navigate/social/FriendsListData;

.field private mIsChecked:Z

.field private final mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

.field protected mShareOwner:Ljava/lang/String;

.field mType:I

.field mUrl:Ljava/lang/String;

.field private mapLayout:Landroid/widget/RelativeLayout;

.field private mapPlaceholder:Landroid/widget/RelativeLayout;

.field private mapView:Lcom/waze/MapView;

.field private nm:Lcom/waze/NativeManager;

.field people:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;"
        }
    .end annotation
.end field

.field private rightCorner:Landroid/widget/ImageView;

.field sMeeting:Ljava/lang/String;

.field protected shareDriveSwitch:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mUrl:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mType:I

    .line 53
    iput-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->sMeeting:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;

    .line 56
    iput-boolean v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->IsSetMeeting:Z

    .line 57
    iput-boolean v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->isMapBig:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mIsChecked:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsArray:Ljava/util/ArrayList;

    .line 66
    iput-boolean v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->bIsDriving:Z

    .line 481
    new-instance v0, Lcom/waze/navigate/social/MyShareDriveActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/social/MyShareDriveActivity$1;-><init>(Lcom/waze/navigate/social/MyShareDriveActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/MyShareDriveActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->IsSetMeeting:Z

    return v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/social/MyShareDriveActivity;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/navigate/social/MyShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/waze/navigate/social/MyShareDriveActivity;->addAddMoreFriends()V

    return-void
.end method

.method static synthetic access$11(Lcom/waze/navigate/social/MyShareDriveActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/social/MyShareDriveActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->IsSetMeeting:Z

    return-void
.end method

.method static synthetic access$3(Lcom/waze/navigate/social/MyShareDriveActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/navigate/social/MyShareDriveActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/navigate/social/MyShareDriveActivity;Lcom/waze/navigate/social/FriendsListData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;

    return-void
.end method

.method static synthetic access$6(Lcom/waze/navigate/social/MyShareDriveActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/navigate/social/MyShareDriveActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/waze/navigate/social/MyShareDriveActivity;)Lcom/waze/navigate/social/FriendsListData;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsListData:Lcom/waze/navigate/social/FriendsListData;

    return-object v0
.end method

.method static synthetic access$9(Lcom/waze/navigate/social/MyShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/waze/navigate/social/MyShareDriveActivity;->friendsListPopulateFriends()V

    return-void
.end method

.method private addAddMoreFriends()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0x8

    .line 307
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/waze/navigate/social/MyShareDriveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 308
    .local v2, l:Landroid/view/LayoutInflater;
    const v4, 0x7f030008

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, friendLayout:Landroid/view/View;
    const v4, 0x7f090086

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;

    .line 311
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_ADD_MORE_PEOPLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const v4, 0x7f090087

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 315
    const v4, 0x7f09007f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 317
    const v4, 0x7f090082

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 318
    const v4, 0x7f090080

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 319
    const v4, 0x7f090084

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 321
    const v4, 0x7f09008a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 322
    .local v0, addButton:Landroid/widget/ImageView;
    const v4, 0x7f090089

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 323
    .local v3, removeButton:Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    new-instance v4, Lcom/waze/navigate/social/MyShareDriveActivity$7;

    invoke-direct {v4, p0}, Lcom/waze/navigate/social/MyShareDriveActivity$7;-><init>(Lcom/waze/navigate/social/MyShareDriveActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v4, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    return-void
.end method

.method private addFriend(Lcom/waze/user/PersonBase;)V
    .locals 12
    .parameter "p"

    .prologue
    const v11, 0x7f090088

    const/4 v10, 0x0

    const v9, 0x7f090087

    const/4 v6, 0x0

    const/16 v8, 0x8

    .line 206
    move-object v2, p1

    check-cast v2, Lcom/waze/user/FriendUserData;

    .line 208
    .local v2, fud:Lcom/waze/user/FriendUserData;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/waze/navigate/social/MyShareDriveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 209
    .local v3, l:Landroid/view/LayoutInflater;
    const v5, 0x7f030008

    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 211
    .local v1, friendLayout:Landroid/view/View;
    invoke-virtual {v2}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-virtual {v2}, Lcom/waze/user/FriendUserData;->getImage()Ljava/lang/String;

    move-result-object v7

    .line 211
    invoke-static {p0, v1, v5, v7}, Lcom/waze/navigate/social/AddFriendsUtils;->setNameAndImage(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v5, v2, Lcom/waze/user/FriendUserData;->sharestatusLine:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/waze/user/FriendUserData;->sharestatusLine:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 216
    :cond_0
    iget-object v5, v2, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 217
    :cond_1
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :goto_0
    const v5, 0x7f09007f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 230
    iget-boolean v5, v2, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-eqz v5, :cond_4

    move v5, v6

    .line 229
    :goto_1
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 232
    const v5, 0x7f09008a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 233
    .local v0, addButton:Landroid/widget/ImageView;
    const v5, 0x7f090089

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 235
    .local v4, removeButton:Landroid/view/View;
    iget-boolean v5, v2, Lcom/waze/user/FriendUserData;->mIsFriend:Z

    if-nez v5, :cond_5

    iget-boolean v5, v2, Lcom/waze/user/FriendUserData;->mIsPendingFriend:Z

    if-nez v5, :cond_5

    iget-boolean v5, v2, Lcom/waze/user/FriendUserData;->mIsFbFriend:Z

    if-nez v5, :cond_5

    .line 236
    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 238
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    const v5, 0x7f020009

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    new-instance v5, Lcom/waze/navigate/social/MyShareDriveActivity$5;

    invoke-direct {v5, p0, p1, v2}, Lcom/waze/navigate/social/MyShareDriveActivity$5;-><init>(Lcom/waze/navigate/social/MyShareDriveActivity;Lcom/waze/user/PersonBase;Lcom/waze/user/FriendUserData;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    :goto_2
    new-instance v5, Lcom/waze/navigate/social/MyShareDriveActivity$6;

    invoke-direct {v5, p0, p1}, Lcom/waze/navigate/social/MyShareDriveActivity$6;-><init>(Lcom/waze/navigate/social/MyShareDriveActivity;Lcom/waze/user/PersonBase;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-boolean v5, v2, Lcom/waze/user/FriendUserData;->mShowETA:Z

    if-eqz v5, :cond_7

    .line 293
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 294
    const v5, 0x7f09008c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 295
    iget-object v6, v2, Lcom/waze/user/FriendUserData;->arrivedText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const v5, 0x7f09008d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 297
    iget-object v6, v2, Lcom/waze/user/FriendUserData;->arrivedTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :goto_3
    iget-object v5, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    return-void

    .line 219
    .end local v0           #addButton:Landroid/widget/ImageView;
    .end local v4           #removeButton:Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 220
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, v2, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 225
    :cond_3
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, v2, Lcom/waze/user/FriendUserData;->sharestatusLine:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 230
    :cond_4
    const/4 v5, 0x4

    goto/16 :goto_1

    .line 273
    .restart local v0       #addButton:Landroid/widget/ImageView;
    .restart local v4       #removeButton:Landroid/view/View;
    :cond_5
    iget-boolean v5, v2, Lcom/waze/user/FriendUserData;->mIsPendingFriend:Z

    if-eqz v5, :cond_6

    .line 274
    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 278
    :cond_6
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 279
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 299
    :cond_7
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private friendsListPopulateFriends()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    return-void

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/user/PersonBase;

    .line 200
    .local v0, friend:Lcom/waze/user/PersonBase;
    invoke-direct {p0, v0}, Lcom/waze/navigate/social/MyShareDriveActivity;->addFriend(Lcom/waze/user/PersonBase;)V

    goto :goto_0
.end method

.method private setMapLayoutListener(Landroid/view/View;)V
    .locals 4
    .parameter "mapLayoutRoot"

    .prologue
    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 421
    .local v2, layoutWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 423
    .local v0, layoutHeight:I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 424
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 426
    iget-object v3, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    return-void
.end method


# virtual methods
.method addToMeeting(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, newArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    const/4 v9, 0x0

    .line 357
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [I

    .line 360
    .local v0, addUids:[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v2, v7, [Ljava/lang/String;

    .line 361
    .local v2, invitePhones:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v1, v7, [I

    .line 362
    .local v1, inviteIds:[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 364
    .local v6, wazesPhones:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 365
    .local v3, numAdd:I
    const/4 v4, 0x0

    .line 367
    .local v4, numInvite:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 381
    const-string v7, "SHARE_SENT"

    invoke-static {v7, v9, v9}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    if-lez v3, :cond_2

    .line 384
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v3, v6, v8}, Lcom/waze/NativeManager;->AddToMeeting([II[Ljava/lang/Object;Z)V

    .line 386
    :cond_2
    if-lez v4, :cond_0

    .line 387
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v2, v1, v4, v8}, Lcom/waze/NativeManager;->InviteToMeeting([Ljava/lang/Object;[III)V

    goto :goto_0

    .line 367
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/waze/user/PersonBase;

    .line 368
    .local v5, p:Lcom/waze/user/PersonBase;
    invoke-virtual {v5}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v8

    if-nez v8, :cond_4

    .line 370
    invoke-virtual {v5}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v4

    .line 371
    invoke-virtual {v5}, Lcom/waze/user/PersonBase;->getID()I

    move-result v8

    aput v8, v1, v4

    .line 372
    add-int/lit8 v4, v4, 0x1

    .line 373
    goto :goto_1

    .line 374
    :cond_4
    invoke-virtual {v5}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 376
    invoke-virtual {v5}, Lcom/waze/user/PersonBase;->getID()I

    move-result v8

    aput v8, v0, v3

    .line 377
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public increaseMapClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 434
    iget-boolean v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->isMapBig:Z

    if-eqz v1, :cond_0

    .line 437
    iput-boolean v3, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->isMapBig:Z

    .line 438
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v1, v3}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 439
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->increaseMapOverlay:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 445
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v2, 0x7f02024e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 453
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->setMapLayoutListener(Landroid/view/View;)V

    .line 455
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v1, v4}, Lcom/waze/navigate/DriveToNativeManager;->setMapMode(Z)V

    .line 479
    :goto_0
    return-void

    .line 457
    :cond_0
    iput-boolean v4, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->isMapBig:Z

    .line 458
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v1, v4}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 459
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->increaseMapOverlay:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 466
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v2, 0x7f020248

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    const v1, 0x7f09042f

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 475
    .local v0, root:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/waze/navigate/social/MyShareDriveActivity;->setMapLayoutListener(Landroid/view/View;)V

    .line 477
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v1, v3}, Lcom/waze/navigate/DriveToNativeManager;->setMapMode(Z)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 343
    const/16 v1, 0x7d1

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 345
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SELECTED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 346
    .local v0, newArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/MyShareDriveActivity;->addToMeeting(Ljava/util/ArrayList;)V

    .line 353
    .end local v0           #newArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 354
    return-void

    .line 348
    :cond_1
    if-ne p2, v2, :cond_0

    .line 350
    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->setResult(I)V

    .line 351
    invoke-virtual {p0}, Lcom/waze/navigate/social/MyShareDriveActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 509
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 510
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const v6, 0x7f090435

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;

    .line 77
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    .line 79
    invoke-virtual {p0, v5}, Lcom/waze/navigate/social/MyShareDriveActivity;->requestWindowFeature(I)Z

    .line 80
    invoke-virtual {p0, v5}, Lcom/waze/navigate/social/MyShareDriveActivity;->setRequestedOrientation(I)V

    .line 81
    const v1, 0x7f03008e

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->setContentView(I)V

    .line 82
    const-string v1, "MY_SHARED_DRIVE_SHOWN"

    invoke-static {v1, v2, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const v1, 0x7f090430

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    .line 85
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SHARED_DRIVE_TITLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v1, p0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/waze/navigate/social/MyShareDriveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mType:I

    .line 89
    invoke-virtual {p0}, Lcom/waze/navigate/social/MyShareDriveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "meeting"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->sMeeting:Ljava/lang/String;

    .line 91
    const v1, 0x7f090431

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;

    .line 92
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SHARED_DRIVE_STATUS_BAR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0, v6}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;

    .line 96
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_STOP_SHARING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->sMeeting:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 98
    const v1, 0x7f090433

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_0
    :goto_0
    const v1, 0x7f090434

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mFriendsLayout:Landroid/widget/LinearLayout;

    .line 107
    const v1, 0x7f090432

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    .line 108
    const v1, 0x7f090436

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapLayout:Landroid/widget/RelativeLayout;

    .line 110
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 111
    .local v0, vto:Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/waze/navigate/social/MyShareDriveActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/MyShareDriveActivity$2;-><init>(Lcom/waze/navigate/social/MyShareDriveActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 125
    const v1, 0x7f090439

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->increaseMapOverlay:Landroid/widget/Button;

    .line 126
    const v1, 0x7f090437

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/MapView;

    iput-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapView:Lcom/waze/MapView;

    .line 127
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v1, v4}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 128
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->increaseMapOverlay:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapView:Lcom/waze/MapView;

    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v1, v2}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 132
    invoke-virtual {p0, v6}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/navigate/social/MyShareDriveActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/navigate/social/MyShareDriveActivity$3;-><init>(Lcom/waze/navigate/social/MyShareDriveActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v1}, Lcom/waze/navigate/DriveToNativeManager;->isDayMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->isDayMode:Z

    .line 142
    const v1, 0x7f090438

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->increaseMapButton:Landroid/widget/ImageView;

    .line 145
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v2, 0x7f02024e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    return-void

    .line 100
    .end local v0           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;

    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->sMeeting:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->isMeetingActiveNTV(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iput-boolean v5, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->bIsDriving:Z

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 493
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 494
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->IsSetMeeting:Z

    .line 496
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetMeeting()V

    .line 497
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->dtnm:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v1, Lcom/waze/navigate/social/MyShareDriveActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/MyShareDriveActivity$4;-><init>(Lcom/waze/navigate/social/MyShareDriveActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getMySharedDriveUsers(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 191
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 501
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 502
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 503
    return-void
.end method

.method stopMeeting()V
    .locals 8

    .prologue
    .line 392
    new-instance v4, Lcom/waze/navigate/social/MyShareDriveActivity$8;

    invoke-direct {v4, p0}, Lcom/waze/navigate/social/MyShareDriveActivity$8;-><init>(Lcom/waze/navigate/social/MyShareDriveActivity;)V

    .line 405
    .local v4, onClick:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CONFIRM_STOP_FOLLOW_TITLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 408
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_CONFIRM_STOP_FOLLOW_BODY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 409
    iget-object v5, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 410
    iget-object v6, p0, Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_NO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 406
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 411
    return-void
.end method
