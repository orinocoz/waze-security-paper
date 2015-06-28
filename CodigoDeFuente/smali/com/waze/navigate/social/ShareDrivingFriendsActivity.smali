.class public Lcom/waze/navigate/social/ShareDrivingFriendsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ShareDrivingFriendsActivity.java"

# interfaces
.implements Lcom/waze/NativeManager$IRefreshFriendsDrivingData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;
    }
.end annotation


# static fields
.field private static final MODE_BEEP:I = 0x0

.field private static final MODE_CUSTOM:I = 0x2

.field private static final MODE_TEXT:I = 0x1

.field private static final RQ_CUSTOM_MESSAGE:I = 0x65


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

.field private increaseMapButton:Landroid/widget/ImageView;

.field private increaseMapOverlay:Landroid/widget/Button;

.field private isMapBig:Z

.field private mCurMode:I

.field private mCurText:Ljava/lang/String;

.field private mEndDriveData:Lcom/waze/navigate/social/EndDriveData;

.field private final mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

.field protected mShareOwner:Ljava/lang/String;

.field private mSharedFriends:Lcom/waze/user/FriendUserData;

.field private mTitleBar:Lcom/waze/view/title/TitleBar;

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

.field sMeeting:Ljava/lang/String;

.field protected shareDriveSwitch:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mUrl:Ljava/lang/String;

    .line 53
    iput v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mType:I

    .line 54
    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->sMeeting:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mEndDriveData:Lcom/waze/navigate/social/EndDriveData;

    .line 57
    iput-boolean v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->IsSetMeeting:Z

    .line 58
    iput-boolean v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->isMapBig:Z

    .line 63
    iput-boolean v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->bIsDriving:Z

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurMode:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurText:Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$1;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->IsSetMeeting:Z

    return v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->IsSetMeeting:Z

    return-void
.end method

.method static synthetic access$10(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->setMapLayoutListener(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$12(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Lcom/waze/user/FriendUserData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;

    return-void
.end method

.method static synthetic access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->onBeepBeep()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->onSendCustomMessage()V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->onSendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/view/title/TitleBar;
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Lcom/waze/navigate/social/EndDriveData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mEndDriveData:Lcom/waze/navigate/social/EndDriveData;

    return-void
.end method

.method static synthetic access$9(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/navigate/social/EndDriveData;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mEndDriveData:Lcom/waze/navigate/social/EndDriveData;

    return-object v0
.end method

.method private onBeepBeep()V
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurMode:I

    .line 344
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_BEEP_BEEP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurText:Ljava/lang/String;

    .line 345
    const v0, 0x7f0906a4

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->sendMessage()V

    .line 347
    return-void
.end method

.method private onSendCustomMessage()V
    .locals 2

    .prologue
    .line 357
    const/4 v0, 0x2

    iput v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurMode:I

    .line 358
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_CUSTOM_MESSAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurText:Ljava/lang/String;

    .line 359
    const v0, 0x7f0906a4

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->sendMessage()V

    .line 361
    return-void
.end method

.method private onSendMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 350
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurMode:I

    .line 351
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurText:Ljava/lang/String;

    .line 352
    const v0, 0x7f0906a4

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->sendMessage()V

    .line 354
    return-void
.end method

.method private setMapLayoutListener(Landroid/view/View;)V
    .locals 5
    .parameter "mapLayoutRoot"

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 171
    .local v2, layoutWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 173
    .local v0, layoutHeight:I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 174
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 175
    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    invoke-virtual {v4}, Lcom/waze/view/title/TitleBar;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 177
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    return-void
.end method


# virtual methods
.method driveThere()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 156
    const-string v0, "FRIEND_SHARED_DRIVE_GO"

    invoke-static {v0, v1, v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->sMeeting:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->drive(Ljava/lang/String;Z)V

    .line 159
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->finish()V

    .line 161
    return-void
.end method

.method public increaseMapClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    iget-boolean v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->isMapBig:Z

    if-eqz v1, :cond_0

    .line 188
    iput-boolean v3, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->isMapBig:Z

    .line 189
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v1, v3}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 190
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->increaseMapOverlay:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v2, 0x7f02024e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->setMapLayoutListener(Landroid/view/View;)V

    .line 196
    const v1, 0x7f0906a7

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 198
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/waze/navigate/DriveToNativeManager;->setMapMode(Z)V

    .line 215
    :goto_0
    return-void

    .line 202
    :cond_0
    iput-boolean v4, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->isMapBig:Z

    .line 203
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v1, v4}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 204
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->increaseMapOverlay:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v2, 0x7f020248

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    const v1, 0x7f090699

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, root:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->setMapLayoutListener(Landroid/view/View;)V

    .line 211
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 213
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/waze/navigate/DriveToNativeManager;->setMapMode(Z)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 256
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 257
    :cond_0
    if-ne p2, v1, :cond_1

    .line 258
    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->setResult(I)V

    .line 259
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->finish()V

    .line 261
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->isMapBig:Z

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->increaseMapClicked(Landroid/view/View;)V

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const v5, 0x7f0906a7

    const/4 v4, 0x1

    .line 72
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->requestWindowFeature(I)Z

    .line 74
    invoke-virtual {p0, v4}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->setRequestedOrientation(I)V

    .line 75
    const v1, 0x7f030100

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->setContentView(I)V

    .line 76
    const-string v1, "FRIEND_SHARED_DRIVE_SHOWN"

    invoke-static {v1, v2, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;

    .line 79
    const v1, 0x7f09069a

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    .line 80
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SHARED_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mType:I

    .line 84
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "meeting"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->sMeeting:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->sMeeting:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->sMeeting:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->isDrivingToMeetingNTV(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0, v5}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iput-boolean v4, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->bIsDriving:Z

    .line 93
    :goto_0
    const v1, 0x7f09069c

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v1, 0x7f09069f

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v1, 0x7f0906a0

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v1, 0x7f0900f3

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    .line 98
    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapLayout:Landroid/widget/RelativeLayout;

    .line 100
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 101
    .local v0, vto:Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$2;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 116
    const v1, 0x7f0906a6

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->increaseMapOverlay:Landroid/widget/Button;

    .line 117
    const v1, 0x7f0900f5

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/MapView;

    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapView:Lcom/waze/MapView;

    .line 118
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapView:Lcom/waze/MapView;

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v1, v2}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 119
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->increaseMapOverlay:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    invoke-virtual {p0, v5}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$3;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v1, 0x7f0900f6

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->increaseMapButton:Landroid/widget/ImageView;

    .line 130
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v2, 0x7f02024e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SHARE_REPLY_1:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurText:Ljava/lang/String;

    .line 133
    const v1, 0x7f0906a4

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v1, 0x7f0906a3

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 135
    new-instance v2, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$4;

    invoke-direct {v2, p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$4;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V

    .line 134
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v1, 0x7f0906a2

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$5;

    invoke-direct {v2, p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$5;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v1, 0x7f0906a1

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsTitleText;

    .line 152
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_REPLY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 153
    return-void

    .line 90
    .end local v0           #vto:Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 233
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->IsSetMeeting:Z

    .line 235
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetMeeting()V

    .line 236
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 266
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 267
    new-instance v1, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V

    .line 337
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->sMeeting:Ljava/lang/String;

    .line 266
    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getFriendsDriveData(Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 241
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 242
    return-void
.end method

.method sendMessage()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 364
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;

    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurMode:I

    if-nez v0, :cond_2

    .line 367
    const-string v0, "BEEP_BEEP_CLICK_FROM"

    .line 368
    const-string v1, "VAUE"

    const-string v2, "SHARED_DRIVE"

    .line 367
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;

    iget v1, v1, Lcom/waze/user/FriendUserData;->mLongitude:I

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;

    iget v2, v2, Lcom/waze/user/FriendUserData;->mLatitude:I

    iget-object v3, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;

    iget v3, v3, Lcom/waze/user/FriendUserData;->mAzimuth:I

    .line 370
    iget-object v4, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;

    iget v4, v4, Lcom/waze/user/FriendUserData;->mID:I

    new-instance v5, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$7;

    invoke-direct {v5, p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$7;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V

    .line 369
    invoke-virtual/range {v0 .. v5}, Lcom/waze/NativeManager;->SendBeepBeep(IIIILcom/waze/NativeManager$IResultCode;)V

    goto :goto_0

    .line 376
    :cond_2
    iget v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurMode:I

    if-ne v0, v2, :cond_3

    .line 377
    invoke-static {}, Lcom/waze/messages/MessagesNativeManager;->getInstance()Lcom/waze/messages/MessagesNativeManager;

    move-result-object v7

    .line 378
    .local v7, mnm:Lcom/waze/messages/MessagesNativeManager;
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurText:Ljava/lang/String;

    invoke-virtual {v7, v2, v0, v1}, Lcom/waze/messages/MessagesNativeManager;->sendMessage(ZLcom/waze/user/UserData;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    .end local v7           #mnm:Lcom/waze/messages/MessagesNativeManager;
    :cond_3
    iget v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mCurMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 380
    invoke-static {}, Lcom/waze/messages/MessagesNativeManager;->getInstance()Lcom/waze/messages/MessagesNativeManager;

    move-result-object v7

    .line 382
    .restart local v7       #mnm:Lcom/waze/messages/MessagesNativeManager;
    new-instance v6, Lcom/waze/messages/MessagesNativeManager$EditorContext;

    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;

    invoke-direct {v6, p0, v2, v0}, Lcom/waze/messages/MessagesNativeManager$EditorContext;-><init>(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/user/UserData;)V

    .line 383
    .local v6, editorContext:Lcom/waze/messages/MessagesNativeManager$EditorContext;
    const/16 v0, 0x65

    iput v0, v6, Lcom/waze/messages/MessagesNativeManager$EditorContext;->mRqCode:I

    .line 384
    invoke-virtual {v7, v6}, Lcom/waze/messages/MessagesNativeManager;->startPrivate(Lcom/waze/messages/MessagesNativeManager$EditorContext;)V

    goto :goto_0
.end method
