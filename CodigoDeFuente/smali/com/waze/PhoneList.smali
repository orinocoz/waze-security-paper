.class public Lcom/waze/PhoneList;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PhoneList.java"

# interfaces
.implements Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;
.implements Lcom/waze/share/ShareFbQueries$IFriendsListCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/PhoneList$PreviewTabsManager;
    }
.end annotation


# static fields
.field private static final FRIENDS_LIST_LENGTH_LIMIT:I = 0x1e

.field private static mFriends:[Lcom/waze/share/ShareFbFriend;


# instance fields
.field private bIsSearch:Z

.field private et:Landroid/widget/EditText;

.field private lv:Landroid/widget/ListView;

.field private mAdapter:Lcom/waze/share/ShareFbWithListAdapter;

.field private mInitialCheckedFriendsList:[Ljava/lang/String;

.field private final mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mSearchBox:Landroid/widget/EditText;

.field private final mSearchTextWatcher:Landroid/text/TextWatcher;

.field private nlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nlistString:[Ljava/lang/String;

.field private previewTabsManager:Lcom/waze/PhoneList$PreviewTabsManager;

.field textlength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/PhoneList;->mFriends:[Lcom/waze/share/ShareFbFriend;

    .line 372
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/PhoneList;->nlist:Ljava/util/ArrayList;

    .line 45
    iput v1, p0, Lcom/waze/PhoneList;->textlength:I

    .line 47
    iput-boolean v1, p0, Lcom/waze/PhoneList;->bIsSearch:Z

    .line 316
    new-instance v0, Lcom/waze/PhoneList$1;

    invoke-direct {v0, p0}, Lcom/waze/PhoneList$1;-><init>(Lcom/waze/PhoneList;)V

    iput-object v0, p0, Lcom/waze/PhoneList;->mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 322
    new-instance v0, Lcom/waze/PhoneList$2;

    invoke-direct {v0, p0}, Lcom/waze/PhoneList$2;-><init>(Lcom/waze/PhoneList;)V

    iput-object v0, p0, Lcom/waze/PhoneList;->mSearchTextWatcher:Landroid/text/TextWatcher;

    .line 40
    return-void
.end method

.method private _finish()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->finish()V

    .line 285
    return-void
.end method

.method static synthetic access$0(Lcom/waze/PhoneList;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/waze/PhoneList;->bIsSearch:Z

    return v0
.end method

.method static synthetic access$1(Lcom/waze/PhoneList;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/waze/PhoneList;->nlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/PhoneList;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/waze/PhoneList;->nlistString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/PhoneList;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/waze/PhoneList;->et:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/PhoneList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/waze/PhoneList;->bIsSearch:Z

    return-void
.end method

.method static synthetic access$5(Lcom/waze/PhoneList;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/waze/PhoneList;->lv:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/PhoneList;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/waze/PhoneList;->mInitialCheckedFriendsList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/PhoneList;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/waze/PhoneList;->initCheckedState([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/PhoneList;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/waze/PhoneList;->mInitialCheckedFriendsList:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/waze/PhoneList;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/waze/PhoneList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static getSelected()[Lcom/waze/share/ShareFbFriend;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/waze/PhoneList;->mFriends:[Lcom/waze/share/ShareFbFriend;

    return-object v0
.end method

.method private initCheckedState([Ljava/lang/String;)V
    .locals 5
    .parameter "checked"

    .prologue
    .line 344
    if-nez p1, :cond_1

    .line 359
    :cond_0
    return-void

    .line 347
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/waze/PhoneList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/waze/PhoneList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/share/ShareFbFriend;

    .line 350
    .local v0, friend:Lcom/waze/share/ShareFbFriend;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v3, p1

    if-lt v2, v3, :cond_2

    .line 347
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_2
    iget-object v3, v0, Lcom/waze/share/ShareFbFriend;->name:Ljava/lang/String;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 354
    iget-object v3, p0, Lcom/waze/PhoneList;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2

    .line 350
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public InitTab1()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 66
    const v1, 0x7f0904ea

    invoke-virtual {p0, v1}, Lcom/waze/PhoneList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/waze/PhoneList;->lv:Landroid/widget/ListView;

    .line 67
    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Lcom/waze/PhoneList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/waze/PhoneList;->et:Landroid/widget/EditText;

    .line 69
    const v1, 0x7f0904e9

    invoke-virtual {p0, v1}, Lcom/waze/PhoneList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 71
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_MORE_OPTIONS:Lcom/waze/strings/DisplayStrings;

    .line 70
    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v1, 0x7f0904e8

    invoke-virtual {p0, v1}, Lcom/waze/PhoneList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/waze/PhoneList$3;

    invoke-direct {v3, p0}, Lcom/waze/PhoneList$3;-><init>(Lcom/waze/PhoneList;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/waze/PhoneList;->lv:Landroid/widget/ListView;

    new-instance v3, Lcom/waze/PhoneList$4;

    invoke-direct {v3, p0}, Lcom/waze/PhoneList$4;-><init>(Lcom/waze/PhoneList;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 167
    invoke-virtual {p0}, Lcom/waze/PhoneList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    :cond_0
    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, name:Ljava/lang/String;
    const-string v1, "has_phone_number"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/waze/PhoneList;->nlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    .end local v7           #name:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/waze/PhoneList;->nlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/waze/PhoneList;->nlistString:[Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/waze/PhoneList;->nlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/waze/PhoneList;->nlistString:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Lcom/waze/PhoneList;->nlistString:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 187
    iget-object v1, p0, Lcom/waze/PhoneList;->lv:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 188
    const v3, 0x7f030041

    const v4, 0x7f090233

    iget-object v5, p0, Lcom/waze/PhoneList;->nlistString:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v1, p0, Lcom/waze/PhoneList;->et:Landroid/widget/EditText;

    new-instance v2, Lcom/waze/PhoneList$5;

    invoke-direct {v2, p0}, Lcom/waze/PhoneList$5;-><init>(Lcom/waze/PhoneList;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    return-void
.end method

.method public InitTab2()V
    .locals 4

    .prologue
    .line 233
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v0

    .line 234
    .local v0, nm:Lcom/waze/share/ShareNativeManager;
    invoke-virtual {v0, p0}, Lcom/waze/share/ShareNativeManager;->getShareFbWithData(Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;)V

    .line 237
    invoke-virtual {p0}, Lcom/waze/PhoneList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Friends list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/PhoneList;->mInitialCheckedFriendsList:[Ljava/lang/String;

    .line 240
    const v1, 0x7f0904ec

    invoke-virtual {p0, v1}, Lcom/waze/PhoneList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/waze/PhoneList;->mSearchBox:Landroid/widget/EditText;

    .line 241
    const v1, 0x7f0904ee

    invoke-virtual {p0, v1}, Lcom/waze/PhoneList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/waze/PhoneList;->mListView:Landroid/widget/ListView;

    .line 244
    iget-object v1, p0, Lcom/waze/PhoneList;->mSearchBox:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/waze/PhoneList;->mSearchTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 246
    new-instance v1, Lcom/waze/share/ShareFbWithListAdapter;

    invoke-direct {v1, p0}, Lcom/waze/share/ShareFbWithListAdapter;-><init>(Lcom/waze/ifs/ui/ActivityBase;)V

    iput-object v1, p0, Lcom/waze/PhoneList;->mAdapter:Lcom/waze/share/ShareFbWithListAdapter;

    .line 247
    iget-object v1, p0, Lcom/waze/PhoneList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/waze/PhoneList;->mAdapter:Lcom/waze/share/ShareFbWithListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    iget-object v1, p0, Lcom/waze/PhoneList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/waze/PhoneList;->mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 251
    const-string v1, ""

    const/16 v2, 0x1e

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, p0, v3}, Lcom/waze/share/ShareFbQueries;->getFriendsList(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;ILcom/waze/share/ShareFbQueries$IFriendsListCallback;Z)V

    .line 252
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/waze/PhoneList;->setResult(ILandroid/content/Intent;)V

    .line 279
    invoke-direct {p0}, Lcom/waze/PhoneList;->_finish()V

    .line 280
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 363
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 364
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0300a2

    invoke-virtual {p0, v0}, Lcom/waze/PhoneList;->setContentView(I)V

    .line 54
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/PhoneList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SHARE_ADDRESSES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 56
    invoke-virtual {p0}, Lcom/waze/PhoneList;->InitTab1()V

    .line 57
    invoke-virtual {p0}, Lcom/waze/PhoneList;->InitTab2()V

    .line 59
    new-instance v0, Lcom/waze/PhoneList$PreviewTabsManager;

    invoke-direct {v0, p0}, Lcom/waze/PhoneList$PreviewTabsManager;-><init>(Lcom/waze/PhoneList;)V

    iput-object v0, p0, Lcom/waze/PhoneList;->previewTabsManager:Lcom/waze/PhoneList$PreviewTabsManager;

    .line 60
    iget-object v0, p0, Lcom/waze/PhoneList;->previewTabsManager:Lcom/waze/PhoneList$PreviewTabsManager;

    invoke-virtual {v0}, Lcom/waze/PhoneList$PreviewTabsManager;->initTabs()V

    .line 61
    iget-object v0, p0, Lcom/waze/PhoneList;->previewTabsManager:Lcom/waze/PhoneList$PreviewTabsManager;

    invoke-virtual {p0}, Lcom/waze/PhoneList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SelectedTab"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/PhoneList$PreviewTabsManager;->setSelectedTab(I)V

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 268
    invoke-direct {p0}, Lcom/waze/PhoneList;->_finish()V

    .line 269
    return-void
.end method

.method public onFbWithData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "hint"

    .prologue
    .line 257
    move-object v0, p0

    .line 258
    .local v0, activity:Lcom/waze/PhoneList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/waze/PhoneList;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/waze/PhoneList;->mSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 263
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
    .line 296
    .local p1, friends:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbFriend;>;"
    iget-object v2, p0, Lcom/waze/PhoneList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/waze/share/ShareFbWithListAdapter;

    .line 298
    .local v0, adapter:Lcom/waze/share/ShareFbWithListAdapter;
    new-instance v1, Lcom/waze/PhoneList$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/waze/PhoneList$6;-><init>(Lcom/waze/PhoneList;Lcom/waze/share/ShareFbWithListAdapter;Ljava/util/ArrayList;)V

    .line 310
    .local v1, r:Ljava/lang/Runnable;
    if-nez p2, :cond_0

    .line 312
    invoke-virtual {p0, v1}, Lcom/waze/PhoneList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    :cond_0
    return-void
.end method
