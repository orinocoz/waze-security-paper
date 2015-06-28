.class public Lcom/waze/inbox/InboxNativeManager;
.super Ljava/lang/Object;
.source "InboxNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/inbox/InboxNativeManager$IInboxMessageListDataHandler;,
        Lcom/waze/inbox/InboxNativeManager$InboxCountersHandler;,
        Lcom/waze/inbox/InboxNativeManager$InboxDataListener;
    }
.end annotation


# static fields
.field public static final INBOX_STATUS_FAILURE:I = -0x80000000

.field public static final INBOX_STATUS_FAILURE_TIMEOUT:I = -0x7fffffff

.field public static final INBOX_STATUS_MORE_MESSAGES:I = 0x1

.field public static final INBOX_STATUS_SUCCESS:I

.field private static mInstance:Lcom/waze/inbox/InboxNativeManager;


# instance fields
.field private final mInboxDataListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/inbox/InboxNativeManager$InboxDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/inbox/InboxNativeManager;->mInstance:Lcom/waze/inbox/InboxNativeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/inbox/InboxNativeManager;->mRefreshActive:Z

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/inbox/InboxNativeManager;->mInboxDataListeners:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method private native InitNativeLayerNTV()V
.end method

.method static synthetic access$0()Lcom/waze/inbox/InboxNativeManager;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/waze/inbox/InboxNativeManager;->mInstance:Lcom/waze/inbox/InboxNativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/inbox/InboxNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->registerDataListenerNTV()V

    return-void
.end method

.method static synthetic access$10(Lcom/waze/inbox/InboxNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->refreshNTV()V

    return-void
.end method

.method static synthetic access$11(Lcom/waze/inbox/InboxNativeManager;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/waze/inbox/InboxNativeManager;->deleteMessagesNTV([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/waze/inbox/InboxNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->deleteAllMessagesNTV()V

    return-void
.end method

.method static synthetic access$13(Lcom/waze/inbox/InboxNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->resetInboxBadgeNTV()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/inbox/InboxNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->InitNativeLayerNTV()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/inbox/InboxNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->notifyDataListeners()V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/inbox/InboxNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->loadMoreMessagesNTV()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/inbox/InboxNativeManager;)I
    .locals 1
    .parameter

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->getInboxUnreadNTV()I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/waze/inbox/InboxNativeManager;)I
    .locals 1
    .parameter

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->getInboxSizeNTV()I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/waze/inbox/InboxNativeManager;)I
    .locals 1
    .parameter

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->getInboxBadgeNTV()I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/waze/inbox/InboxNativeManager;[Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/waze/inbox/InboxNativeManager;->setReadNTV([Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/waze/inbox/InboxNativeManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager;->mInboxDataListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static create()Lcom/waze/inbox/InboxNativeManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/waze/inbox/InboxNativeManager;->mInstance:Lcom/waze/inbox/InboxNativeManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/waze/inbox/InboxNativeManager;

    invoke-direct {v0}, Lcom/waze/inbox/InboxNativeManager;-><init>()V

    sput-object v0, Lcom/waze/inbox/InboxNativeManager;->mInstance:Lcom/waze/inbox/InboxNativeManager;

    .line 35
    sget-object v0, Lcom/waze/inbox/InboxNativeManager;->mInstance:Lcom/waze/inbox/InboxNativeManager;

    invoke-direct {v0}, Lcom/waze/inbox/InboxNativeManager;->initNativeLayer()V

    .line 36
    new-instance v0, Lcom/waze/inbox/InboxNativeManager$1;

    invoke-direct {v0}, Lcom/waze/inbox/InboxNativeManager$1;-><init>()V

    invoke-static {v0}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 43
    :cond_0
    sget-object v0, Lcom/waze/inbox/InboxNativeManager;->mInstance:Lcom/waze/inbox/InboxNativeManager;

    return-object v0
.end method

.method private native deleteAllMessagesNTV()V
.end method

.method private native deleteMessagesNTV([Ljava/lang/String;)V
.end method

.method private native getInboxBadgeNTV()I
.end method

.method private native getInboxSizeNTV()I
.end method

.method private native getInboxUnreadNTV()I
.end method

.method public static getInstance()Lcom/waze/inbox/InboxNativeManager;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/waze/inbox/InboxNativeManager;->create()Lcom/waze/inbox/InboxNativeManager;

    .line 27
    sget-object v0, Lcom/waze/inbox/InboxNativeManager;->mInstance:Lcom/waze/inbox/InboxNativeManager;

    return-object v0
.end method

.method private native getMessageListNTV()[Lcom/waze/inbox/InboxMessage;
.end method

.method private initNativeLayer()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/waze/inbox/InboxNativeManager$2;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxNativeManager$2;-><init>(Lcom/waze/inbox/InboxNativeManager;)V

    .line 54
    .local v0, event:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method private native loadMoreMessagesNTV()V
.end method

.method private native moreMessagesNTV()Z
.end method

.method private notifyDataListeners()V
    .locals 6

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->getInboxUnreadNTV()I

    move-result v4

    .line 174
    .local v4, unread:I
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->getMessageListNTV()[Lcom/waze/inbox/InboxMessage;

    move-result-object v2

    .line 175
    .local v2, list:[Lcom/waze/inbox/InboxMessage;
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->moreMessagesNTV()Z

    move-result v5

    .line 176
    .local v5, more:Z
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->getInboxBadgeNTV()I

    move-result v3

    .line 178
    .local v3, badge:I
    new-instance v0, Lcom/waze/inbox/InboxNativeManager$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/waze/inbox/InboxNativeManager$7;-><init>(Lcom/waze/inbox/InboxNativeManager;[Lcom/waze/inbox/InboxMessage;IIZ)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method private onDataListener()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/waze/inbox/InboxNativeManager;->notifyDataListeners()V

    .line 260
    return-void
.end method

.method private onDelete(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 251
    const-string v0, "INBOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "## onDelete status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private onMoreMessages(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 243
    const-string v0, "INBOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "## onMoreMessages status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private onRefresh(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 234
    const-string v0, "INBOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "## onRefresh status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method private native refreshNTV()V
.end method

.method private native registerDataListenerNTV()V
.end method

.method private native resetInboxBadgeNTV()V
.end method

.method private native setReadNTV([Ljava/lang/String;Z)V
.end method


# virtual methods
.method public addDataListener(Lcom/waze/inbox/InboxNativeManager$InboxDataListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager;->mInboxDataListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager;->mInboxDataListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deleteAllMessages()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/waze/inbox/InboxNativeManager$11;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxNativeManager$11;-><init>(Lcom/waze/inbox/InboxNativeManager;)V

    .line 284
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method public deleteMessages([Ljava/lang/String;)V
    .locals 1
    .parameter "ids"

    .prologue
    .line 267
    new-instance v0, Lcom/waze/inbox/InboxNativeManager$10;

    invoke-direct {v0, p0, p1}, Lcom/waze/inbox/InboxNativeManager$10;-><init>(Lcom/waze/inbox/InboxNativeManager;[Ljava/lang/String;)V

    .line 273
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public getInboxCounters(Lcom/waze/inbox/InboxNativeManager$InboxCountersHandler;)V
    .locals 1
    .parameter "dataHandler"

    .prologue
    .line 104
    new-instance v0, Lcom/waze/inbox/InboxNativeManager$5;

    invoke-direct {v0, p0, p1}, Lcom/waze/inbox/InboxNativeManager$5;-><init>(Lcom/waze/inbox/InboxNativeManager;Lcom/waze/inbox/InboxNativeManager$InboxCountersHandler;)V

    .line 122
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public getMessageList(Lcom/waze/inbox/InboxNativeManager$InboxDataListener;)V
    .locals 1
    .parameter "dataHandler"

    .prologue
    .line 69
    new-instance v0, Lcom/waze/inbox/InboxNativeManager$3;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxNativeManager$3;-><init>(Lcom/waze/inbox/InboxNativeManager;)V

    .line 75
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public loadMoreMessages()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/waze/inbox/InboxNativeManager$4;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxNativeManager$4;-><init>(Lcom/waze/inbox/InboxNativeManager;)V

    .line 90
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public removeDataListener(Lcom/waze/inbox/InboxNativeManager$InboxDataListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 162
    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager;->mInboxDataListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager;->mInboxDataListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestRefresh()V
    .locals 2

    .prologue
    .line 196
    iget-boolean v1, p0, Lcom/waze/inbox/InboxNativeManager;->mRefreshActive:Z

    if-eqz v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Lcom/waze/inbox/InboxNativeManager$8;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxNativeManager$8;-><init>(Lcom/waze/inbox/InboxNativeManager;)V

    .line 205
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public resetInboxBadge()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/waze/inbox/InboxNativeManager$12;

    invoke-direct {v0, p0}, Lcom/waze/inbox/InboxNativeManager$12;-><init>(Lcom/waze/inbox/InboxNativeManager;)V

    .line 295
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public setRead([Ljava/lang/String;Z)V
    .locals 1
    .parameter "ids"
    .parameter "read"

    .prologue
    .line 131
    new-instance v0, Lcom/waze/inbox/InboxNativeManager$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/inbox/InboxNativeManager$6;-><init>(Lcom/waze/inbox/InboxNativeManager;[Ljava/lang/String;Z)V

    .line 136
    .local v0, event:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method protected showMessage(Lcom/waze/inbox/InboxMessage;Z)V
    .locals 3
    .parameter "msg"
    .parameter "showInbox"

    .prologue
    .line 212
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 213
    .local v0, activity:Lcom/waze/ifs/ui/ActivityBase;
    if-nez v0, :cond_0

    .line 215
    const-string v1, "INBOX"

    const-string v2, "No activity context available"

    invoke-static {v1, v2}, Lcom/waze/Logger;->e_(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v1, Lcom/waze/inbox/InboxNativeManager$9;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/waze/inbox/InboxNativeManager$9;-><init>(Lcom/waze/inbox/InboxNativeManager;Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/inbox/InboxMessage;Z)V

    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
