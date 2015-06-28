.class public Lcom/waze/navigate/social/MyFriendsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "MyFriendsActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;,
        Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;
    }
.end annotation


# static fields
.field private static final ADD_FRIENDS:I = 0x3e9

.field public static final MY_FRIENDS_REFRESH:I = 0xc9

.field protected static final TIMEOUT_BETWEEN_EVENTS:J = 0x64L

.field private static mShouldAskToAddMoreFriends:Z


# instance fields
.field protected endDriveData:Lcom/waze/navigate/social/EndDriveData;

.field private inflater:Landroid/view/LayoutInflater;

.field private mAcceptedFriendsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/FriendUserData;",
            ">;"
        }
    .end annotation
.end field

.field private mAddFriendDialog:Lcom/waze/social/AddFriendDialog;

.field protected mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

.field private mContactsByUid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendUserDataFilteredArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

.field private mFriendsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mFriendsListData:Lcom/waze/navigate/social/FriendsListData;

.field private mFriendsListView:Landroid/widget/ListView;

.field private mIdsAlreadyInSharedDrive:Landroid/util/SparseBooleanArray;

.field private mPersonArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;

.field private mPreSelected:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mSharedDriveUsers:Lcom/waze/navigate/social/FriendsListData;

.field private mSuggested:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;"
        }
    .end annotation
.end field

.field private nativeManager:Lcom/waze/NativeManager;

.field private searchBox:Lcom/waze/autocomplete/ContactsCompletionView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/navigate/social/MyFriendsActivity;->mShouldAskToAddMoreFriends:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPreSelected:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mSuggested:Landroid/util/SparseArray;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/MyFriendsActivity;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mSuggested:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mAcceptedFriendsArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/navigate/social/MyFriendsActivity;Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mContactsByUid:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$12(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/waze/navigate/social/MyFriendsActivity;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mContactsByUid:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$14(Lcom/waze/navigate/social/MyFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->readDone()V

    return-void
.end method

.method static synthetic access$15(Lcom/waze/navigate/social/MyFriendsActivity;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mIdsAlreadyInSharedDrive:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$16(Lcom/waze/navigate/social/MyFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->getAddressBookAndFriendsData()V

    return-void
.end method

.method static synthetic access$17(Lcom/waze/navigate/social/MyFriendsActivity;Landroid/util/SparseBooleanArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mIdsAlreadyInSharedDrive:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static synthetic access$18(Lcom/waze/navigate/social/MyFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->readFriendListData()V

    return-void
.end method

.method static synthetic access$19(Lcom/waze/navigate/social/MyFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->readSharedDriveUsers()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$20(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/social/AddFriendDialog;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mAddFriendDialog:Lcom/waze/social/AddFriendDialog;

    return-object v0
.end method

.method static synthetic access$21(Z)V
    .locals 0
    .parameter

    .prologue
    .line 88
    sput-boolean p0, Lcom/waze/navigate/social/MyFriendsActivity;->mShouldAskToAddMoreFriends:Z

    return-void
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/waze/navigate/social/MyFriendsActivity;->mShouldAskToAddMoreFriends:Z

    return v0
.end method

.method static synthetic access$4(Lcom/waze/navigate/social/MyFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->askToAddMoreFriends()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/navigate/social/MyFriendsActivity;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 646
    invoke-direct {p0, p1}, Lcom/waze/navigate/social/MyFriendsActivity;->userSelected(Lcom/waze/user/PersonBase;)V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/autocomplete/ContactsCompletionView;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->searchBox:Lcom/waze/autocomplete/ContactsCompletionView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendUserDataFilteredArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/waze/navigate/social/MyFriendsActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$9(Lcom/waze/navigate/social/MyFriendsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    return-void
.end method

.method private askToAddMoreFriends()V
    .locals 6

    .prologue
    .line 869
    sget-boolean v0, Lcom/waze/navigate/social/MyFriendsActivity;->mShouldAskToAddMoreFriends:Z

    if-nez v0, :cond_0

    .line 896
    :goto_0
    return-void

    .line 872
    :cond_0
    new-instance v0, Lcom/waze/social/AddFriendDialog;

    .line 873
    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_WAZE_IS_MORE_FUN_WITH_FRIENDSE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 874
    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ADD_MORE_PEOPLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 875
    const v4, 0x7f020172

    .line 876
    new-instance v5, Lcom/waze/navigate/social/MyFriendsActivity$11;

    invoke-direct {v5, p0}, Lcom/waze/navigate/social/MyFriendsActivity$11;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;)V

    move-object v1, p0

    .line 872
    invoke-direct/range {v0 .. v5}, Lcom/waze/social/AddFriendDialog;-><init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;Ljava/lang/String;ILcom/waze/social/AddFriendDialog$IAddFriendDialog;)V

    .line 871
    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mAddFriendDialog:Lcom/waze/social/AddFriendDialog;

    .line 895
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mAddFriendDialog:Lcom/waze/social/AddFriendDialog;

    invoke-virtual {v0}, Lcom/waze/social/AddFriendDialog;->show()V

    goto :goto_0
.end method

.method private friendsListPopulateFriends()V
    .locals 4

    .prologue
    const v3, 0x7f09040d

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 427
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 430
    invoke-virtual {p0, v3}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    const v0, 0x7f09040e

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 432
    const-string v1, "moods/sad.bin"

    invoke-static {v1}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 431
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    const v0, 0x7f09040f

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 434
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NO_FRIENDS_TO_WAZE_WITH:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 439
    invoke-virtual {p0, v3}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    new-instance v0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;Lcom/waze/ifs/ui/ActivityBase;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;

    .line 442
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 443
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;

    invoke-virtual {v0}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->notifyDataSetChanged()V

    .line 445
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 447
    new-instance v0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;-><init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;)V

    .line 446
    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendUserDataFilteredArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    .line 452
    :goto_1
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->searchBox:Lcom/waze/autocomplete/ContactsCompletionView;

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendUserDataFilteredArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 450
    :cond_2
    new-instance v0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;-><init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;)V

    .line 449
    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendUserDataFilteredArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    goto :goto_1
.end method

.method private getAddressBookAndFriendsData()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/waze/navigate/social/MyFriendsActivity$4;

    invoke-direct {v0, p0}, Lcom/waze/navigate/social/MyFriendsActivity$4;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;)V

    invoke-static {v0}, Lcom/waze/phone/AddressBook;->GetPersonArrayWithMapping(Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;)V

    .line 217
    return-void
.end method

.method public static nameContains(Lcom/waze/user/PersonBase;Ljava/lang/String;)Z
    .locals 5
    .parameter "p"
    .parameter "mask"

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x1

    .line 764
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 765
    invoke-virtual {p0}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 775
    :cond_0
    :goto_0
    return v2

    .line 769
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 770
    .local v1, spaceInd:I
    :goto_1
    if-gez v1, :cond_2

    .line 775
    const/4 v2, 0x0

    goto :goto_0

    .line 771
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 773
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    goto :goto_1
.end method

.method private readDone()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->friendsListPopulateFriends()V

    .line 223
    :cond_0
    return-void
.end method

.method private readFriendListData()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 244
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v1, Lcom/waze/navigate/social/MyFriendsActivity$5;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/MyFriendsActivity$5;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getFriendsListData(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 341
    return-void
.end method

.method private readFriendSuggestions()V
    .locals 2

    .prologue
    .line 380
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 381
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v1, Lcom/waze/navigate/social/MyFriendsActivity$7;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/MyFriendsActivity$7;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getAddFriendsData(Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;)V

    .line 398
    return-void
.end method

.method private readSharedDriveUsers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 344
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 345
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    const/4 v1, 0x0

    .line 346
    new-instance v2, Lcom/waze/navigate/social/MyFriendsActivity$6;

    invoke-direct {v2, p0}, Lcom/waze/navigate/social/MyFriendsActivity$6;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;)V

    .line 345
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getUsersWithDriveSharing(ZZZLcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 377
    return-void
.end method

.method private setupPromoBox()V
    .locals 7

    .prologue
    .line 784
    const v5, 0x7f0902ea

    invoke-virtual {p0, v5}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 786
    .local v2, promoLayout:Landroid/view/View;
    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v5}, Lcom/waze/NativeManager;->wasFriendsListBannerDismissed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 788
    const v5, 0x7f09040b

    invoke-virtual {p0, v5}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 790
    .local v3, searchBox:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 791
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x3

    const v6, 0x7f090409

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 792
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 866
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #searchBox:Landroid/view/View;
    :goto_0
    return-void

    .line 798
    :cond_0
    const v5, 0x7f09040a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 799
    .local v0, closeButton:Landroid/view/View;
    const v5, 0x7f0902ec

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 800
    .local v4, tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 801
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_TRY_DRIVE_SHARING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 800
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    new-instance v5, Lcom/waze/navigate/social/MyFriendsActivity$9;

    invoke-direct {v5, p0, v2}, Lcom/waze/navigate/social/MyFriendsActivity$9;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    new-instance v5, Lcom/waze/navigate/social/MyFriendsActivity$10;

    invoke-direct {v5, p0}, Lcom/waze/navigate/social/MyFriendsActivity$10;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private userSelected(Lcom/waze/user/PersonBase;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 647
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/share/UserDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 648
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FriendUserData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 649
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/social/MyFriendsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 650
    return-void
.end method


# virtual methods
.method protected facebookPrivacyClicked()V
    .locals 2

    .prologue
    .line 415
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    .line 416
    new-instance v1, Lcom/waze/navigate/social/MyFriendsActivity$8;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/MyFriendsActivity$8;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;)V

    .line 415
    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;)V

    .line 424
    return-void
.end method

.method public getFriendsList()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;

    invoke-virtual {v0}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->notifyDataSetInvalidated()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;

    .line 237
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mAcceptedFriendsArray:Ljava/util/ArrayList;

    .line 239
    invoke-direct {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->readFriendSuggestions()V

    .line 240
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 92
    if-ne p2, v0, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/MyFriendsActivity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->finish()V

    .line 98
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    return-void

    .line 95
    :cond_1
    const/16 v0, 0xc9

    if-ne p2, v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->getFriendsList()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f090409

    .line 103
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 105
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-virtual {v0}, Lcom/waze/utils/ImageRepository;->initExecutor()V

    .line 107
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/MyFriendsActivity;->setContentView(I)V

    .line 109
    const-string v0, "FRIENDS_LIST"

    invoke-static {v0, v2, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 113
    invoke-virtual {p0, v4}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleButtonBar;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 114
    const-string v2, "FRIENDS"

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f02000d

    .line 113
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/waze/view/title/TitleButtonBar;->init(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 116
    invoke-virtual {p0, v4}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleButtonBar;

    .line 117
    new-instance v1, Lcom/waze/navigate/social/MyFriendsActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/MyFriendsActivity$1;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleButtonBar;->setButtonTwoListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/MyFriendsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->inflater:Landroid/view/LayoutInflater;

    .line 128
    const v0, 0x7f09040c

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsListView:Landroid/widget/ListView;

    .line 130
    invoke-direct {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->setupPromoBox()V

    .line 132
    const v0, 0x7f09040b

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/autocomplete/ContactsCompletionView;

    iput-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->searchBox:Lcom/waze/autocomplete/ContactsCompletionView;

    .line 134
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->searchBox:Lcom/waze/autocomplete/ContactsCompletionView;

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->setHint(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->searchBox:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v1, Lcom/waze/navigate/social/MyFriendsActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/MyFriendsActivity$2;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 150
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->searchBox:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v1, Lcom/waze/navigate/social/MyFriendsActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/MyFriendsActivity$3;-><init>(Lcom/waze/navigate/social/MyFriendsActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->setIGetViewForObject(Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;)V

    .line 172
    invoke-virtual {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->getFriendsList()V

    .line 173
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->addFriendsChangedListener(Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;)V

    .line 174
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->removeFriendsChangedListener(Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;)V

    .line 410
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-virtual {v0}, Lcom/waze/utils/ImageRepository;->endExecutor()V

    .line 411
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 412
    return-void
.end method

.method public onFriendsChanged()V
    .locals 0

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/waze/navigate/social/MyFriendsActivity;->getFriendsList()V

    .line 781
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 404
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->searchBox:Lcom/waze/autocomplete/ContactsCompletionView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 229
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 230
    return-void
.end method
