.class public Lcom/waze/navigate/social/EditFriendsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "EditFriendsActivity.java"

# interfaces
.implements Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;
.implements Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;,
        Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;
    }
.end annotation


# instance fields
.field private mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

.field private mFriendsListView:Landroid/widget/ListView;

.field private mNumCurrent:I

.field private mNumRemoved:I

.field private mPersonArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;

.field private mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

.field private mPersonToAdd:Lcom/waze/user/PersonBase;

.field private mPersonToRemove:Lcom/waze/user/PersonBase;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 55
    iput v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I

    .line 56
    iput v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumRemoved:I

    .line 57
    iput-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToRemove:Lcom/waze/user/PersonBase;

    .line 58
    iput-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToAdd:Lcom/waze/user/PersonBase;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/waze/navigate/social/EditFriendsActivity;->addFriend(Lcom/waze/user/PersonBase;)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/waze/navigate/social/EditFriendsActivity;->removeFriend(Lcom/waze/user/PersonBase;)V

    return-void
.end method

.method static synthetic access$10(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/waze/navigate/social/EditFriendsActivity;->reallyRemoveFriend(Lcom/waze/user/PersonBase;)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/navigate/social/EditFriendsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/navigate/social/EditFriendsActivity;)Lcom/waze/autocomplete/ContactsCompletionView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/navigate/social/EditFriendsActivity;)Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/navigate/social/EditFriendsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I

    return v0
.end method

.method static synthetic access$6(Lcom/waze/navigate/social/EditFriendsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$7(Lcom/waze/navigate/social/EditFriendsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I

    return-void
.end method

.method static synthetic access$8(Lcom/waze/navigate/social/EditFriendsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumRemoved:I

    return-void
.end method

.method static synthetic access$9(Lcom/waze/navigate/social/EditFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/waze/navigate/social/EditFriendsActivity;->finishedReading()V

    return-void
.end method

.method private addFriend(Lcom/waze/user/PersonBase;)V
    .locals 6
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 359
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToAdd:Lcom/waze/user/PersonBase;

    .line 360
    new-array v0, v4, [I

    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v2

    aput v2, v0, v5

    .line 362
    .local v0, ids:[I
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PS_ADDED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 363
    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 362
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriends([ILjava/lang/String;)V

    .line 365
    return-void
.end method

.method private finishedReading()V
    .locals 4

    .prologue
    const v3, 0x7f09009d

    .line 159
    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 163
    .local v0, nativeManager:Lcom/waze/NativeManager;
    const v1, 0x7f09009e

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/EditFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 164
    const-string v2, "moods/sad.bin"

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/waze/navigate/social/EditFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    const v1, 0x7f09009f

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/EditFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NO_FRIENDS_TO_WAZE_WITH:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .end local v0           #nativeManager:Lcom/waze/NativeManager;
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0, v3}, Lcom/waze/navigate/social/EditFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    invoke-direct {p0}, Lcom/waze/navigate/social/EditFriendsActivity;->friendsListPopulateFriends()V

    goto :goto_0
.end method

.method private friendsListPopulateFriends()V
    .locals 6

    .prologue
    .line 194
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;

    invoke-virtual {v0}, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->notifyDataSetInvalidated()V

    .line 200
    :cond_1
    new-instance v0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;

    iget-object v3, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    iget v4, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I

    iget v5, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumRemoved:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;-><init>(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;

    .line 201
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mFriendsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;

    invoke-virtual {v0}, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->notifyDataSetChanged()V

    .line 204
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    invoke-virtual {v0}, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->notifyDataSetInvalidated()V

    .line 207
    :cond_2
    new-instance v0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;-><init>(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    .line 208
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    invoke-virtual {v0}, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->notifyDataSetChanged()V

    .line 211
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v0, p0}, Lcom/waze/autocomplete/ContactsCompletionView;->setTokenListener(Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;)V

    .line 212
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v1, Lcom/waze/navigate/social/EditFriendsActivity$5;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/EditFriendsActivity$5;-><init>(Lcom/waze/navigate/social/EditFriendsActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->setIGetViewForObject(Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;)V

    goto :goto_0
.end method

.method private getFriendsData()V
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 127
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v1, Lcom/waze/navigate/social/EditFriendsActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/waze/navigate/social/EditFriendsActivity$3;-><init>(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getFriendsListData(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 156
    return-void
.end method

.method private inviteClicked()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/share/SpreadTheWordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/social/EditFriendsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 190
    return-void
.end method

.method private reallyRemoveFriend(Lcom/waze/user/PersonBase;)V
    .locals 6
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 394
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToRemove:Lcom/waze/user/PersonBase;

    .line 395
    new-array v0, v4, [I

    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v2

    aput v2, v0, v5

    .line 397
    .local v0, ids:[I
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PS_REMOVED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 398
    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 397
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialRemoveFriends([ILjava/lang/String;)V

    .line 400
    return-void
.end method

.method private removeFriend(Lcom/waze/user/PersonBase;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v3, 0x1

    .line 368
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v8

    .line 371
    .local v8, nativeManager:Lcom/waze/NativeManager;
    new-instance v4, Lcom/waze/navigate/social/EditFriendsActivity$6;

    invoke-direct {v4, p0, p1}, Lcom/waze/navigate/social/EditFriendsActivity$6;-><init>(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/user/PersonBase;)V

    .line 383
    .local v4, onClick:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 384
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_YOU_WANT_TO_REMOVE_PS_FROM_FRIENDS_LISTQ:Lcom/waze/strings/DisplayStrings;

    .line 383
    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 385
    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 382
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, question:Ljava/lang/String;
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 388
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 389
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 390
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_NO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 387
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 391
    return-void
.end method


# virtual methods
.method protected facebookPrivacyClicked()V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    .line 177
    new-instance v1, Lcom/waze/navigate/social/EditFriendsActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/EditFriendsActivity$4;-><init>(Lcom/waze/navigate/social/EditFriendsActivity;)V

    .line 176
    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;)V

    .line 185
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 62
    if-ne p2, v0, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/EditFriendsActivity;->setResult(I)V

    .line 64
    invoke-virtual {p0}, Lcom/waze/navigate/social/EditFriendsActivity;->finish()V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/waze/navigate/social/EditFriendsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 75
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/EditFriendsActivity;->setContentView(I)V

    .line 76
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 78
    .local v0, nativeManager:Lcom/waze/NativeManager;
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/EditFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBarTextButton;

    .line 79
    .local v1, titleBar:Lcom/waze/view/title/TitleBarTextButton;
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_EDIT_FRIENDS:Lcom/waze/strings/DisplayStrings;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, p0, v2, v3}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    .line 81
    new-instance v2, Lcom/waze/navigate/social/EditFriendsActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/navigate/social/EditFriendsActivity$1;-><init>(Lcom/waze/navigate/social/EditFriendsActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBarTextButton;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v2, 0x7f09009b

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/EditFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/autocomplete/ContactsCompletionView;

    iput-object v2, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    .line 90
    iget-object v2, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/autocomplete/ContactsCompletionView;->setHint(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v3, Lcom/waze/navigate/social/EditFriendsActivity$2;

    invoke-direct {v3, p0}, Lcom/waze/navigate/social/EditFriendsActivity$2;-><init>(Lcom/waze/navigate/social/EditFriendsActivity;)V

    invoke-virtual {v2, v3}, Lcom/waze/autocomplete/ContactsCompletionView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 112
    const v2, 0x7f09009c

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/EditFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mFriendsListView:Landroid/widget/ListView;

    .line 114
    invoke-direct {p0}, Lcom/waze/navigate/social/EditFriendsActivity;->getFriendsData()V

    .line 115
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->addFriendsChangedListener(Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;)V

    .line 116
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->removeFriendsChangedListener(Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;)V

    .line 121
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 122
    return-void
.end method

.method public onFriendsChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 492
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToAdd:Lcom/waze/user/PersonBase;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToAdd:Lcom/waze/user/PersonBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToAdd:Lcom/waze/user/PersonBase;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 495
    iget v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I

    .line 496
    iget v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumRemoved:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumRemoved:I

    .line 497
    iput-object v3, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToAdd:Lcom/waze/user/PersonBase;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToRemove:Lcom/waze/user/PersonBase;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToRemove:Lcom/waze/user/PersonBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 501
    iget v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I

    .line 502
    iget v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumRemoved:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumRemoved:I

    .line 503
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I

    iget-object v2, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToRemove:Lcom/waze/user/PersonBase;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 504
    iput-object v3, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mPersonToRemove:Lcom/waze/user/PersonBase;

    .line 506
    :cond_1
    invoke-direct {p0}, Lcom/waze/navigate/social/EditFriendsActivity;->finishedReading()V

    .line 507
    return-void
.end method

.method public onTokenAdded(Ljava/lang/Object;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 404
    iget-object v2, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 405
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 406
    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 407
    .local v0, cb:Landroid/widget/CheckBox;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 409
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method

.method public onTokenRemoved(Ljava/lang/Object;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 413
    iget-object v2, p0, Lcom/waze/navigate/social/EditFriendsActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 414
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 415
    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 416
    .local v0, cb:Landroid/widget/CheckBox;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 418
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method
