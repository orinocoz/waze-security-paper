.class public Lcom/waze/messages/MessagesNativeManager;
.super Ljava/lang/Object;
.source "MessagesNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/messages/MessagesNativeManager$EditorContext;,
        Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/waze/messages/MessagesNativeManager;


# instance fields
.field private final mOnSendHandler:Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;

.field private mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/messages/MessagesNativeManager;->mInstance:Lcom/waze/messages/MessagesNativeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;

    .line 221
    new-instance v0, Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;

    invoke-direct {v0}, Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;-><init>()V

    iput-object v0, p0, Lcom/waze/messages/MessagesNativeManager;->mOnSendHandler:Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;

    .line 20
    return-void
.end method

.method private native InitNativeLayerNTV()V
.end method

.method static synthetic access$0(Lcom/waze/messages/MessagesNativeManager;ZLcom/waze/user/UserData;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/messages/MessagesNativeManager;->onSendMessageNTV(ZLcom/waze/user/UserData;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/messages/MessagesNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/waze/messages/MessagesNativeManager;->InitNativeLayerNTV()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/messages/MessagesNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/waze/messages/MessagesNativeManager;->startPrivateMessageNTV()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/messages/MessagesNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/waze/messages/MessagesNativeManager;->startPublicMessageNTV()V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/messages/MessagesNativeManager;)Lcom/waze/messages/MessagesNativeManager$EditorContext;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/messages/MessagesNativeManager;)Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/waze/messages/MessagesNativeManager;->mOnSendHandler:Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/messages/MessagesNativeManager;Lcom/waze/messages/MessagesNativeManager$EditorContext;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;

    return-void
.end method

.method private cancelPrivateMessageEditor()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/waze/messages/MessagesNativeManager$5;

    invoke-direct {v0, p0}, Lcom/waze/messages/MessagesNativeManager$5;-><init>(Lcom/waze/messages/MessagesNativeManager;)V

    .line 127
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public static create()Lcom/waze/messages/MessagesNativeManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/waze/messages/MessagesNativeManager;->mInstance:Lcom/waze/messages/MessagesNativeManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/waze/messages/MessagesNativeManager;

    invoke-direct {v0}, Lcom/waze/messages/MessagesNativeManager;-><init>()V

    sput-object v0, Lcom/waze/messages/MessagesNativeManager;->mInstance:Lcom/waze/messages/MessagesNativeManager;

    .line 33
    sget-object v0, Lcom/waze/messages/MessagesNativeManager;->mInstance:Lcom/waze/messages/MessagesNativeManager;

    invoke-direct {v0}, Lcom/waze/messages/MessagesNativeManager;->initNativeLayer()V

    .line 35
    :cond_0
    sget-object v0, Lcom/waze/messages/MessagesNativeManager;->mInstance:Lcom/waze/messages/MessagesNativeManager;

    return-object v0
.end method

.method public static getInstance()Lcom/waze/messages/MessagesNativeManager;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/waze/messages/MessagesNativeManager;->create()Lcom/waze/messages/MessagesNativeManager;

    .line 25
    sget-object v0, Lcom/waze/messages/MessagesNativeManager;->mInstance:Lcom/waze/messages/MessagesNativeManager;

    return-object v0
.end method

.method private initNativeLayer()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/waze/messages/MessagesNativeManager$1;

    invoke-direct {v0, p0}, Lcom/waze/messages/MessagesNativeManager$1;-><init>(Lcom/waze/messages/MessagesNativeManager;)V

    .line 46
    .local v0, event:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method private native onSendMessageNTV(ZLcom/waze/user/UserData;Ljava/lang/String;)V
.end method

.method private showPrivateMessageEditor(Lcom/waze/user/UserData;)V
    .locals 4
    .parameter "userData"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;

    if-nez v1, :cond_1

    .line 97
    if-nez p1, :cond_0

    .line 99
    const-string v1, "Messages"

    const-string v2, "There is no ping editor request active. Ignoring showing"

    invoke-static {v1, v2}, Lcom/waze/Logger;->w_(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v1, Lcom/waze/messages/MessagesNativeManager$EditorContext;

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lcom/waze/messages/MessagesNativeManager$EditorContext;-><init>(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/user/UserData;)V

    iput-object v1, p0, Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;

    .line 105
    :cond_1
    new-instance v0, Lcom/waze/messages/MessagesNativeManager$4;

    invoke-direct {v0, p0}, Lcom/waze/messages/MessagesNativeManager$4;-><init>(Lcom/waze/messages/MessagesNativeManager;)V

    .line 116
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showPublicMessageEditor(Lcom/waze/user/UserData;)V
    .locals 4
    .parameter "userData"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;

    if-nez v1, :cond_1

    .line 134
    if-nez p1, :cond_0

    .line 136
    const-string v1, "Messages"

    const-string v2, "There is no ping editor request active. Ignoring showing"

    invoke-static {v1, v2}, Lcom/waze/Logger;->w_(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v1, Lcom/waze/messages/MessagesNativeManager$EditorContext;

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/waze/messages/MessagesNativeManager$EditorContext;-><init>(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/user/UserData;)V

    iput-object v1, p0, Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;

    .line 142
    :cond_1
    new-instance v0, Lcom/waze/messages/MessagesNativeManager$6;

    invoke-direct {v0, p0}, Lcom/waze/messages/MessagesNativeManager$6;-><init>(Lcom/waze/messages/MessagesNativeManager;)V

    .line 153
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private native startPrivateMessageNTV()V
.end method

.method private native startPublicMessageNTV()V
.end method


# virtual methods
.method public sendMessage(ZLcom/waze/user/UserData;Ljava/lang/String;)V
    .locals 1
    .parameter "isPrivate"
    .parameter "userData"
    .parameter "text"

    .prologue
    .line 178
    new-instance v0, Lcom/waze/messages/MessagesNativeManager$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/messages/MessagesNativeManager$7;-><init>(Lcom/waze/messages/MessagesNativeManager;ZLcom/waze/user/UserData;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public startPrivate(Lcom/waze/messages/MessagesNativeManager$EditorContext;)V
    .locals 3
    .parameter "editorContext"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "Messages"

    const-string v2, "There is already message editor request active. Ignoring start"

    invoke-static {v1, v2}, Lcom/waze/Logger;->w_(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/waze/messages/MessagesNativeManager$2;

    invoke-direct {v0, p0}, Lcom/waze/messages/MessagesNativeManager$2;-><init>(Lcom/waze/messages/MessagesNativeManager;)V

    .line 67
    .local v0, r:Ljava/lang/Runnable;
    iput-object p1, p0, Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;

    .line 68
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected startPublic(Lcom/waze/messages/MessagesNativeManager$EditorContext;)V
    .locals 3
    .parameter "editorContext"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "Messages"

    const-string v2, "There is already message editor request active. Ignoring start"

    invoke-static {v1, v2}, Lcom/waze/Logger;->w_(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/waze/messages/MessagesNativeManager$3;

    invoke-direct {v0, p0}, Lcom/waze/messages/MessagesNativeManager$3;-><init>(Lcom/waze/messages/MessagesNativeManager;)V

    .line 89
    .local v0, r:Ljava/lang/Runnable;
    iput-object p1, p0, Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;

    .line 90
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
