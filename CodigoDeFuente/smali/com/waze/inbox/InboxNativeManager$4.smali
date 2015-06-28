.class Lcom/waze/inbox/InboxNativeManager$4;
.super Ljava/lang/Object;
.source "InboxNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/inbox/InboxNativeManager;->loadMoreMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/inbox/InboxNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/inbox/InboxNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/inbox/InboxNativeManager$4;->this$0:Lcom/waze/inbox/InboxNativeManager;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager$4;->this$0:Lcom/waze/inbox/InboxNativeManager;

    #calls: Lcom/waze/inbox/InboxNativeManager;->loadMoreMessagesNTV()V
    invoke-static {v0}, Lcom/waze/inbox/InboxNativeManager;->access$4(Lcom/waze/inbox/InboxNativeManager;)V

    .line 88
    return-void
.end method
