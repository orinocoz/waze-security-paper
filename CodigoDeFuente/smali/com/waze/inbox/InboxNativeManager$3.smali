.class Lcom/waze/inbox/InboxNativeManager$3;
.super Ljava/lang/Object;
.source "InboxNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/inbox/InboxNativeManager;->getMessageList(Lcom/waze/inbox/InboxNativeManager$InboxDataListener;)V
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
    iput-object p1, p0, Lcom/waze/inbox/InboxNativeManager$3;->this$0:Lcom/waze/inbox/InboxNativeManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager$3;->this$0:Lcom/waze/inbox/InboxNativeManager;

    #calls: Lcom/waze/inbox/InboxNativeManager;->notifyDataListeners()V
    invoke-static {v0}, Lcom/waze/inbox/InboxNativeManager;->access$3(Lcom/waze/inbox/InboxNativeManager;)V

    .line 73
    return-void
.end method
