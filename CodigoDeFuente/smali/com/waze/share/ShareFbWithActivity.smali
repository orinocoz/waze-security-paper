.class public final Lcom/waze/share/ShareFbWithActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ShareFbWithActivity.java"

# interfaces
.implements Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;
.implements Lcom/waze/share/ShareFbQueries$IFriendsListCallback;


# static fields
.field private static final FRIENDS_LIST_LENGTH_LIMIT:I = 0x1e

.field private static mFriends:[Lcom/waze/share/ShareFbFriend;


# instance fields
.field private mAdapter:Lcom/waze/share/ShareFbWithListAdapter;

.field private mInitialCheckedFriendsList:[Ljava/lang/String;

.field private final mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mSearchBox:Landroid/widget/EditText;

.field private final mSearchTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/share/ShareFbWithActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    .line 190
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 137
    new-instance v0, Lcom/waze/share/ShareFbWithActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/share/ShareFbWithActivity$1;-><init>(Lcom/waze/share/ShareFbWithActivity;)V

    iput-object v0, p0, Lcom/waze/share/ShareFbWithActivity;->mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 145
    new-instance v0, Lcom/waze/share/ShareFbWithActivity$2;

    invoke-direct {v0, p0}, Lcom/waze/share/ShareFbWithActivity$2;-><init>(Lcom/waze/share/ShareFbWithActivity;)V

    iput-object v0, p0, Lcom/waze/share/ShareFbWithActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    .line 23
    return-void
.end method

.method private _finish()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->finish()V

    .line 106
    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/ShareFbWithActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/waze/share/ShareFbWithActivity;->_finish()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/share/ShareFbWithActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/waze/share/ShareFbWithActivity;->mInitialCheckedFriendsList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/share/ShareFbWithActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/waze/share/ShareFbWithActivity;->initCheckedState([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/share/ShareFbWithActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/waze/share/ShareFbWithActivity;->mInitialCheckedFriendsList:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/waze/share/ShareFbWithActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/waze/share/ShareFbWithActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static getSelected()[Lcom/waze/share/ShareFbFriend;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/waze/share/ShareFbWithActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    return-object v0
.end method

.method private initCheckedState([Ljava/lang/String;)V
    .locals 5
    .parameter "checked"

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 182
    :cond_0
    return-void

    .line 170
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/waze/share/ShareFbWithActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/waze/share/ShareFbWithActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/share/ShareFbFriend;

    .line 173
    .local v0, friend:Lcom/waze/share/ShareFbFriend;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v3, p1

    if-lt v2, v3, :cond_2

    .line 170
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget-object v3, v0, Lcom/waze/share/ShareFbFriend;->name:Ljava/lang/String;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    iget-object v3, p0, Lcom/waze/share/ShareFbWithActivity;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2

    .line 173
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 6

    .prologue
    .line 80
    iget-object v5, p0, Lcom/waze/share/ShareFbWithActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 81
    .local v0, checkedItems:Landroid/util/SparseBooleanArray;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v4, intent:Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v2, friendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbFriend;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/waze/share/ShareFbWithActivity;->mAdapter:Lcom/waze/share/ShareFbWithListAdapter;

    invoke-virtual {v5}, Lcom/waze/share/ShareFbWithListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 94
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/waze/share/ShareFbFriend;

    sput-object v5, Lcom/waze/share/ShareFbWithActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    .line 95
    sget-object v5, Lcom/waze/share/ShareFbWithActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 98
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/waze/share/ShareFbWithActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    invoke-direct {p0}, Lcom/waze/share/ShareFbWithActivity;->_finish()V

    .line 101
    return-void

    .line 86
    :cond_0
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    iget-object v5, p0, Lcom/waze/share/ShareFbWithActivity;->mAdapter:Lcom/waze/share/ShareFbWithListAdapter;

    invoke-virtual {v5, v3}, Lcom/waze/share/ShareFbWithListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/share/ShareFbFriend;

    .line 89
    .local v1, friend:Lcom/waze/share/ShareFbFriend;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v1           #friend:Lcom/waze/share/ShareFbFriend;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f030105

    invoke-virtual {p0, v1}, Lcom/waze/share/ShareFbWithActivity;->setContentView(I)V

    .line 32
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v0

    .line 33
    .local v0, nm:Lcom/waze/share/ShareNativeManager;
    invoke-virtual {v0, p0}, Lcom/waze/share/ShareNativeManager;->getShareFbWithData(Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;)V

    .line 36
    invoke-virtual {p0}, Lcom/waze/share/ShareFbWithActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Friends list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/share/ShareFbWithActivity;->mInitialCheckedFriendsList:[Ljava/lang/String;

    .line 39
    const v1, 0x7f0904ec

    invoke-virtual {p0, v1}, Lcom/waze/share/ShareFbWithActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/waze/share/ShareFbWithActivity;->mSearchBox:Landroid/widget/EditText;

    .line 40
    const v1, 0x7f0904ee

    invoke-virtual {p0, v1}, Lcom/waze/share/ShareFbWithActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/waze/share/ShareFbWithActivity;->mListView:Landroid/widget/ListView;

    .line 43
    iget-object v1, p0, Lcom/waze/share/ShareFbWithActivity;->mSearchBox:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/waze/share/ShareFbWithActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    iget-object v1, p0, Lcom/waze/share/ShareFbWithActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 47
    new-instance v1, Lcom/waze/share/ShareFbWithListAdapter;

    invoke-direct {v1, p0}, Lcom/waze/share/ShareFbWithListAdapter;-><init>(Lcom/waze/ifs/ui/ActivityBase;)V

    iput-object v1, p0, Lcom/waze/share/ShareFbWithActivity;->mAdapter:Lcom/waze/share/ShareFbWithListAdapter;

    .line 48
    iget-object v1, p0, Lcom/waze/share/ShareFbWithActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/waze/share/ShareFbWithActivity;->mAdapter:Lcom/waze/share/ShareFbWithListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    iget-object v1, p0, Lcom/waze/share/ShareFbWithActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/waze/share/ShareFbWithActivity;->mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    const-string v1, ""

    const/16 v2, 0x1e

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, p0, v3}, Lcom/waze/share/ShareFbQueries;->getFriendsList(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;ILcom/waze/share/ShareFbQueries$IFriendsListCallback;Z)V

    .line 53
    return-void
.end method

.method public onFbWithData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "hint"

    .prologue
    .line 58
    move-object v0, p0

    .line 59
    .local v0, activity:Lcom/waze/share/ShareFbWithActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/waze/share/ShareFbWithActivity;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const v2, 0x7f0904ed

    invoke-virtual {p0, v2}, Lcom/waze/share/ShareFbWithActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    .line 63
    .local v1, tb:Lcom/waze/view/title/TitleBar;
    invoke-virtual {v1, v0, p1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 64
    new-instance v2, Lcom/waze/share/ShareFbWithActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/share/ShareFbWithActivity$3;-><init>(Lcom/waze/share/ShareFbWithActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v2, p0, Lcom/waze/share/ShareFbWithActivity;->mSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 75
    .end local v1           #tb:Lcom/waze/view/title/TitleBar;
    :cond_0
    return-void
.end method

.method public onFriendsListResult(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "error_code"
    .parameter "errorString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/share/ShareFbFriend;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, friends:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbFriend;>;"
    iget-object v2, p0, Lcom/waze/share/ShareFbWithActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/waze/share/ShareFbWithListAdapter;

    .line 119
    .local v0, adapter:Lcom/waze/share/ShareFbWithListAdapter;
    new-instance v1, Lcom/waze/share/ShareFbWithActivity$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/waze/share/ShareFbWithActivity$4;-><init>(Lcom/waze/share/ShareFbWithActivity;Lcom/waze/share/ShareFbWithListAdapter;Ljava/util/ArrayList;)V

    .line 131
    .local v1, r:Ljava/lang/Runnable;
    if-nez p2, :cond_0

    .line 133
    invoke-virtual {p0, v1}, Lcom/waze/share/ShareFbWithActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    return-void
.end method
