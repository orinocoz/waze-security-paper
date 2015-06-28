.class Lcom/waze/inbox/InboxNativeManager$10;
.super Ljava/lang/Object;
.source "InboxNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/inbox/InboxNativeManager;->deleteMessages([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/inbox/InboxNativeManager;

.field private final synthetic val$ids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/inbox/InboxNativeManager;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/inbox/InboxNativeManager$10;->this$0:Lcom/waze/inbox/InboxNativeManager;

    iput-object p2, p0, Lcom/waze/inbox/InboxNativeManager$10;->val$ids:[Ljava/lang/String;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager$10;->this$0:Lcom/waze/inbox/InboxNativeManager;

    iget-object v1, p0, Lcom/waze/inbox/InboxNativeManager$10;->val$ids:[Ljava/lang/String;

    #calls: Lcom/waze/inbox/InboxNativeManager;->deleteMessagesNTV([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/inbox/InboxNativeManager;->access$11(Lcom/waze/inbox/InboxNativeManager;[Ljava/lang/String;)V

    .line 271
    return-void
.end method
