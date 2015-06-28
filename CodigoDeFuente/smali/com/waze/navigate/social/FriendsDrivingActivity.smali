.class public Lcom/waze/navigate/social/FriendsDrivingActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "FriendsDrivingActivity.java"


# instance fields
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

.field bIsFollowed:Z

.field private mFriendsSuggestionLayout:Landroid/widget/LinearLayout;

.field mNumber:I

.field protected mShareOwner:Ljava/lang/String;

.field mType:I

.field mUrl:Ljava/lang/String;

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

    .line 33
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->mUrl:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->mType:I

    .line 38
    iput-object v1, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->sMeeting:Ljava/lang/String;

    .line 39
    iput-boolean v0, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->bIsFollowed:Z

    .line 40
    iput v0, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->mNumber:I

    .line 33
    return-void
.end method

.method private AddFriend(Lcom/waze/user/FriendUserData;)V
    .locals 10
    .parameter "fud"

    .prologue
    const v9, 0x7f090088

    const v8, 0x7f090087

    const/4 v5, 0x0

    const/16 v7, 0x8

    .line 137
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/waze/navigate/social/FriendsDrivingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 138
    .local v2, l:Landroid/view/LayoutInflater;
    const v4, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, friendLayout:Landroid/view/View;
    invoke-virtual {p1}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {p1}, Lcom/waze/user/FriendUserData;->getImage()Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-static {p0, v1, v4, v6}, Lcom/waze/navigate/social/AddFriendsUtils;->setNameAndImage(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v4, p1, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 144
    :cond_0
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :goto_0
    const v4, 0x7f09007f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 151
    iget-boolean v4, p1, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-eqz v4, :cond_2

    move v4, v5

    .line 150
    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    const v4, 0x7f09008a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 154
    .local v0, addButton:Landroid/widget/ImageView;
    const v4, 0x7f090089

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 157
    .local v3, removeButton:Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    new-instance v4, Lcom/waze/navigate/social/FriendsDrivingActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/waze/navigate/social/FriendsDrivingActivity$3;-><init>(Lcom/waze/navigate/social/FriendsDrivingActivity;Lcom/waze/user/FriendUserData;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-boolean v4, p1, Lcom/waze/user/FriendUserData;->mShowETA:Z

    if-eqz v4, :cond_3

    .line 173
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 174
    const v4, 0x7f09008c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/waze/user/FriendUserData;->arrivedText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const v4, 0x7f09008d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/waze/user/FriendUserData;->arrivedTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_2
    iget-object v4, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->mFriendsSuggestionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    return-void

    .line 146
    .end local v0           #addButton:Landroid/widget/ImageView;
    .end local v3           #removeButton:Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p1, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :cond_2
    const/4 v4, 0x4

    goto :goto_1

    .line 179
    .restart local v0       #addButton:Landroid/widget/ImageView;
    .restart local v3       #removeButton:Landroid/view/View;
    :cond_3
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/FriendsDrivingActivity;Lcom/waze/user/FriendUserData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/waze/navigate/social/FriendsDrivingActivity;->AddFriend(Lcom/waze/user/FriendUserData;)V

    return-void
.end method

.method private readFriend()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 118
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v1, Lcom/waze/navigate/social/FriendsDrivingActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/FriendsDrivingActivity$2;-><init>(Lcom/waze/navigate/social/FriendsDrivingActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getEndDriveData(Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;)V

    .line 128
    return-void
.end method


# virtual methods
.method public getFriendsList()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/waze/navigate/social/FriendsDrivingActivity;->readFriend()V

    .line 132
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v2, 0x10

    const/4 v1, -0x1

    .line 100
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 101
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/NativeManager;->bToUploadContacts:Z

    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/phone/AddressBook;->RequestSync(Z)V

    .line 104
    invoke-static {p0, v2}, Lcom/waze/share/ShareUtility;->shareLocationOrDrive(Lcom/waze/ifs/ui/ActivityBase;I)V

    .line 106
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 107
    invoke-static {p0, v2}, Lcom/waze/share/ShareUtility;->shareLocationOrDrive(Lcom/waze/ifs/ui/ActivityBase;I)V

    .line 113
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    return-void

    .line 109
    :cond_2
    if-ne p2, v1, :cond_1

    .line 110
    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/FriendsDrivingActivity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lcom/waze/navigate/social/FriendsDrivingActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 202
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f0902ec

    const/4 v0, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/FriendsDrivingActivity;->requestWindowFeature(I)Z

    .line 51
    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/FriendsDrivingActivity;->setRequestedOrientation(I)V

    .line 52
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/FriendsDrivingActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f0902e8

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/FriendsDrivingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ON_THE_WAY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 57
    const v0, 0x7f09007a

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/FriendsDrivingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->mFriendsSuggestionLayout:Landroid/widget/LinearLayout;

    .line 65
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isFollowActiveNTV()Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->bIsFollowed:Z

    .line 66
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->getMyShareDriveUsersCountNTV()I

    move-result v0

    iput v0, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->mNumber:I

    .line 67
    iget-boolean v0, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->bIsFollowed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->mNumber:I

    if-lez v0, :cond_0

    .line 69
    invoke-virtual {p0, v3}, Lcom/waze/navigate/social/FriendsDrivingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_YOU_ARE_SHARING_DRIVE_WITH:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/waze/navigate/social/FriendsDrivingActivity;->mNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_0
    const v0, 0x7f0902ea

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/FriendsDrivingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/navigate/social/FriendsDrivingActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/FriendsDrivingActivity$1;-><init>(Lcom/waze/navigate/social/FriendsDrivingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/waze/navigate/social/FriendsDrivingActivity;->getFriendsList()V

    .line 96
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0, v3}, Lcom/waze/navigate/social/FriendsDrivingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SHARE_YOUR_DRIVE_WITH_FRIENDS_AND_FAMILY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 190
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 195
    return-void
.end method
