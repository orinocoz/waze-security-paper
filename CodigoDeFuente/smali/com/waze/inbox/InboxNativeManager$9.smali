.class Lcom/waze/inbox/InboxNativeManager$9;
.super Ljava/lang/Object;
.source "InboxNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/inbox/InboxNativeManager;->showMessage(Lcom/waze/inbox/InboxMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/inbox/InboxNativeManager;

.field private final synthetic val$activity:Lcom/waze/ifs/ui/ActivityBase;

.field private final synthetic val$msg:Lcom/waze/inbox/InboxMessage;

.field private final synthetic val$showInbox:Z


# direct methods
.method constructor <init>(Lcom/waze/inbox/InboxNativeManager;Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/inbox/InboxMessage;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/inbox/InboxNativeManager$9;->this$0:Lcom/waze/inbox/InboxNativeManager;

    iput-object p2, p0, Lcom/waze/inbox/InboxNativeManager$9;->val$activity:Lcom/waze/ifs/ui/ActivityBase;

    iput-object p3, p0, Lcom/waze/inbox/InboxNativeManager$9;->val$msg:Lcom/waze/inbox/InboxMessage;

    iput-boolean p4, p0, Lcom/waze/inbox/InboxNativeManager$9;->val$showInbox:Z

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager$9;->val$activity:Lcom/waze/ifs/ui/ActivityBase;

    iget-object v1, p0, Lcom/waze/inbox/InboxNativeManager$9;->val$msg:Lcom/waze/inbox/InboxMessage;

    iget-boolean v2, p0, Lcom/waze/inbox/InboxNativeManager$9;->val$showInbox:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/waze/inbox/InboxPreviewActivity;->Start(Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)V

    .line 223
    return-void
.end method
