.class public Lcom/waze/navigate/social/AddFriendsPopup;
.super Landroid/app/Dialog;
.source "AddFriendsPopup.java"


# instance fields
.field private mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

.field private mContext:Landroid/content/Context;

.field private mFriendsSuggestionLayout:Landroid/widget/LinearLayout;

.field private mFriendsToAdd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/waze/user/FriendUserData;",
            ">;"
        }
    .end annotation
.end field

.field private nativeManager:Lcom/waze/NativeManager;

.field private signButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 36
    const v0, 0x7f06000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object v1, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    .line 31
    iput-object v1, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsToAdd:Ljava/util/HashMap;

    .line 37
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup;->nativeManager:Lcom/waze/NativeManager;

    .line 39
    return-void
.end method

.method private AddFriendInLayout(Lcom/waze/user/FriendUserData;)V
    .locals 6
    .parameter "friend"

    .prologue
    const/16 v5, 0x8

    .line 114
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, friendLayoutInListLayout:Landroid/view/View;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/waze/user/FriendUserData;->getImage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/waze/navigate/social/AddFriendsUtils;->setNameAndImage(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    new-instance v2, Lcom/waze/navigate/social/AddFriendsPopup$3;

    invoke-direct {v2, p0, p1}, Lcom/waze/navigate/social/AddFriendsPopup$3;-><init>(Lcom/waze/navigate/social/AddFriendsPopup;Lcom/waze/user/FriendUserData;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 145
    .local v0, cb:Landroid/widget/CheckBox;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 165
    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 168
    const v2, 0x7f09007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsSuggestionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/AddFriendsPopup;Lcom/waze/navigate/social/AddFriendsData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/navigate/social/AddFriendsPopup;)Lcom/waze/navigate/social/AddFriendsData;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/social/AddFriendsPopup;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsSuggestionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/navigate/social/AddFriendsPopup;Lcom/waze/user/FriendUserData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/waze/navigate/social/AddFriendsPopup;->AddFriendInLayout(Lcom/waze/user/FriendUserData;)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/navigate/social/AddFriendsPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFriendsPopup;->onContinueClicked()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/navigate/social/AddFriendsPopup;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsToAdd:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/navigate/social/AddFriendsPopup;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup;->signButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/navigate/social/AddFriendsPopup;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method private initLayout()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 88
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsPopup;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFriendsPopup;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 90
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ADD_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v0, 0x7f090099

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_FRIENDS_HEADING_TO_THE_SAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsSuggestionLayout:Landroid/widget/LinearLayout;

    .line 95
    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup;->signButton:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup;->signButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsPopup;->nativeManager:Lcom/waze/NativeManager;

    .line 97
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup;->signButton:Landroid/widget/TextView;

    new-instance v1, Lcom/waze/navigate/social/AddFriendsPopup$2;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFriendsPopup$2;-><init>(Lcom/waze/navigate/social/AddFriendsPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFriendsPopup;->readFriendSuggestions()V

    .line 108
    return-void
.end method

.method private onContinueClicked()V
    .locals 12

    .prologue
    .line 184
    iget-object v7, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsToAdd:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 186
    iget-object v7, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsToAdd:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 187
    .local v6, selected:[Ljava/lang/Object;
    array-length v7, v6

    new-array v4, v7, [Ljava/lang/String;

    .line 188
    .local v4, phones:[Ljava/lang/String;
    array-length v7, v6

    new-array v1, v7, [I

    .line 189
    .local v1, ids:[I
    const/4 v0, 0x0

    .line 191
    .local v0, i:I
    array-length v8, v6

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_1

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Added "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " friends."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriends([ILjava/lang/String;)V

    .line 202
    .end local v0           #i:I
    .end local v1           #ids:[I
    .end local v4           #phones:[Ljava/lang/String;
    .end local v5           #reply:Ljava/lang/String;
    .end local v6           #selected:[Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v7

    .line 203
    const-string v8, "ADD_FRIENDS_POPUP_CLICK"

    const-string v9, "VAUE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsToAdd:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    .line 202
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFriendsPopup;->close()V

    .line 206
    return-void

    .line 191
    .restart local v0       #i:I
    .restart local v1       #ids:[I
    .restart local v4       #phones:[Ljava/lang/String;
    .restart local v6       #selected:[Ljava/lang/Object;
    :cond_1
    aget-object v2, v6, v7

    .local v2, o:Ljava/lang/Object;
    move-object v3, v2

    .line 192
    check-cast v3, Lcom/waze/user/PersonBase;

    .line 193
    .local v3, p:Lcom/waze/user/PersonBase;
    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v0

    .line 194
    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getID()I

    move-result v9

    aput v9, v1, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 191
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private readFriendSuggestions()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 51
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v1, Lcom/waze/navigate/social/AddFriendsPopup$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFriendsPopup$1;-><init>(Lcom/waze/navigate/social/AddFriendsPopup;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getAddFriendsData(Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->EnableOrientation()V

    .line 210
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->signup_finished()V

    .line 211
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFriendsPopup;->dismiss()V

    .line 212
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 181
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFriendsPopup;->initLayout()V

    .line 47
    return-void
.end method
