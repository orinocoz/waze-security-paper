.class public Lcom/waze/navigate/social/ShareDriveActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ShareDriveActivity.java"

# interfaces
.implements Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/waze/ifs/ui/ActivityBase;",
        "Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static USE_PEOPLE_APP_DATA:Z

.field public static bIsFollow:Z

.field private static mAskToAddFriend:Z


# instance fields
.field private mAddFriendDialog:Lcom/waze/social/AddFriendDialog;

.field private mAddress:Lcom/waze/navigate/AddressItem;

.field private mAskToAdd:Lcom/waze/user/PersonBase;

.field private mAskToAddData:Lcom/waze/NativeManager$PeopleAppData;

.field private mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

.field private mCompletionViewContainer:Landroid/view/View;

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

.field private mCurFriendsUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/waze/user/FriendUserData;",
            ">;"
        }
    .end annotation
.end field

.field private mDensity:F

.field private mDoneBtn:Landroid/widget/TextView;

.field private mDoneButtonActive:Z

.field private mDontScroll:Z

.field private mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

.field private mFriendsListView:Landroid/widget/ListView;

.field private mIsPortrait:Z

.field private mListHeaderMapDetailsView:Landroid/view/View;

.field private mListHeaderSeachBoxView:Landroid/view/View;

.field private mListHeaderView:Landroid/view/View;

.field private mLocContHeight:I

.field private mLocation:Lcom/waze/main/navigate/LocationData;

.field private mMapView:Lcom/waze/MapView;

.field private mMoreBtn:Landroid/view/View;

.field private mNatMgr:Lcom/waze/NativeManager;

.field private final mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

.field private mNumSuggestions:I

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

.field private mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

.field private mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

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

.field private mSearchScroll:Landroid/widget/HorizontalScrollView;

.field private mShareDetailsView:Landroid/view/View;

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

.field private mTitleBar:Lcom/waze/view/title/TitleBar;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    const-class v0, Lcom/waze/navigate/social/ShareDriveActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/navigate/social/ShareDriveActivity;->TAG:Ljava/lang/String;

    .line 84
    sput-boolean v1, Lcom/waze/navigate/social/ShareDriveActivity;->USE_PEOPLE_APP_DATA:Z

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/navigate/social/ShareDriveActivity;->bIsFollow:Z

    .line 100
    sput-boolean v1, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddFriend:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 87
    iput-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mUrl:Ljava/lang/String;

    .line 88
    iput v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mType:I

    .line 90
    iput-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    .line 91
    iput-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAddress:Lcom/waze/navigate/AddressItem;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPreSelected:Landroid/util/SparseArray;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mSuggested:Landroid/util/SparseArray;

    .line 116
    iput-boolean v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDontScroll:Z

    .line 119
    iput-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddData:Lcom/waze/NativeManager$PeopleAppData;

    .line 120
    iput-boolean v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneButtonActive:Z

    .line 123
    new-instance v0, Lcom/waze/navigate/social/ShareDriveActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/social/ShareDriveActivity$1;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/navigate/social/ShareDriveActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDensity:F

    return v0
.end method

.method static synthetic access$12(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->openKeyboard()V

    return-void
.end method

.method static synthetic access$13(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mSearchScroll:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/waze/navigate/social/ShareDriveActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDontScroll:Z

    return v0
.end method

.method static synthetic access$15(Lcom/waze/navigate/social/ShareDriveActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDontScroll:Z

    return-void
.end method

.method static synthetic access$16(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->onScrollChanged()V

    return-void
.end method

.method static synthetic access$17(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->loadPersonArray()V

    return-void
.end method

.method static synthetic access$18(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$19(Lcom/waze/navigate/social/ShareDriveActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput p1, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocContHeight:I

    return-void
.end method

.method static synthetic access$2(Lcom/waze/navigate/social/ShareDriveActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mIsPortrait:Z

    return v0
.end method

.method static synthetic access$20(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderMapDetailsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$21(Lcom/waze/navigate/social/ShareDriveActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 117
    iget v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocContHeight:I

    return v0
.end method

.method static synthetic access$22(Lcom/waze/navigate/social/ShareDriveActivity;Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCurFriendsUids:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$23(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCurFriendsUids:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$24(Lcom/waze/navigate/social/ShareDriveActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput p1, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNumSuggestions:I

    return-void
.end method

.method static synthetic access$25(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->friendsListPopulateFriends()V

    return-void
.end method

.method static synthetic access$26(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->setDoneButtonClickableOrNot()V

    return-void
.end method

.method static synthetic access$27(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/social/AddFriendDialog;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAddFriendDialog:Lcom/waze/social/AddFriendDialog;

    return-object v0
.end method

.method static synthetic access$28(Z)V
    .locals 0
    .parameter

    .prologue
    .line 100
    sput-boolean p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddFriend:Z

    return-void
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddFriend:Z

    return v0
.end method

.method static synthetic access$4(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/user/PersonBase;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAdd:Lcom/waze/user/PersonBase;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/navigate/social/ShareDriveActivity;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 661
    invoke-direct {p0, p1}, Lcom/waze/navigate/social/ShareDriveActivity;->askToAddAFriend(Lcom/waze/user/PersonBase;)V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/autocomplete/ContactsCompletionView;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->closeKeyboard()V

    return-void
.end method

.method private askToAddAFriend(Lcom/waze/user/PersonBase;)V
    .locals 4
    .parameter "askToAdd"

    .prologue
    .line 662
    sget-boolean v0, Lcom/waze/navigate/social/ShareDriveActivity;->USE_PEOPLE_APP_DATA:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddData:Lcom/waze/NativeManager$PeopleAppData;

    if-nez v0, :cond_1

    .line 664
    new-instance v0, Lcom/waze/NativeManager$PeopleAppData;

    invoke-direct {v0}, Lcom/waze/NativeManager$PeopleAppData;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddData:Lcom/waze/NativeManager$PeopleAppData;

    .line 665
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddData:Lcom/waze/NativeManager$PeopleAppData;

    const/4 v1, 0x1

    iput v1, v0, Lcom/waze/NativeManager$PeopleAppData;->friendship_suggest_count:I

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v1

    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddData:Lcom/waze/NativeManager$PeopleAppData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/NativeManager;->setPeopleAppDataNTV(IZLcom/waze/NativeManager$PeopleAppData;)V

    .line 672
    :cond_0
    new-instance v0, Lcom/waze/social/AddFriendDialog;

    new-instance v1, Lcom/waze/navigate/social/ShareDriveActivity$18;

    invoke-direct {v1, p0, p1}, Lcom/waze/navigate/social/ShareDriveActivity$18;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;Lcom/waze/user/PersonBase;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/waze/social/AddFriendDialog;-><init>(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/user/PersonBase;Lcom/waze/social/AddFriendDialog$IAddFriendDialog;)V

    iput-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAddFriendDialog:Lcom/waze/social/AddFriendDialog;

    .line 712
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAddFriendDialog:Lcom/waze/social/AddFriendDialog;

    new-instance v1, Lcom/waze/navigate/social/ShareDriveActivity$19;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/ShareDriveActivity$19;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/social/AddFriendDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 720
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAddFriendDialog:Lcom/waze/social/AddFriendDialog;

    invoke-virtual {v0}, Lcom/waze/social/AddFriendDialog;->show()V

    .line 721
    return-void

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddData:Lcom/waze/NativeManager$PeopleAppData;

    iget v1, v0, Lcom/waze/NativeManager$PeopleAppData;->friendship_suggest_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/waze/NativeManager$PeopleAppData;->friendship_suggest_count:I

    goto :goto_0
.end method

.method private closeKeyboard()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setCloseText(Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setCloseVisibility(Z)V

    .line 919
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-static {p0, v0}, Lcom/waze/utils/EditTextUtils;->closeKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 920
    return-void
.end method

.method private friendsListPopulateFriends()V
    .locals 6

    .prologue
    .line 820
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArray:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 837
    :cond_0
    return-void

    .line 824
    :cond_1
    new-instance v2, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArray:Ljava/util/ArrayList;

    iget v4, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNumSuggestions:I

    const/4 v5, 0x1

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;-><init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;IZ)V

    iput-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    .line 825
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    const v3, -0x120a09

    const v4, -0x777778

    invoke-virtual {v2, v3, v4}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->setHeaderColors(II)V

    .line 826
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 827
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 829
    new-instance v2, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArray:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;-><init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;)V

    iput-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

    .line 830
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

    invoke-virtual {v2, v3}, Lcom/waze/autocomplete/ContactsCompletionView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 831
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v2, p0}, Lcom/waze/autocomplete/ContactsCompletionView;->setTokenListener(Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;)V

    .line 833
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v2}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, o:Ljava/lang/Object;
    move-object v1, v0

    .line 834
    check-cast v1, Lcom/waze/user/PersonBase;

    .line 835
    .local v1, p:Lcom/waze/user/PersonBase;
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    invoke-virtual {v1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->setSelected(I)V

    goto :goto_0
.end method

.method private loadPersonArray()V
    .locals 4

    .prologue
    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArray:Ljava/util/ArrayList;

    .line 486
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPreSelected:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mSuggested:Landroid/util/SparseArray;

    .line 487
    new-instance v3, Lcom/waze/navigate/social/ShareDriveActivity$16;

    invoke-direct {v3, p0}, Lcom/waze/navigate/social/ShareDriveActivity$16;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    .line 486
    invoke-static {v0, v1, v2, v3}, Lcom/waze/navigate/social/AddFromActivity;->getFriendsDataFromShare(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;)V

    .line 500
    return-void
.end method

.method private onScrollChanged()V
    .locals 10

    .prologue
    const/16 v9, -0x32

    const/4 v8, 0x0

    const/high16 v7, -0x3db8

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    .line 503
    iget-object v5, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 504
    .local v3, v:Landroid/view/View;
    const v5, 0x7f090690

    invoke-virtual {p0, v5}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 505
    .local v1, shadow:Landroid/view/View;
    if-nez v3, :cond_1

    move v2, v4

    .line 507
    .local v2, top:I
    :goto_0
    iget-boolean v5, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mIsPortrait:Z

    if-nez v5, :cond_3

    .line 508
    if-lt v2, v9, :cond_0

    iget-object v4, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-lez v4, :cond_2

    .line 509
    :cond_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 536
    :goto_1
    return-void

    .line 505
    .end local v2           #top:I
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    .line 511
    .restart local v2       #top:I
    :cond_2
    int-to-float v4, v2

    div-float/2addr v4, v7

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 518
    :cond_3
    iget-object v5, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    if-nez v5, :cond_6

    .line 519
    iget-object v5, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderSeachBoxView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int v0, v5, v2

    .line 520
    .local v0, realTop:I
    iget-object v5, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionViewContainer:Landroid/view/View;

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 522
    if-lez v0, :cond_4

    .line 523
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 524
    :cond_4
    if-ge v0, v9, :cond_5

    .line 525
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 527
    :cond_5
    int-to-float v4, v0

    div-float/2addr v4, v7

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 533
    .end local v0           #realTop:I
    :cond_6
    iget-object v4, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionViewContainer:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 534
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method private openKeyboard()V
    .locals 4

    .prologue
    .line 904
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-static {p0, v0}, Lcom/waze/utils/EditTextUtils;->openKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 905
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_OK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setCloseText(Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    const/16 v1, 0x72

    const/16 v2, 0xd2

    const/16 v3, 0xee

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/view/title/TitleBar;->setCloseTextColor(III)V

    .line 907
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    new-instance v1, Lcom/waze/navigate/social/ShareDriveActivity$21;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/ShareDriveActivity$21;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 914
    return-void
.end method

.method private setDoneButtonClickableOrNot()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x12c

    const/high16 v12, 0x3f80

    const/high16 v11, 0x3f00

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 733
    const/4 v2, 0x1

    .line 734
    .local v2, isEmpty:Z
    iget-object v7, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v7}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v4

    .line 735
    .local v4, selected:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v4, :cond_0

    .line 736
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 739
    :cond_0
    :goto_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 741
    .local v3, nm:Lcom/waze/NativeManager;
    iget-object v7, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v8, Lcom/waze/navigate/social/ShareDriveActivity$20;

    invoke-direct {v8, p0}, Lcom/waze/navigate/social/ShareDriveActivity$20;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    .line 749
    const-wide/16 v9, 0xa

    .line 741
    invoke-virtual {v7, v8, v9, v10}, Lcom/waze/autocomplete/ContactsCompletionView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 751
    iget-boolean v8, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneButtonActive:Z

    if-eqz v2, :cond_3

    move v7, v6

    :goto_1
    if-ne v8, v7, :cond_4

    .line 752
    iget-boolean v5, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneButtonActive:Z

    if-eqz v5, :cond_1

    .line 753
    invoke-direct {p0, v4, v3}, Lcom/waze/navigate/social/ShareDriveActivity;->setDoneText(Ljava/util/List;Lcom/waze/NativeManager;)V

    .line 785
    :cond_1
    :goto_2
    return-void

    .end local v3           #nm:Lcom/waze/NativeManager;
    :cond_2
    move v2, v6

    .line 736
    goto :goto_0

    .restart local v3       #nm:Lcom/waze/NativeManager;
    :cond_3
    move v7, v5

    .line 751
    goto :goto_1

    .line 757
    :cond_4
    if-eqz v2, :cond_5

    move v7, v6

    :goto_3
    iput-boolean v7, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneButtonActive:Z

    .line 758
    iget-object v7, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneBtn:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 760
    const v6, 0x7f090227

    invoke-virtual {p0, v6}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    .line 762
    .local v1, flip:Landroid/widget/ViewFlipper;
    if-eqz v2, :cond_7

    .line 764
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneBtn:Landroid/widget/TextView;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_SEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v12, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 767
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v13, v14}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 768
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 769
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 770
    iget-object v5, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 772
    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_2

    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    .end local v1           #flip:Landroid/widget/ViewFlipper;
    :cond_5
    move v7, v5

    .line 757
    goto :goto_3

    :cond_6
    move v6, v5

    .line 758
    goto :goto_4

    .line 775
    .restart local v1       #flip:Landroid/widget/ViewFlipper;
    :cond_7
    invoke-direct {p0, v4, v3}, Lcom/waze/navigate/social/ShareDriveActivity;->setDoneText(Ljava/util/List;Lcom/waze/NativeManager;)V

    .line 777
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 778
    .restart local v0       #animation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v13, v14}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 779
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 780
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 781
    iget-object v5, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 783
    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_2
.end method

.method private setDoneText(Ljava/util/List;Lcom/waze/NativeManager;)V
    .locals 7
    .parameter
    .parameter "nm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/waze/NativeManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, selected:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 788
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 790
    .local v1, numSelected:I
    if-ne v1, v4, :cond_0

    .line 791
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/user/PersonBase;

    .line 793
    .local v2, p:Lcom/waze/user/PersonBase;
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SEND_LOCATION_SEND_TO_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {p2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 794
    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/waze/share/ShareUtility;->getFirstName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 793
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .end local v2           #p:Lcom/waze/user/PersonBase;
    .local v0, buttonText:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    return-void

    .line 797
    .end local v0           #buttonText:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SEND_LOCATION_SEND_TO_PD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {p2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 798
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 797
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .restart local v0       #buttonText:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method SendMeeting()V
    .locals 22

    .prologue
    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v2}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v21

    .line 603
    .local v21, selected:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v21, :cond_0

    .line 604
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/social/ShareDriveActivity;->setResult(I)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/social/ShareDriveActivity;->finish()V

    .line 659
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [I

    .line 609
    .local v6, addUids:[I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    .line 610
    .local v7, invitePhones:[Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    new-array v8, v2, [I

    .line 611
    .local v8, inviteIds:[I
    const/4 v9, 0x0

    .line 612
    .local v9, numAdd:I
    const/4 v10, 0x0

    .line 613
    .local v10, numInvite:I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    new-array v12, v2, [Ljava/lang/String;

    .line 614
    .local v12, wazesPhones:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 616
    .local v3, Type:Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 631
    if-gtz v9, :cond_1

    if-lez v10, :cond_3

    .line 632
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mType:I

    if-nez v2, :cond_6

    .line 633
    const-string v2, "SHARE_DRIVE_SENT"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v3, "ShareDrive"

    .line 640
    :goto_2
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->GetLastShareURL()Ljava/lang/String;

    move-result-object v20

    .line 642
    .local v20, sURL:Ljava/lang/String;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 643
    .local v1, nm:Lcom/waze/NativeManager;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mType:I

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/waze/NativeManager;->isFollowActiveNTV()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v20, :cond_7

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 644
    if-lez v9, :cond_2

    .line 645
    const/4 v2, 0x0

    invoke-virtual {v1, v6, v9, v12, v2}, Lcom/waze/NativeManager;->AddToMeeting([II[Ljava/lang/Object;Z)V

    .line 647
    :cond_2
    if-lez v10, :cond_3

    .line 648
    const/4 v2, 0x4

    invoke-virtual {v1, v7, v8, v10, v2}, Lcom/waze/NativeManager;->InviteToMeeting([Ljava/lang/Object;[III)V

    .line 657
    .end local v1           #nm:Lcom/waze/NativeManager;
    .end local v20           #sURL:Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/social/ShareDriveActivity;->setResult(I)V

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/social/ShareDriveActivity;->finish()V

    goto :goto_0

    .line 616
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .local v18, o:Ljava/lang/Object;
    move-object/from16 v19, v18

    .line 617
    check-cast v19, Lcom/waze/user/PersonBase;

    .line 618
    .local v19, p:Lcom/waze/user/PersonBase;
    invoke-virtual/range {v19 .. v19}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v4

    if-nez v4, :cond_5

    .line 620
    invoke-virtual/range {v19 .. v19}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v10

    .line 621
    invoke-virtual/range {v19 .. v19}, Lcom/waze/user/PersonBase;->getID()I

    move-result v4

    aput v4, v8, v10

    .line 622
    add-int/lit8 v10, v10, 0x1

    .line 623
    goto :goto_1

    .line 624
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v9

    .line 626
    invoke-virtual/range {v19 .. v19}, Lcom/waze/user/PersonBase;->getID()I

    move-result v4

    aput v4, v6, v9

    .line 627
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 636
    .end local v18           #o:Ljava/lang/Object;
    .end local v19           #p:Lcom/waze/user/PersonBase;
    :cond_6
    const-string v2, "SHARE_LOCATION_SENT"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v3, "ShareLocation"

    goto :goto_2

    .line 651
    .restart local v1       #nm:Lcom/waze/NativeManager;
    .restart local v20       #sURL:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->locationName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    iget v4, v4, Lcom/waze/main/navigate/LocationData;->locationX:I

    .line 652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    iget v5, v5, Lcom/waze/main/navigate/LocationData;->locationY:I

    const/4 v11, 0x1

    .line 653
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    iget-object v13, v13, Lcom/waze/main/navigate/LocationData;->mStreet:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    iget-object v14, v14, Lcom/waze/main/navigate/LocationData;->mCity:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/waze/main/navigate/LocationData;->mVenueId:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 651
    invoke-virtual/range {v1 .. v17}, Lcom/waze/NativeManager;->CreateMeetingBulk(Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;[IIIZ[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_3
.end method

.method public SendURL(Ljava/lang/String;)V
    .locals 4
    .parameter "URL"

    .prologue
    const/4 v3, 0x1

    .line 805
    sput-boolean v3, Lcom/waze/navigate/social/ShareDriveActivity;->bIsFollow:Z

    .line 806
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    .local v0, i:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const-string v1, "exit_on_sent"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 815
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SHARE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 815
    const/16 v2, 0xfa0

    .line 813
    invoke-virtual {p0, v1, v2}, Lcom/waze/navigate/social/ShareDriveActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 816
    return-void
.end method

.method canAskToAdd()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 569
    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAdd:Lcom/waze/user/PersonBase;

    .line 571
    iget-object v7, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v7}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v4

    .line 572
    .local v4, selected:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    move v5, v6

    .line 598
    :goto_1
    return v5

    .line 572
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    move-object v3, v2

    .line 573
    check-cast v3, Lcom/waze/user/PersonBase;

    .line 574
    .local v3, p:Lcom/waze/user/PersonBase;
    const/4 v1, 0x0

    .line 576
    .local v1, isMyFriend:Z
    const/4 v0, 0x0

    .line 577
    .local v0, fud:Lcom/waze/user/FriendUserData;
    instance-of v8, v3, Lcom/waze/user/FriendUserData;

    if-eqz v8, :cond_6

    move-object v0, v3

    .line 578
    check-cast v0, Lcom/waze/user/FriendUserData;

    .line 583
    :goto_2
    if-eqz v0, :cond_3

    .line 584
    iget-boolean v8, v0, Lcom/waze/user/FriendUserData;->mIsFriend:Z

    if-nez v8, :cond_2

    iget-boolean v8, v0, Lcom/waze/user/FriendUserData;->mIsPendingFriend:Z

    if-eqz v8, :cond_7

    :cond_2
    iget-boolean v8, v0, Lcom/waze/user/FriendUserData;->mIsPendingMy:Z

    if-nez v8, :cond_7

    move v1, v5

    .line 587
    :cond_3
    :goto_3
    if-nez v1, :cond_0

    .line 588
    sget-boolean v8, Lcom/waze/navigate/social/ShareDriveActivity;->USE_PEOPLE_APP_DATA:Z

    if-eqz v8, :cond_4

    .line 589
    iget-object v8, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getID()I

    move-result v9

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/waze/NativeManager;->getPeopleAppDataNTV(IZ)Lcom/waze/NativeManager$PeopleAppData;

    move-result-object v8

    iput-object v8, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddData:Lcom/waze/NativeManager$PeopleAppData;

    .line 591
    :cond_4
    iget-object v8, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddData:Lcom/waze/NativeManager$PeopleAppData;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddData:Lcom/waze/NativeManager$PeopleAppData;

    iget v8, v8, Lcom/waze/NativeManager$PeopleAppData;->friendship_suggest_count:I

    if-nez v8, :cond_8

    .line 592
    :cond_5
    iput-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAdd:Lcom/waze/user/PersonBase;

    goto :goto_1

    .line 580
    :cond_6
    iget-object v8, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCurFriendsUids:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getID()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fud:Lcom/waze/user/FriendUserData;
    check-cast v0, Lcom/waze/user/FriendUserData;

    .restart local v0       #fud:Lcom/waze/user/FriendUserData;
    goto :goto_2

    :cond_7
    move v1, v6

    .line 584
    goto :goto_3

    .line 595
    :cond_8
    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAddData:Lcom/waze/NativeManager$PeopleAppData;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 726
    sget-boolean v0, Lcom/waze/navigate/social/ShareDriveActivity;->bIsFollow:Z

    if-nez v0, :cond_0

    .line 727
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->StopFollow()V

    .line 729
    :cond_0
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 730
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super/range {p0 .. p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    iput v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDensity:F

    .line 156
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    const/4 v11, 0x1

    .line 155
    :goto_0
    iput-boolean v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mIsPortrait:Z

    .line 158
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v11

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    .line 159
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v11

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 161
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->requestWindowFeature(I)Z

    .line 162
    const v11, 0x7f0300fe

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->setContentView(I)V

    .line 164
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    invoke-virtual {v11}, Lcom/waze/NativeManager;->isFollowActiveNTV()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 165
    const/4 v11, 0x1

    sput-boolean v11, Lcom/waze/navigate/social/ShareDriveActivity;->bIsFollow:Z

    .line 171
    :goto_1
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "FriendUserDataList"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 172
    .local v4, friendsData:Ljava/io/Serializable;
    instance-of v11, v4, Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    move-object v1, v4

    .line 173
    check-cast v1, Ljava/util/ArrayList;

    .line 174
    .local v1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_9

    .line 181
    .end local v1           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    :cond_1
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "selected"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 182
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mSuggested:Landroid/util/SparseArray;

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPreSelected:Landroid/util/SparseArray;

    .line 183
    new-instance v11, Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mSuggested:Landroid/util/SparseArray;

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "link"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mUrl:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "type"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mType:I

    .line 188
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "LocationData"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/waze/main/navigate/LocationData;

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    .line 189
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AddressItem"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/waze/navigate/AddressItem;

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAddress:Lcom/waze/navigate/AddressItem;

    .line 191
    const v11, 0x7f090685

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mShareDetailsView:Landroid/view/View;

    .line 192
    const v11, 0x7f090689

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/waze/MapView;

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mMapView:Lcom/waze/MapView;

    .line 193
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mMapView:Lcom/waze/MapView;

    iget-object v12, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v11, v12}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 194
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mMapView:Lcom/waze/MapView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 196
    const v11, 0x7f09068c

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneBtn:Landroid/widget/TextView;

    .line 197
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneBtn:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_SEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneBtn:Landroid/widget/TextView;

    new-instance v12, Lcom/waze/navigate/social/ShareDriveActivity$2;

    invoke-direct {v12, p0}, Lcom/waze/navigate/social/ShareDriveActivity$2;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneBtn:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setClickable(Z)V

    .line 212
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f00

    invoke-direct {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 213
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v11, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 214
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 215
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDoneBtn:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    const v11, 0x7f090224

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 218
    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_SELECT_CONTACTS_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    .line 217
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    const v11, 0x7f09068e

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionViewContainer:Landroid/view/View;

    .line 220
    const v11, 0x7f090225

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/HorizontalScrollView;

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mSearchScroll:Landroid/widget/HorizontalScrollView;

    .line 221
    const v11, 0x7f090226

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/waze/autocomplete/ContactsCompletionView;

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    .line 222
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    iget-object v12, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 223
    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    .line 222
    invoke-virtual {v11, v12}, Lcom/waze/autocomplete/ContactsCompletionView;->setHint(Ljava/lang/CharSequence;)V

    .line 224
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-gt v11, v12, :cond_3

    .line 225
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const-string v13, "#cbd6da"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v11, v12}, Lcom/waze/autocomplete/ContactsCompletionView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :cond_3
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/waze/autocomplete/ContactsCompletionView;->allowDuplicates(Z)V

    .line 228
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    const v12, 0x7f09068e

    invoke-virtual {v11, v12}, Lcom/waze/autocomplete/ContactsCompletionView;->setDropDownAnchor(I)V

    .line 229
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v12, Lcom/waze/navigate/social/ShareDriveActivity$3;

    invoke-direct {v12, p0}, Lcom/waze/navigate/social/ShareDriveActivity$3;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v11, v12}, Lcom/waze/autocomplete/ContactsCompletionView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 249
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v12, Lcom/waze/navigate/social/ShareDriveActivity$4;

    invoke-direct {v12, p0}, Lcom/waze/navigate/social/ShareDriveActivity$4;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v11, v12}, Lcom/waze/autocomplete/ContactsCompletionView;->setIOnBackPressed(Lcom/waze/autocomplete/ContactsCompletionView$IOnBackPressed;)V

    .line 256
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v12, Lcom/waze/navigate/social/ShareDriveActivity$5;

    invoke-direct {v12, p0}, Lcom/waze/navigate/social/ShareDriveActivity$5;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v11, v12}, Lcom/waze/autocomplete/ContactsCompletionView;->setIGetViewForObject(Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;)V

    .line 280
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v12, Lcom/waze/navigate/social/ShareDriveActivity$6;

    invoke-direct {v12, p0}, Lcom/waze/navigate/social/ShareDriveActivity$6;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v11, v12}, Lcom/waze/autocomplete/ContactsCompletionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v11}, Lcom/waze/autocomplete/ContactsCompletionView;->requestFocus()Z

    .line 294
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionViewContainer:Landroid/view/View;

    new-instance v12, Lcom/waze/navigate/social/ShareDriveActivity$7;

    invoke-direct {v12, p0}, Lcom/waze/navigate/social/ShareDriveActivity$7;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const v11, 0x7f090228

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lcom/waze/navigate/social/ShareDriveActivity$8;

    invoke-direct {v12, p0}, Lcom/waze/navigate/social/ShareDriveActivity$8;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v11, 0x7f09068d

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    .line 315
    const v11, 0x7f090691

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderView:Landroid/view/View;

    .line 316
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderView:Landroid/view/View;

    const v12, 0x7f090692

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderMapDetailsView:Landroid/view/View;

    .line 317
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderView:Landroid/view/View;

    const v12, 0x7f090693

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderSeachBoxView:Landroid/view/View;

    .line 319
    iget-boolean v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mIsPortrait:Z

    if-eqz v11, :cond_4

    .line 320
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    new-instance v12, Lcom/waze/navigate/social/ShareDriveActivity$9;

    invoke-direct {v12, p0}, Lcom/waze/navigate/social/ShareDriveActivity$9;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderMapDetailsView:Landroid/view/View;

    new-instance v12, Lcom/waze/navigate/social/ShareDriveActivity$10;

    invoke-direct {v12, p0}, Lcom/waze/navigate/social/ShareDriveActivity$10;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 349
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iget-object v12, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 351
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderView:Landroid/view/View;

    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    const/4 v13, -0x2

    .line 352
    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 351
    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    iget-object v12, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 356
    :cond_4
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    new-instance v12, Lcom/waze/navigate/social/ShareDriveActivity$11;

    invoke-direct {v12, p0}, Lcom/waze/navigate/social/ShareDriveActivity$11;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 369
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    invoke-virtual {v11}, Lcom/waze/NativeManager;->IsAccessToContactsEnableNTV()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 371
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->loadPersonArray()V

    .line 391
    :goto_3
    new-instance v8, Lcom/waze/navigate/social/ShareDriveActivity$13;

    invoke-direct {v8, p0}, Lcom/waze/navigate/social/ShareDriveActivity$13;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    .line 422
    .local v8, shareButtonOnClick:Landroid/view/View$OnClickListener;
    const v11, 0x7f09068b

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mMoreBtn:Landroid/view/View;

    .line 423
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mMoreBtn:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    const v11, 0x7f090073

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/waze/view/title/TitleBar;

    iput-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    .line 426
    iget v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mType:I

    if-nez v11, :cond_b

    .line 427
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    iget-object v12, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_SEND_LOCATION_TITLE_ETA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, p0, v12, v13}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 432
    :goto_4
    const-string v7, ""

    .line 433
    .local v7, placeStr:Ljava/lang/String;
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAddress:Lcom/waze/navigate/AddressItem;

    if-eqz v11, :cond_c

    .line 434
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAddress:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v11}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 435
    if-eqz v7, :cond_5

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 436
    :cond_5
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAddress:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v11}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 442
    :cond_6
    :goto_5
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 444
    const v11, 0x7f090687

    invoke-virtual {p0, v11}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 445
    .local v9, shareDriveString:Landroid/widget/TextView;
    iget v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mType:I

    if-nez v11, :cond_d

    .line 446
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_SEND_DRIVE_DISPLAY_TEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, formatString:Ljava/lang/String;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    iget-object v13, v13, Lcom/waze/main/navigate/LocationData;->locationEta:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    :goto_6
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    .line 455
    .local v10, vto:Landroid/view/ViewTreeObserver;
    new-instance v11, Lcom/waze/navigate/social/ShareDriveActivity$14;

    invoke-direct {v11, p0}, Lcom/waze/navigate/social/ShareDriveActivity$14;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 469
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v12, Lcom/waze/navigate/social/ShareDriveActivity$15;

    invoke-direct {v12, p0}, Lcom/waze/navigate/social/ShareDriveActivity$15;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-virtual {v11, v12}, Lcom/waze/navigate/DriveToNativeManager;->getFriendsListData(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 482
    return-void

    .line 156
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    .end local v3           #formatString:Ljava/lang/String;
    .end local v4           #friendsData:Ljava/io/Serializable;
    .end local v7           #placeStr:Ljava/lang/String;
    .end local v8           #shareButtonOnClick:Landroid/view/View$OnClickListener;
    .end local v9           #shareDriveString:Landroid/widget/TextView;
    .end local v10           #vto:Landroid/view/ViewTreeObserver;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 167
    :cond_8
    const/4 v11, 0x0

    sput-boolean v11, Lcom/waze/navigate/social/ShareDriveActivity;->bIsFollow:Z

    goto/16 :goto_1

    .line 174
    .restart local v1       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .restart local v4       #friendsData:Ljava/io/Serializable;
    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 175
    .local v5, o:Ljava/lang/Object;
    instance-of v12, v5, Lcom/waze/user/PersonBase;

    if-eqz v12, :cond_0

    move-object v6, v5

    .line 176
    check-cast v6, Lcom/waze/user/PersonBase;

    .line 177
    .local v6, p:Lcom/waze/user/PersonBase;
    iget-object v12, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mSuggested:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/waze/user/PersonBase;->getID()I

    move-result v13

    invoke-virtual {v12, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 375
    .end local v1           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v5           #o:Ljava/lang/Object;
    .end local v6           #p:Lcom/waze/user/PersonBase;
    .restart local v0       #animation:Landroid/view/animation/AlphaAnimation;
    :cond_a
    new-instance v2, Lcom/waze/phone/PhoneRequestAccessDialog;

    new-instance v11, Lcom/waze/navigate/social/ShareDriveActivity$12;

    invoke-direct {v11, p0}, Lcom/waze/navigate/social/ShareDriveActivity$12;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    invoke-direct {v2, p0, v11}, Lcom/waze/phone/PhoneRequestAccessDialog;-><init>(Landroid/content/Context;Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;)V

    .line 388
    .local v2, dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    invoke-virtual {v2}, Lcom/waze/phone/PhoneRequestAccessDialog;->show()V

    goto/16 :goto_3

    .line 429
    .end local v2           #dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    .restart local v8       #shareButtonOnClick:Landroid/view/View$OnClickListener;
    :cond_b
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    iget-object v12, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_SEND_LOCATION_TITLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, p0, v12, v13}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 438
    .restart local v7       #placeStr:Ljava/lang/String;
    :cond_c
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    iget-object v11, v11, Lcom/waze/main/navigate/LocationData;->locationName:Ljava/lang/String;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    iget-object v11, v11, Lcom/waze/main/navigate/LocationData;->locationName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 439
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;

    iget-object v7, v11, Lcom/waze/main/navigate/LocationData;->locationName:Ljava/lang/String;

    goto/16 :goto_5

    .line 449
    .restart local v9       #shareDriveString:Landroid/widget/TextView;
    :cond_d
    iget-object v11, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_SEND_LOCATION_DISPLAY_TEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 450
    .restart local v3       #formatString:Ljava/lang/String;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method public onFriendsChanged()V
    .locals 0

    .prologue
    .line 901
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    const v3, 0x7f09008f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 873
    .local v0, cb:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/user/PersonBase;

    .line 875
    .local v2, p:Lcom/waze/user/PersonBase;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 877
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 878
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3, v2}, Lcom/waze/autocomplete/ContactsCompletionView;->removeObject(Ljava/lang/Object;)V

    .line 879
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    move-object v3, v1

    .line 880
    check-cast v3, Lcom/waze/user/PersonBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getID()I

    move-result v3

    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getID()I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 881
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->removeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 886
    .end local v1           #o:Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 887
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 892
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3, v2}, Lcom/waze/autocomplete/ContactsCompletionView;->addObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 887
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #o:Ljava/lang/Object;
    move-object v3, v1

    .line 888
    check-cast v3, Lcom/waze/user/PersonBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getID()I

    move-result v3

    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getID()I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 889
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->removeObject(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 547
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 548
    iget v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mType:I

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetMeeting()V

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsView()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 558
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 559
    new-instance v0, Lcom/waze/navigate/social/ShareDriveActivity$17;

    invoke-direct {v0, p0}, Lcom/waze/navigate/social/ShareDriveActivity$17;-><init>(Lcom/waze/navigate/social/ShareDriveActivity;)V

    .line 565
    const-wide/16 v1, 0x64

    .line 559
    invoke-virtual {p0, v0, v1, v2}, Lcom/waze/navigate/social/ShareDriveActivity;->postDelayed(Ljava/lang/Runnable;J)V

    .line 566
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 540
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/navigate/social/ShareDriveActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mAskToAdd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mAskToAdd:Lcom/waze/user/PersonBase;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 542
    return-void
.end method

.method public onTokenAdded(Ljava/lang/Object;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 841
    move-object v1, p1

    check-cast v1, Lcom/waze/user/PersonBase;

    .line 842
    .local v1, p:Lcom/waze/user/PersonBase;
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    invoke-virtual {v1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->setSelected(I)V

    .line 844
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 845
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 846
    const v3, 0x7f09008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 847
    .local v0, cb:Landroid/widget/CheckBox;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 849
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_0
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->setDoneButtonClickableOrNot()V

    .line 850
    return-void
.end method

.method public onTokenRemoved(Ljava/lang/Object;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 854
    move-object v1, p1

    check-cast v1, Lcom/waze/user/PersonBase;

    .line 855
    .local v1, p:Lcom/waze/user/PersonBase;
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    invoke-virtual {v1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->setUnselected(I)V

    .line 857
    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 858
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 859
    const v3, 0x7f09008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 860
    .local v0, cb:Landroid/widget/CheckBox;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 862
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_0
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareDriveActivity;->setDoneButtonClickableOrNot()V

    .line 863
    return-void
.end method
