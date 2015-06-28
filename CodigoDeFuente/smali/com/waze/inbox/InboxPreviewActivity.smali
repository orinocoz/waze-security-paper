.class public Lcom/waze/inbox/InboxPreviewActivity;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "InboxPreviewActivity.java"


# instance fields
.field private mMessage:Lcom/waze/inbox/InboxMessage;

.field private mShowInbox:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/waze/view/web/SimpleWebActivity;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/inbox/InboxPreviewActivity;->mShowInbox:Z

    .line 26
    return-void
.end method

.method public static Start(Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "context"
    .parameter "msg"
    .parameter "showInbox"

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/waze/inbox/InboxPreviewActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/inbox/InboxPreviewActivity$1;-><init>(Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)V

    .line 55
    .local v0, urlHandler:Lcom/waze/NativeManager$OnUrlHandleResult;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    iget-object v2, p1, Lcom/waze/inbox/InboxMessage;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;Lcom/waze/NativeManager$OnUrlHandleResult;)V

    goto :goto_0
.end method

.method private static StartOnUrlHandled(Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)Z
    .locals 2
    .parameter "context"
    .parameter "msg"
    .parameter "showInbox"

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 62
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object p0

    .line 64
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/inbox/InboxPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Selected message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    if-eqz p2, :cond_1

    .line 67
    const-string v1, "Show inbox"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 68
    :cond_1
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic access$0(Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Lcom/waze/inbox/InboxPreviewActivity;->StartOnUrlHandled(Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/waze/inbox/InboxPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Selected message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/waze/inbox/InboxMessage;

    iput-object v1, p0, Lcom/waze/inbox/InboxPreviewActivity;->mMessage:Lcom/waze/inbox/InboxMessage;

    .line 78
    invoke-virtual {p0}, Lcom/waze/inbox/InboxPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Show inbox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/inbox/InboxPreviewActivity;->mShowInbox:Z

    .line 80
    iget-object v1, p0, Lcom/waze/inbox/InboxPreviewActivity;->mMessage:Lcom/waze/inbox/InboxMessage;

    iget-object v0, v1, Lcom/waze/inbox/InboxMessage;->title:Ljava/lang/String;

    .line 82
    .local v0, title:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/waze/inbox/InboxPreviewActivity;->setTitleStr(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onWebViewSize(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 88
    iget-object v4, p0, Lcom/waze/inbox/InboxPreviewActivity;->mMessage:Lcom/waze/inbox/InboxMessage;

    iget v4, v4, Lcom/waze/inbox/InboxMessage;->messageType:I

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/waze/inbox/InboxPreviewActivity;->mMessage:Lcom/waze/inbox/InboxMessage;

    iget v4, v4, Lcom/waze/inbox/InboxMessage;->messageType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 91
    :cond_0
    iget-object v4, p0, Lcom/waze/inbox/InboxPreviewActivity;->mMessage:Lcom/waze/inbox/InboxMessage;

    iget-object v4, v4, Lcom/waze/inbox/InboxMessage;->message:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/waze/inbox/InboxPreviewActivity;->loadUrl(Ljava/lang/String;)V

    .line 93
    :cond_1
    iget-object v4, p0, Lcom/waze/inbox/InboxPreviewActivity;->mMessage:Lcom/waze/inbox/InboxMessage;

    iget v4, v4, Lcom/waze/inbox/InboxMessage;->messageType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/waze/inbox/InboxPreviewActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, dir:Ljava/io/File;
    const-string v4, "content"

    const-string v5, ".tmp"

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 99
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 100
    .local v3, fos:Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/waze/inbox/InboxPreviewActivity;->mMessage:Lcom/waze/inbox/InboxMessage;

    iget-object v4, v4, Lcom/waze/inbox/InboxMessage;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 101
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 102
    const-string v4, "WAZE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Loading html from file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/waze/inbox/InboxPreviewActivity;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 107
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "WAZE"

    const-string v5, "IO exception while creating message preview temp file!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    .end local v1           #ex:Ljava/io/IOException;
    :cond_2
    const-string v4, "WAZE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unsupported message type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/waze/inbox/InboxPreviewActivity;->mMessage:Lcom/waze/inbox/InboxMessage;

    iget v6, v6, Lcom/waze/inbox/InboxMessage;->messageType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
