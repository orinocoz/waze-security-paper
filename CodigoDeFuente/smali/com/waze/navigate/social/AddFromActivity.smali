.class public Lcom/waze/navigate/social/AddFromActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "AddFromActivity.java"

# interfaces
.implements Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;,
        Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;,
        Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/waze/ifs/ui/ActivityBase;",
        "Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;"
    }
.end annotation


# static fields
.field public static INTENT_FROM_DEFAULT:I

.field public static INTENT_FROM_FB:I

.field public static INTENT_FROM_SHARE:I

.field public static INTENT_FROM_WHERE:Ljava/lang/String;

.field public static INTENT_SELECTED:Ljava/lang/String;

.field public static INTENT_SUGGESTED:Ljava/lang/String;


# instance fields
.field private mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

.field private mCurFriendsUids:Landroid/util/SparseIntArray;

.field private mFriendsListView:Landroid/widget/ListView;

.field mHasReadAddressBook:Z

.field mHasReadCurFriends:Z

.field mHasReadUidMap:Z

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

.field private mPersonIdMatch:Landroid/util/SparseIntArray;

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

.field private mSource:I

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

.field private mSuggestionsUids:Landroid/util/SparseIntArray;

.field private mTitleBar:Lcom/waze/view/title/TitleBarTextButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "INTENT_FROM_WHERE"

    sput-object v0, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_WHERE:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_DEFAULT:I

    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_FB:I

    .line 62
    const/4 v0, 0x2

    sput v0, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    .line 63
    const-string v0, "INTENT_SELECTED"

    sput-object v0, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SELECTED:Ljava/lang/String;

    .line 64
    const-string v0, "INTENT_SUGGESTED"

    sput-object v0, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SUGGESTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mPreSelected:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mSuggested:Landroid/util/SparseArray;

    .line 76
    iput v1, p0, Lcom/waze/navigate/social/AddFromActivity;->mNumSuggestions:I

    .line 77
    sget v0, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_DEFAULT:I

    iput v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    .line 78
    iput-boolean v1, p0, Lcom/waze/navigate/social/AddFromActivity;->mHasReadAddressBook:Z

    .line 79
    iput-boolean v1, p0, Lcom/waze/navigate/social/AddFromActivity;->mHasReadUidMap:Z

    .line 80
    iput-boolean v1, p0, Lcom/waze/navigate/social/AddFromActivity;->mHasReadCurFriends:Z

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/AddFromActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/social/AddFromActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFromActivity;->addFromShare()V

    return-void
.end method

.method static synthetic access$10(Lcom/waze/navigate/social/AddFromActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/navigate/social/AddFromActivity;)Landroid/util/SparseIntArray;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mSuggestionsUids:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$12(Lcom/waze/navigate/social/AddFromActivity;Landroid/util/SparseIntArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity;->mCurFriendsUids:Landroid/util/SparseIntArray;

    return-void
.end method

.method static synthetic access$13(Lcom/waze/navigate/social/AddFromActivity;)Landroid/util/SparseIntArray;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mCurFriendsUids:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/autocomplete/ContactsCompletionView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/navigate/social/AddFromActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mFriendsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/navigate/social/AddFromActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/waze/navigate/social/AddFromActivity;->mNumSuggestions:I

    return-void
.end method

.method static synthetic access$7(Lcom/waze/navigate/social/AddFromActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFromActivity;->readDone()V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/navigate/social/AddFromActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$9(Lcom/waze/navigate/social/AddFromActivity;Landroid/util/SparseIntArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity;->mSuggestionsUids:Landroid/util/SparseIntArray;

    return-void
.end method

.method private addFromShare()V
    .locals 3

    .prologue
    .line 299
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v2}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 300
    .local v1, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, ret:Landroid/content/Intent;
    sget-object v2, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SELECTED:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 302
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/waze/navigate/social/AddFromActivity;->setResult(ILandroid/content/Intent;)V

    .line 303
    return-void
.end method

.method private friendsListPopulateFriends()V
    .locals 7

    .prologue
    .line 584
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 603
    :cond_0
    return-void

    .line 589
    :cond_1
    new-instance v3, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    iget-object v4, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;

    iget v5, p0, Lcom/waze/navigate/social/AddFromActivity;->mNumSuggestions:I

    .line 590
    iget v2, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    sget v6, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_DEFAULT:I

    if-eq v2, v6, :cond_2

    iget v2, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    sget v6, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    if-eq v2, v6, :cond_2

    .line 589
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v3, p0, v4, v5, v2}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;-><init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;IZ)V

    .line 588
    iput-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    .line 591
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    const v3, -0x120a09

    const v4, -0x777778

    invoke-virtual {v2, v3, v4}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->setHeaderColors(II)V

    .line 592
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity;->mFriendsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 593
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 595
    new-instance v2, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;-><init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;)V

    iput-object v2, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

    .line 596
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

    invoke-virtual {v2, v3}, Lcom/waze/autocomplete/ContactsCompletionView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 597
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v2, p0}, Lcom/waze/autocomplete/ContactsCompletionView;->setTokenListener(Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;)V

    .line 599
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v2}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, o:Ljava/lang/Object;
    move-object v1, v0

    .line 600
    check-cast v1, Lcom/waze/user/PersonBase;

    .line 601
    .local v1, p:Lcom/waze/user/PersonBase;
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    invoke-virtual {v1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->setSelected(I)V

    goto :goto_1

    .line 589
    .end local v0           #o:Ljava/lang/Object;
    .end local v1           #p:Lcom/waze/user/PersonBase;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getFriendsDataFromAddressBook()V
    .locals 3

    .prologue
    .line 435
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 436
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v1, Lcom/waze/navigate/social/AddFromActivity$8;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFromActivity$8;-><init>(Lcom/waze/navigate/social/AddFromActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getAddFriendsData(Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;)V

    .line 459
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonIdMatch:Landroid/util/SparseIntArray;

    .line 460
    iget-object v1, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonIdMatch:Landroid/util/SparseIntArray;

    new-instance v2, Lcom/waze/navigate/social/AddFromActivity$9;

    invoke-direct {v2, p0}, Lcom/waze/navigate/social/AddFromActivity$9;-><init>(Lcom/waze/navigate/social/AddFromActivity;)V

    invoke-static {v1, v2}, Lcom/waze/phone/AddressBook;->fillMapBetweenContactIdToUid(Landroid/util/SparseIntArray;Lcom/waze/navigate/social/OnCompleteTaskListener;)V

    .line 472
    new-instance v1, Lcom/waze/navigate/social/AddFromActivity$10;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFromActivity$10;-><init>(Lcom/waze/navigate/social/AddFromActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getFriendsListData(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 491
    return-void
.end method

.method private getFriendsDataFromFacebook()V
    .locals 2

    .prologue
    .line 494
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 495
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v1, Lcom/waze/navigate/social/AddFromActivity$11;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFromActivity$11;-><init>(Lcom/waze/navigate/social/AddFromActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getRemovedFriendsData(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 519
    return-void
.end method

.method public static getFriendsDataFromShare(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter "cb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;",
            "Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;",
            ")V"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, personArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    .local p1, preSelected:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/waze/user/PersonBase;>;"
    .local p2, suggested:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/waze/user/PersonBase;>;"
    new-instance v0, Lcom/waze/navigate/social/AddFromActivity$7;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/waze/navigate/social/AddFromActivity$7;-><init>(Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;Landroid/util/SparseArray;)V

    invoke-static {v0}, Lcom/waze/phone/AddressBook;->GetPersonArrayWithMapping(Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;)V

    .line 432
    return-void
.end method

.method private readDone()V
    .locals 4

    .prologue
    const v3, 0x7f09009d

    .line 566
    iget-object v1, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 570
    .local v0, nativeManager:Lcom/waze/NativeManager;
    const v1, 0x7f09009e

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/AddFromActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 571
    const-string v2, "moods/sad.bin"

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 570
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 572
    invoke-virtual {p0, v3}, Lcom/waze/navigate/social/AddFromActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 573
    const v1, 0x7f09009f

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/AddFromActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 574
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NO_FRIENDS_TO_WAZE_WITH:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 573
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    .end local v0           #nativeManager:Lcom/waze/NativeManager;
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-virtual {p0, v3}, Lcom/waze/navigate/social/AddFromActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 578
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFromActivity;->friendsListPopulateFriends()V

    goto :goto_0
.end method


# virtual methods
.method addFromContacts()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 306
    iget-object v10, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v10}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v8

    .line 307
    .local v8, selected:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v0, v10, [I

    .line 308
    .local v0, addUids:[I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v2, v10, [Ljava/lang/String;

    .line 309
    .local v2, invitePhones:[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v1, v10, [I

    .line 310
    .local v1, inviteIds:[I
    const/4 v3, 0x0

    .line 311
    .local v3, numAdd:I
    const/4 v4, 0x0

    .line 313
    .local v4, numInvite:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 335
    if-lez v4, :cond_0

    .line 338
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v10

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_PD_FRIENDS_INVITED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    .line 339
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    .line 337
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 340
    .local v7, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v10

    invoke-virtual {v10, v1, v2, v7}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialInviteFriends([I[Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .end local v7           #reply:Ljava/lang/String;
    :cond_0
    if-lez v3, :cond_1

    .line 345
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v10

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_PD_FRIENDS_ADDED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    .line 346
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    .line 344
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 347
    .restart local v7       #reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v10

    invoke-virtual {v10, v0, v7}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriends([ILjava/lang/String;)V

    .line 349
    .end local v7           #reply:Ljava/lang/String;
    :cond_1
    return-void

    .line 313
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, o:Ljava/lang/Object;
    move-object v6, v5

    .line 314
    check-cast v6, Lcom/waze/user/PersonBase;

    .line 316
    .local v6, p:Lcom/waze/user/PersonBase;
    const/4 v9, 0x0

    .line 317
    .local v9, uid:I
    iget-object v11, p0, Lcom/waze/navigate/social/AddFromActivity;->mSuggestionsUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Lcom/waze/user/PersonBase;->getID()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    if-eqz v11, :cond_3

    .line 318
    invoke-virtual {v6}, Lcom/waze/user/PersonBase;->getID()I

    move-result v9

    .line 323
    :goto_1
    if-nez v9, :cond_4

    .line 325
    invoke-virtual {v6}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v4

    .line 326
    invoke-virtual {v6}, Lcom/waze/user/PersonBase;->getID()I

    move-result v11

    aput v11, v1, v4

    .line 327
    add-int/lit8 v4, v4, 0x1

    .line 328
    goto :goto_0

    .line 320
    :cond_3
    iget-object v11, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonIdMatch:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Lcom/waze/user/PersonBase;->getID()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    goto :goto_1

    .line 330
    :cond_4
    aput v9, v0, v3

    .line 331
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method addFromFacebook()V
    .locals 9

    .prologue
    .line 269
    iget-object v7, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v7}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v6

    .line 270
    .local v6, selected:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 271
    .local v4, phones:[Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v1, v7, [I

    .line 272
    .local v1, ids:[I
    const/4 v0, 0x0

    .line 274
    .local v0, i:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Added "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " friends."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriends([ILjava/lang/String;)V

    .line 283
    return-void

    .line 274
    .end local v5           #reply:Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    move-object v3, v2

    .line 275
    check-cast v3, Lcom/waze/user/PersonBase;

    .line 276
    .local v3, p:Lcom/waze/user/PersonBase;
    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v0

    .line 277
    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getID()I

    move-result v8

    aput v8, v1, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 85
    if-ne p2, v0, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFromActivity;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFromActivity;->finish()V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    .line 95
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFromActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 98
    sget-object v6, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-virtual {v6}, Lcom/waze/utils/ImageRepository;->initExecutor()V

    .line 100
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFromActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 101
    .local v2, i:Landroid/content/Intent;
    if-eqz v2, :cond_3

    sget-object v6, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_WHERE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    sget-object v6, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_WHERE:Ljava/lang/String;

    sget v7, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_DEFAULT:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    .line 103
    sget-object v6, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SELECTED:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFromActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    sget-object v7, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SELECTED:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 105
    .local v4, o:Ljava/io/Serializable;
    instance-of v6, v4, Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    move-object v1, v4

    .line 106
    check-cast v1, Ljava/util/ArrayList;

    .line 107
    .local v1, arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 108
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 116
    .end local v1           #arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v4           #o:Ljava/io/Serializable;
    :cond_1
    sget-object v6, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SUGGESTED:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFromActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    sget-object v7, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SUGGESTED:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 118
    .restart local v4       #o:Ljava/io/Serializable;
    instance-of v6, v4, Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    move-object v1, v4

    .line 119
    check-cast v1, Ljava/util/ArrayList;

    .line 120
    .restart local v1       #arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 121
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 132
    .end local v1           #arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v4           #o:Ljava/io/Serializable;
    :cond_3
    const v6, 0x7f03000b

    invoke-virtual {p0, v6}, Lcom/waze/navigate/social/AddFromActivity;->setContentView(I)V

    .line 133
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 135
    .local v3, nativeManager:Lcom/waze/NativeManager;
    const v6, 0x7f090058

    invoke-virtual {p0, v6}, Lcom/waze/navigate/social/AddFromActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/view/title/TitleBarTextButton;

    iput-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mTitleBar:Lcom/waze/view/title/TitleBarTextButton;

    .line 137
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFromActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, activityType:I
    if-lez v0, :cond_a

    .line 139
    if-ne v0, v10, :cond_8

    .line 140
    iget-object v7, p0, Lcom/waze/navigate/social/AddFromActivity;->mTitleBar:Lcom/waze/view/title/TitleBarTextButton;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_SHARE_RIDE:Lcom/waze/strings/DisplayStrings;

    iget v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    sget v9, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    if-ne v6, v9, :cond_7

    .line 141
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    .line 140
    :goto_2
    invoke-virtual {v7, p0, v8, v6}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    .line 156
    :goto_3
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mTitleBar:Lcom/waze/view/title/TitleBarTextButton;

    new-instance v7, Lcom/waze/navigate/social/AddFromActivity$1;

    invoke-direct {v7, p0}, Lcom/waze/navigate/social/AddFromActivity$1;-><init>(Lcom/waze/navigate/social/AddFromActivity;)V

    invoke-virtual {v6, v7}, Lcom/waze/view/title/TitleBarTextButton;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    sget v7, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mTitleBar:Lcom/waze/view/title/TitleBarTextButton;

    invoke-virtual {v6, v10}, Lcom/waze/view/title/TitleBarTextButton;->setCloseButtonDisabled(Z)V

    .line 175
    :cond_4
    const v6, 0x7f09009b

    invoke-virtual {p0, v6}, Lcom/waze/navigate/social/AddFromActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/autocomplete/ContactsCompletionView;

    iput-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    .line 176
    iget v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    sget v7, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    if-eq v6, v7, :cond_c

    .line 177
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_CONTACTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/waze/autocomplete/ContactsCompletionView;->setHint(Ljava/lang/CharSequence;)V

    .line 182
    :goto_4
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/waze/autocomplete/ContactsCompletionView;->allowDuplicates(Z)V

    .line 183
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v7, Lcom/waze/navigate/social/AddFromActivity$2;

    invoke-direct {v7, p0}, Lcom/waze/navigate/social/AddFromActivity$2;-><init>(Lcom/waze/navigate/social/AddFromActivity;)V

    invoke-virtual {v6, v7}, Lcom/waze/autocomplete/ContactsCompletionView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 204
    const v6, 0x7f09009c

    invoke-virtual {p0, v6}, Lcom/waze/navigate/social/AddFromActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mFriendsListView:Landroid/widget/ListView;

    .line 205
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mFriendsListView:Landroid/widget/ListView;

    new-instance v7, Lcom/waze/navigate/social/AddFromActivity$3;

    invoke-direct {v7, p0}, Lcom/waze/navigate/social/AddFromActivity$3;-><init>(Lcom/waze/navigate/social/AddFromActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 219
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v7, Lcom/waze/navigate/social/AddFromActivity$4;

    invoke-direct {v7, p0}, Lcom/waze/navigate/social/AddFromActivity$4;-><init>(Lcom/waze/navigate/social/AddFromActivity;)V

    invoke-virtual {v6, v7}, Lcom/waze/autocomplete/ContactsCompletionView;->setIGetViewForObject(Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;)V

    .line 244
    iget v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    sget v7, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_FB:I

    if-ne v6, v7, :cond_d

    .line 245
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFromActivity;->getFriendsDataFromFacebook()V

    .line 265
    :goto_5
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->addFriendsChangedListener(Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;)V

    .line 266
    return-void

    .line 108
    .end local v0           #activityType:I
    .end local v3           #nativeManager:Lcom/waze/NativeManager;
    .restart local v1       #arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .restart local v4       #o:Ljava/io/Serializable;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 109
    .local v5, p:Ljava/lang/Object;
    instance-of v6, v5, Lcom/waze/user/PersonBase;

    if-eqz v6, :cond_0

    .line 110
    iget-object v8, p0, Lcom/waze/navigate/social/AddFromActivity;->mPreSelected:Landroid/util/SparseArray;

    move-object v6, v5

    check-cast v6, Lcom/waze/user/PersonBase;

    invoke-virtual {v6}, Lcom/waze/user/PersonBase;->getID()I

    move-result v6

    check-cast v5, Lcom/waze/user/PersonBase;

    .end local v5           #p:Ljava/lang/Object;
    invoke-virtual {v8, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 121
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 122
    .restart local v5       #p:Ljava/lang/Object;
    instance-of v6, v5, Lcom/waze/user/PersonBase;

    if-eqz v6, :cond_2

    .line 123
    iget-object v8, p0, Lcom/waze/navigate/social/AddFromActivity;->mSuggested:Landroid/util/SparseArray;

    move-object v6, v5

    check-cast v6, Lcom/waze/user/PersonBase;

    invoke-virtual {v6}, Lcom/waze/user/PersonBase;->getID()I

    move-result v6

    check-cast v5, Lcom/waze/user/PersonBase;

    .end local v5           #p:Ljava/lang/Object;
    invoke-virtual {v8, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 142
    .end local v1           #arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v4           #o:Ljava/io/Serializable;
    .restart local v0       #activityType:I
    .restart local v3       #nativeManager:Lcom/waze/NativeManager;
    :cond_7
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SEND:Lcom/waze/strings/DisplayStrings;

    goto/16 :goto_2

    .line 144
    :cond_8
    iget-object v7, p0, Lcom/waze/navigate/social/AddFromActivity;->mTitleBar:Lcom/waze/view/title/TitleBarTextButton;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_SEND_LOCATION:Lcom/waze/strings/DisplayStrings;

    iget v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    sget v9, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    if-ne v6, v9, :cond_9

    .line 145
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    .line 144
    :goto_6
    invoke-virtual {v7, p0, v8, v6}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    goto/16 :goto_3

    .line 146
    :cond_9
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SEND:Lcom/waze/strings/DisplayStrings;

    goto :goto_6

    .line 149
    :cond_a
    iget-object v7, p0, Lcom/waze/navigate/social/AddFromActivity;->mTitleBar:Lcom/waze/view/title/TitleBarTextButton;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_ADD_FRIENDS:Lcom/waze/strings/DisplayStrings;

    iget v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    sget v9, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    if-ne v6, v9, :cond_b

    .line 150
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    .line 149
    :goto_7
    invoke-virtual {v7, p0, v8, v6}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    goto/16 :goto_3

    .line 151
    :cond_b
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SEND:Lcom/waze/strings/DisplayStrings;

    goto :goto_7

    .line 179
    :cond_c
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    .line 180
    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-virtual {v6, v7}, Lcom/waze/autocomplete/ContactsCompletionView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 246
    :cond_d
    iget v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    sget v7, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    if-ne v6, v7, :cond_e

    .line 247
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;

    .line 248
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/waze/navigate/social/AddFromActivity;->mPreSelected:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/waze/navigate/social/AddFromActivity;->mSuggested:Landroid/util/SparseArray;

    new-instance v9, Lcom/waze/navigate/social/AddFromActivity$5;

    invoke-direct {v9, p0}, Lcom/waze/navigate/social/AddFromActivity$5;-><init>(Lcom/waze/navigate/social/AddFromActivity;)V

    invoke-static {v6, v7, v8, v9}, Lcom/waze/navigate/social/AddFromActivity;->getFriendsDataFromShare(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;)V

    goto/16 :goto_5

    .line 262
    :cond_e
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFromActivity;->getFriendsDataFromAddressBook()V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->removeFriendsChangedListener(Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;)V

    .line 354
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-virtual {v0}, Lcom/waze/utils/ImageRepository;->endExecutor()V

    .line 355
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 356
    return-void
.end method

.method public onFriendsChanged()V
    .locals 0

    .prologue
    .line 852
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 820
    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 849
    :goto_0
    return-void

    .line 825
    :cond_0
    const v3, 0x7f09008f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 826
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/user/PersonBase;

    .line 827
    .local v2, p:Lcom/waze/user/PersonBase;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 829
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 830
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3, v2}, Lcom/waze/autocomplete/ContactsCompletionView;->removeObject(Ljava/lang/Object;)V

    .line 831
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 846
    :goto_2
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3, v6}, Lcom/waze/autocomplete/ContactsCompletionView;->setMaxLines(I)V

    .line 847
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3}, Lcom/waze/autocomplete/ContactsCompletionView;->requestFocus()Z

    .line 848
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3, v6}, Lcom/waze/autocomplete/ContactsCompletionView;->setMaxLines(I)V

    goto :goto_0

    .line 831
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    move-object v3, v1

    .line 832
    check-cast v3, Lcom/waze/user/PersonBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getID()I

    move-result v3

    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getID()I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 833
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->removeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 838
    .end local v1           #o:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 839
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 844
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3, v2}, Lcom/waze/autocomplete/ContactsCompletionView;->addObject(Ljava/lang/Object;)V

    goto :goto_2

    .line 839
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #o:Ljava/lang/Object;
    move-object v3, v1

    .line 840
    check-cast v3, Lcom/waze/user/PersonBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getID()I

    move-result v3

    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getID()I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 841
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v3, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->removeObject(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 287
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 288
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    new-instance v1, Lcom/waze/navigate/social/AddFromActivity$6;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFromActivity$6;-><init>(Lcom/waze/navigate/social/AddFromActivity;)V

    .line 295
    const-wide/16 v2, 0x1

    .line 288
    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/autocomplete/ContactsCompletionView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    return-void
.end method

.method public onTokenAdded(Ljava/lang/Object;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 746
    move-object v1, p1

    check-cast v1, Lcom/waze/user/PersonBase;

    .line 747
    .local v1, p:Lcom/waze/user/PersonBase;
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    invoke-virtual {v1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->setSelected(I)V

    .line 749
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 750
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 751
    const v3, 0x7f09008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 752
    .local v0, cb:Landroid/widget/CheckBox;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 754
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_0
    iget v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    sget v4, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mTitleBar:Lcom/waze/view/title/TitleBarTextButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/waze/view/title/TitleBarTextButton;->setCloseButtonDisabled(Z)V

    .line 755
    :cond_1
    return-void
.end method

.method public onTokenRemoved(Ljava/lang/Object;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 759
    move-object v1, p1

    check-cast v1, Lcom/waze/user/PersonBase;

    .line 760
    .local v1, p:Lcom/waze/user/PersonBase;
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    invoke-virtual {v1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->setUnselected(I)V

    .line 762
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mFriendsListView:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 763
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 764
    const v3, 0x7f09008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 765
    .local v0, cb:Landroid/widget/CheckBox;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 767
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_0
    iget v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mSource:I

    sget v4, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    if-eq v3, v4, :cond_1

    .line 768
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity;->mTitleBar:Lcom/waze/view/title/TitleBarTextButton;

    iget-object v4, p0, Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;

    invoke-virtual {v4}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/waze/view/title/TitleBarTextButton;->setCloseButtonDisabled(Z)V

    .line 770
    :cond_1
    return-void
.end method

.method readAddressBook()V
    .locals 9

    .prologue
    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/waze/phone/AddressBook;->GetPersonArrayFromAddressBook()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 526
    .local v0, addrBook:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/Person;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 527
    new-instance v1, Lcom/waze/navigate/social/AddFromActivity$12;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFromActivity$12;-><init>(Lcom/waze/navigate/social/AddFromActivity;)V

    .line 534
    .local v1, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/user/PersonBase;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 536
    const/4 v3, 0x0

    .line 537
    .local v3, nonZeroPosition:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 562
    .end local v1           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/user/PersonBase;>;"
    .end local v3           #nonZeroPosition:I
    :cond_1
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFromActivity;->readDone()V

    .line 563
    return-void

    .line 537
    .restart local v1       #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/user/PersonBase;>;"
    .restart local v3       #nonZeroPosition:I
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/user/PersonBase;

    .line 538
    .local v4, p:Lcom/waze/user/PersonBase;
    iget-object v7, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonIdMatch:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Lcom/waze/user/PersonBase;->getID()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 539
    .local v5, uid:I
    if-eqz v5, :cond_6

    .line 540
    iget-object v7, p0, Lcom/waze/navigate/social/AddFromActivity;->mSuggestionsUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 541
    if-eqz v3, :cond_5

    .line 543
    iget-object v7, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/user/PersonBase;

    .line 544
    .local v2, dup:Lcom/waze/user/PersonBase;
    invoke-virtual {v4}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 545
    invoke-virtual {v4}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/waze/user/PersonBase;->setImage(Ljava/lang/String;)V

    .line 547
    :cond_3
    iget-object v7, v4, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 548
    iget-object v7, v2, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v2, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 549
    :cond_4
    iget-object v7, v4, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    iput-object v7, v2, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    goto :goto_0

    .line 552
    .end local v2           #dup:Lcom/waze/user/PersonBase;
    :cond_5
    iget-object v7, p0, Lcom/waze/navigate/social/AddFromActivity;->mCurFriendsUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-nez v7, :cond_0

    .line 557
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/waze/user/PersonBase;->setIsOnWaze(Z)V

    .line 559
    :cond_6
    iget-object v7, p0, Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
