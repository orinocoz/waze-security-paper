.class public Lcom/waze/inbox/InboxActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "InboxActivity.java"

# interfaces
.implements Lcom/waze/inbox/InboxNativeManager$InboxDataListener;
.implements Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;


# static fields
.field private static final BTN_ALL_STATE_ALL:Ljava/lang/String; = "All"

.field private static final BTN_ALL_STATE_KEY:I = 0xff

.field private static final BTN_ALL_STATE_NONE:Ljava/lang/String; = "None"


# instance fields
.field private mBtnAll:Lcom/waze/view/button/ImageButtonLeft;

.field private mBtnAllIsAll:Z

.field private mBtnDelete:Lcom/waze/view/button/ImageButtonLeft;

.field private mBtnMarkRead:Lcom/waze/view/button/ImageButtonLeft;

.field private mClearChecked:Z

.field private final mInboxNativeManager:Lcom/waze/inbox/InboxNativeManager;

.field private mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;

.field private final mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingMore:Z

.field private mMoreMessages:Z

.field private final mMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/inbox/InboxMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnAllListener:Landroid/view/View$OnClickListener;

.field private final mOnDeleteListener:Landroid/view/View$OnClickListener;

.field private final mOnMarkReadListener:Landroid/view/View$OnClickListener;

.field private final mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mSelectedItem:Lcom/waze/inbox/InboxMessage;

.field private mStatusBar:Landroid/widget/RelativeLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mTitleBar:Lcom/waze/view/title/TitleBar;

.field private mUnread:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/waze/inbox/InboxNativeManager;->create()Lcom/waze/inbox/InboxNativeManager;

    .line 290
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 200
    new-instance v0, Lcom/waze/inbox/InboxActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxActivity$1;-><init>(Lcom/waze/inbox/InboxActivity;)V

    iput-object v0, p0, Lcom/waze/inbox/InboxActivity;->mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 221
    new-instance v0, Lcom/waze/inbox/InboxActivity$2;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxActivity$2;-><init>(Lcom/waze/inbox/InboxActivity;)V

    iput-object v0, p0, Lcom/waze/inbox/InboxActivity;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 236
    new-instance v0, Lcom/waze/inbox/InboxActivity$3;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxActivity$3;-><init>(Lcom/waze/inbox/InboxActivity;)V

    iput-object v0, p0, Lcom/waze/inbox/InboxActivity;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    .line 248
    new-instance v0, Lcom/waze/inbox/InboxActivity$4;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxActivity$4;-><init>(Lcom/waze/inbox/InboxActivity;)V

    iput-object v0, p0, Lcom/waze/inbox/InboxActivity;->mOnMarkReadListener:Landroid/view/View$OnClickListener;

    .line 260
    new-instance v0, Lcom/waze/inbox/InboxActivity$5;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxActivity$5;-><init>(Lcom/waze/inbox/InboxActivity;)V

    iput-object v0, p0, Lcom/waze/inbox/InboxActivity;->mOnAllListener:Landroid/view/View$OnClickListener;

    .line 270
    iput-boolean v1, p0, Lcom/waze/inbox/InboxActivity;->mMoreMessages:Z

    .line 271
    iput-boolean v1, p0, Lcom/waze/inbox/InboxActivity;->mLoadingMore:Z

    .line 272
    iput-boolean v1, p0, Lcom/waze/inbox/InboxActivity;->mClearChecked:Z

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/inbox/InboxActivity;->mBtnAllIsAll:Z

    .line 281
    iput v1, p0, Lcom/waze/inbox/InboxActivity;->mUnread:I

    .line 283
    invoke-static {}, Lcom/waze/inbox/InboxNativeManager;->getInstance()Lcom/waze/inbox/InboxNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/inbox/InboxActivity;->mInboxNativeManager:Lcom/waze/inbox/InboxNativeManager;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/inbox/InboxActivity;->mMsgList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/waze/inbox/InboxActivity;Lcom/waze/inbox/InboxMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/waze/inbox/InboxActivity;->mSelectedItem:Lcom/waze/inbox/InboxMessage;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxMessage;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mSelectedItem:Lcom/waze/inbox/InboxMessage;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/inbox/InboxActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/waze/inbox/InboxActivity;->mMoreMessages:Z

    return v0
.end method

.method static synthetic access$3(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxMsgListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/inbox/InboxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/waze/inbox/InboxActivity;->loadMoreMessages()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/inbox/InboxActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/waze/inbox/InboxActivity;->getSelectedIds()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mInboxNativeManager:Lcom/waze/inbox/InboxNativeManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/inbox/InboxActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/waze/inbox/InboxActivity;->mClearChecked:Z

    return-void
.end method

.method static synthetic access$8(Lcom/waze/inbox/InboxActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/waze/inbox/InboxActivity;->mBtnAllIsAll:Z

    return v0
.end method

.method private getSelectedIds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    iget-object v2, p0, Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;

    invoke-virtual {v2}, Lcom/waze/inbox/InboxMsgListAdapter;->getCheckedIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 157
    .local v1, size:I
    if-nez v1, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 160
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    .line 161
    .local v0, ids:[Ljava/lang/String;
    iget-object v2, p0, Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;

    invoke-virtual {v2}, Lcom/waze/inbox/InboxMsgListAdapter;->getCheckedIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadMoreMessages()V
    .locals 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/waze/inbox/InboxActivity;->mLoadingMore:Z

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v0, "INBOX"

    const-string v1, "Loading more messages"

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mInboxNativeManager:Lcom/waze/inbox/InboxNativeManager;

    invoke-virtual {v0}, Lcom/waze/inbox/InboxNativeManager;->loadMoreMessages()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/inbox/InboxActivity;->mLoadingMore:Z

    .line 149
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mStatusText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mStatusBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0
.end method

.method private setBottomBar()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 168
    invoke-direct {p0}, Lcom/waze/inbox/InboxActivity;->getSelectedIds()[Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, ids:[Ljava/lang/String;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 170
    .local v2, nm:Lcom/waze/NativeManager;
    if-nez v1, :cond_0

    .line 172
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_UNREAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, unread:Ljava/lang/String;
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_ALL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, all:Ljava/lang/String;
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mBtnAll:Lcom/waze/view/button/ImageButtonLeft;

    const v6, 0x7f020348

    invoke-virtual {v5, v6}, Lcom/waze/view/button/ImageButtonLeft;->setImageResource(I)V

    .line 175
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mBtnAll:Lcom/waze/view/button/ImageButtonLeft;

    invoke-virtual {v5, v0}, Lcom/waze/view/button/ImageButtonLeft;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mBtnDelete:Lcom/waze/view/button/ImageButtonLeft;

    invoke-virtual {v5, v8}, Lcom/waze/view/button/ImageButtonLeft;->setVisibility(I)V

    .line 177
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mBtnMarkRead:Lcom/waze/view/button/ImageButtonLeft;

    invoke-virtual {v5, v8}, Lcom/waze/view/button/ImageButtonLeft;->setVisibility(I)V

    .line 178
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mStatusText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/waze/inbox/InboxActivity;->mUnread:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/waze/inbox/InboxActivity;->mBtnAllIsAll:Z

    .line 196
    .end local v0           #all:Ljava/lang/String;
    .end local v4           #unread:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mStatusBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 197
    return-void

    .line 185
    :cond_0
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_NONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, none:Ljava/lang/String;
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mBtnAll:Lcom/waze/view/button/ImageButtonLeft;

    const v6, 0x7f020349

    invoke-virtual {v5, v6}, Lcom/waze/view/button/ImageButtonLeft;->setImageResource(I)V

    .line 187
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mBtnAll:Lcom/waze/view/button/ImageButtonLeft;

    invoke-virtual {v5, v3}, Lcom/waze/view/button/ImageButtonLeft;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mBtnDelete:Lcom/waze/view/button/ImageButtonLeft;

    invoke-virtual {v5, v7}, Lcom/waze/view/button/ImageButtonLeft;->setVisibility(I)V

    .line 189
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mBtnDelete:Lcom/waze/view/button/ImageButtonLeft;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_DELETE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/waze/view/button/ImageButtonLeft;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mBtnMarkRead:Lcom/waze/view/button/ImageButtonLeft;

    invoke-virtual {v5, v7}, Lcom/waze/view/button/ImageButtonLeft;->setVisibility(I)V

    .line 191
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mBtnMarkRead:Lcom/waze/view/button/ImageButtonLeft;

    .line 192
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_MARK_AS_READ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual {v5, v6}, Lcom/waze/view/button/ImageButtonLeft;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v5, p0, Lcom/waze/inbox/InboxActivity;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iput-boolean v7, p0, Lcom/waze/inbox/InboxActivity;->mBtnAllIsAll:Z

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 90
    if-ne p2, v0, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/waze/inbox/InboxActivity;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/waze/inbox/InboxActivity;->finish()V

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public onCheckClicked(IZ)V
    .locals 0
    .parameter "item"
    .parameter "isChecked"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/waze/inbox/InboxActivity;->setBottomBar()V

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v1, 0x7f03006a

    invoke-virtual {p0, v1}, Lcom/waze/inbox/InboxActivity;->setContentView(I)V

    .line 58
    const v1, 0x7f090326

    invoke-virtual {p0, v1}, Lcom/waze/inbox/InboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/waze/inbox/InboxActivity;->mListView:Landroid/widget/ListView;

    .line 59
    new-instance v1, Lcom/waze/inbox/InboxMsgListAdapter;

    iget-object v2, p0, Lcom/waze/inbox/InboxActivity;->mMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, p0}, Lcom/waze/inbox/InboxMsgListAdapter;-><init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/util/ArrayList;Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;)V

    iput-object v1, p0, Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;

    .line 60
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/waze/inbox/InboxActivity;->mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/waze/inbox/InboxActivity;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 63
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;

    invoke-virtual {v1}, Lcom/waze/inbox/InboxMsgListAdapter;->prepare()V

    .line 66
    const v1, 0x7f090327

    invoke-virtual {p0, v1}, Lcom/waze/inbox/InboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/waze/inbox/InboxActivity;->mStatusBar:Landroid/widget/RelativeLayout;

    .line 67
    const v1, 0x7f09032d

    invoke-virtual {p0, v1}, Lcom/waze/inbox/InboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/inbox/InboxActivity;->mStatusText:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f09032b

    invoke-virtual {p0, v1}, Lcom/waze/inbox/InboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/button/ImageButtonLeft;

    iput-object v1, p0, Lcom/waze/inbox/InboxActivity;->mBtnDelete:Lcom/waze/view/button/ImageButtonLeft;

    .line 69
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity;->mBtnDelete:Lcom/waze/view/button/ImageButtonLeft;

    iget-object v2, p0, Lcom/waze/inbox/InboxActivity;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/waze/view/button/ImageButtonLeft;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f09032c

    invoke-virtual {p0, v1}, Lcom/waze/inbox/InboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/button/ImageButtonLeft;

    iput-object v1, p0, Lcom/waze/inbox/InboxActivity;->mBtnMarkRead:Lcom/waze/view/button/ImageButtonLeft;

    .line 71
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity;->mBtnMarkRead:Lcom/waze/view/button/ImageButtonLeft;

    iget-object v2, p0, Lcom/waze/inbox/InboxActivity;->mOnMarkReadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/waze/view/button/ImageButtonLeft;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f09032a

    invoke-virtual {p0, v1}, Lcom/waze/inbox/InboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/button/ImageButtonLeft;

    iput-object v1, p0, Lcom/waze/inbox/InboxActivity;->mBtnAll:Lcom/waze/view/button/ImageButtonLeft;

    .line 73
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity;->mBtnAll:Lcom/waze/view/button/ImageButtonLeft;

    iget-object v2, p0, Lcom/waze/inbox/InboxActivity;->mOnAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/waze/view/button/ImageButtonLeft;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f090323

    invoke-virtual {p0, v1}, Lcom/waze/inbox/InboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    iput-object v1, p0, Lcom/waze/inbox/InboxActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    .line 78
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_INBOX:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    invoke-virtual {v1, p0, v0}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity;->mInboxNativeManager:Lcom/waze/inbox/InboxNativeManager;

    invoke-virtual {v1, p0}, Lcom/waze/inbox/InboxNativeManager;->addDataListener(Lcom/waze/inbox/InboxNativeManager$InboxDataListener;)V

    .line 83
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity;->mInboxNativeManager:Lcom/waze/inbox/InboxNativeManager;

    invoke-virtual {v1, p0}, Lcom/waze/inbox/InboxNativeManager;->getMessageList(Lcom/waze/inbox/InboxNativeManager$InboxDataListener;)V

    .line 85
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity;->mInboxNativeManager:Lcom/waze/inbox/InboxNativeManager;

    invoke-virtual {v1}, Lcom/waze/inbox/InboxNativeManager;->resetInboxBadge()V

    .line 86
    return-void
.end method

.method public onData([Lcom/waze/inbox/InboxMessage;IIZ)V
    .locals 4
    .parameter "msgList"
    .parameter "badge"
    .parameter "unread"
    .parameter "more"

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/waze/inbox/InboxActivity;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "INBOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inbox messages are loaded. Size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " .Unread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". More: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput-boolean p4, p0, Lcom/waze/inbox/InboxActivity;->mMoreMessages:Z

    .line 114
    iput p3, p0, Lcom/waze/inbox/InboxActivity;->mUnread:I

    .line 115
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mMsgList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;

    invoke-virtual {v0}, Lcom/waze/inbox/InboxMsgListAdapter;->refresh()V

    .line 119
    iget-boolean v0, p0, Lcom/waze/inbox/InboxActivity;->mLoadingMore:Z

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;

    invoke-virtual {v0, v3}, Lcom/waze/inbox/InboxMsgListAdapter;->setLoading(Z)V

    .line 122
    iput-boolean v3, p0, Lcom/waze/inbox/InboxActivity;->mLoadingMore:Z

    .line 125
    :cond_1
    iget-boolean v0, p0, Lcom/waze/inbox/InboxActivity;->mClearChecked:Z

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;

    invoke-virtual {v0}, Lcom/waze/inbox/InboxMsgListAdapter;->clearChecked()V

    .line 128
    iput-boolean v3, p0, Lcom/waze/inbox/InboxActivity;->mClearChecked:Z

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/waze/inbox/InboxActivity;->setBottomBar()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity;->mInboxNativeManager:Lcom/waze/inbox/InboxNativeManager;

    invoke-virtual {v0, p0}, Lcom/waze/inbox/InboxNativeManager;->removeDataListener(Lcom/waze/inbox/InboxNativeManager$InboxDataListener;)V

    .line 103
    return-void
.end method
