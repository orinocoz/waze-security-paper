.class Lcom/waze/messages/MessagesNativeManager$5;
.super Ljava/lang/Object;
.source "MessagesNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/messages/MessagesNativeManager;->cancelPrivateMessageEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/messages/MessagesNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/messages/MessagesNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/messages/MessagesNativeManager$5;->this$0:Lcom/waze/messages/MessagesNativeManager;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/waze/messages/MessagesNativeManager$5;->this$0:Lcom/waze/messages/MessagesNativeManager;

    const/4 v1, 0x0

    #setter for: Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;
    invoke-static {v0, v1}, Lcom/waze/messages/MessagesNativeManager;->access$6(Lcom/waze/messages/MessagesNativeManager;Lcom/waze/messages/MessagesNativeManager$EditorContext;)V

    .line 125
    return-void
.end method
