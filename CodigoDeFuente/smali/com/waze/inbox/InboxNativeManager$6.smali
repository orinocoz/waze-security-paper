.class Lcom/waze/inbox/InboxNativeManager$6;
.super Ljava/lang/Object;
.source "InboxNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/inbox/InboxNativeManager;->setRead([Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/inbox/InboxNativeManager;

.field private final synthetic val$ids:[Ljava/lang/String;

.field private final synthetic val$read:Z


# direct methods
.method constructor <init>(Lcom/waze/inbox/InboxNativeManager;[Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/inbox/InboxNativeManager$6;->this$0:Lcom/waze/inbox/InboxNativeManager;

    iput-object p2, p0, Lcom/waze/inbox/InboxNativeManager$6;->val$ids:[Ljava/lang/String;

    iput-boolean p3, p0, Lcom/waze/inbox/InboxNativeManager$6;->val$read:Z

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager$6;->this$0:Lcom/waze/inbox/InboxNativeManager;

    iget-object v1, p0, Lcom/waze/inbox/InboxNativeManager$6;->val$ids:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/waze/inbox/InboxNativeManager$6;->val$read:Z

    #calls: Lcom/waze/inbox/InboxNativeManager;->setReadNTV([Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/waze/inbox/InboxNativeManager;->access$8(Lcom/waze/inbox/InboxNativeManager;[Ljava/lang/String;Z)V

    .line 134
    return-void
.end method
