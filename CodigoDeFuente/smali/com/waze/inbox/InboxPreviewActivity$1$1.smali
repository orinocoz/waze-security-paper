.class Lcom/waze/inbox/InboxPreviewActivity$1$1;
.super Ljava/lang/Object;
.source "InboxPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/inbox/InboxPreviewActivity$1;->event()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/inbox/InboxPreviewActivity$1;

.field private final synthetic val$context:Landroid/app/Activity;

.field private final synthetic val$msg:Lcom/waze/inbox/InboxMessage;

.field private final synthetic val$showInbox:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/waze/inbox/InboxPreviewActivity$1;Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/inbox/InboxPreviewActivity$1$1;->this$1:Lcom/waze/inbox/InboxPreviewActivity$1;

    iput-object p2, p0, Lcom/waze/inbox/InboxPreviewActivity$1$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/waze/inbox/InboxPreviewActivity$1$1;->val$msg:Lcom/waze/inbox/InboxMessage;

    iput-object p4, p0, Lcom/waze/inbox/InboxPreviewActivity$1$1;->val$showInbox:Ljava/lang/Boolean;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/waze/inbox/InboxPreviewActivity$1$1;->val$context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/waze/inbox/InboxPreviewActivity$1$1;->val$msg:Lcom/waze/inbox/InboxMessage;

    iget-object v2, p0, Lcom/waze/inbox/InboxPreviewActivity$1$1;->val$showInbox:Ljava/lang/Boolean;

    #calls: Lcom/waze/inbox/InboxPreviewActivity;->StartOnUrlHandled(Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)Z
    invoke-static {v0, v1, v2}, Lcom/waze/inbox/InboxPreviewActivity;->access$0(Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)Z

    .line 49
    return-void
.end method
