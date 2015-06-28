.class Lcom/waze/inbox/InboxPreviewActivity$1;
.super Lcom/waze/NativeManager$OnUrlHandleResult;
.source "InboxPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/inbox/InboxPreviewActivity;->Start(Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/app/Activity;

.field private final synthetic val$msg:Lcom/waze/inbox/InboxMessage;

.field private final synthetic val$showInbox:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/inbox/InboxPreviewActivity$1;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/waze/inbox/InboxPreviewActivity$1;->val$msg:Lcom/waze/inbox/InboxMessage;

    iput-object p3, p0, Lcom/waze/inbox/InboxPreviewActivity$1;->val$showInbox:Ljava/lang/Boolean;

    .line 33
    invoke-direct {p0}, Lcom/waze/NativeManager$OnUrlHandleResult;-><init>()V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 4

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/waze/inbox/InboxPreviewActivity$1;->result:Z

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "INBOX"

    const-string v1, "Url was handled - ignoring preview"

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/waze/inbox/InboxPreviewActivity$1$1;

    iget-object v1, p0, Lcom/waze/inbox/InboxPreviewActivity$1;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/waze/inbox/InboxPreviewActivity$1;->val$msg:Lcom/waze/inbox/InboxMessage;

    iget-object v3, p0, Lcom/waze/inbox/InboxPreviewActivity$1;->val$showInbox:Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/waze/inbox/InboxPreviewActivity$1$1;-><init>(Lcom/waze/inbox/InboxPreviewActivity$1;Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
