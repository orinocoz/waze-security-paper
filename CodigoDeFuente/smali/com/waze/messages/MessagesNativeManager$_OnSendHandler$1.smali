.class Lcom/waze/messages/MessagesNativeManager$_OnSendHandler$1;
.super Ljava/lang/Object;
.source "MessagesNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;->onSend(ZLcom/waze/user/UserData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;

.field private final synthetic val$isPrivate:Z

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$userData:Lcom/waze/user/UserData;


# direct methods
.method constructor <init>(Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;ZLcom/waze/user/UserData;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/messages/MessagesNativeManager$_OnSendHandler$1;->this$1:Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;

    iput-boolean p2, p0, Lcom/waze/messages/MessagesNativeManager$_OnSendHandler$1;->val$isPrivate:Z

    iput-object p3, p0, Lcom/waze/messages/MessagesNativeManager$_OnSendHandler$1;->val$userData:Lcom/waze/user/UserData;

    iput-object p4, p0, Lcom/waze/messages/MessagesNativeManager$_OnSendHandler$1;->val$text:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    invoke-static {}, Lcom/waze/messages/MessagesNativeManager;->getInstance()Lcom/waze/messages/MessagesNativeManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/messages/MessagesNativeManager$_OnSendHandler$1;->val$isPrivate:Z

    iget-object v2, p0, Lcom/waze/messages/MessagesNativeManager$_OnSendHandler$1;->val$userData:Lcom/waze/user/UserData;

    iget-object v3, p0, Lcom/waze/messages/MessagesNativeManager$_OnSendHandler$1;->val$text:Ljava/lang/String;

    #calls: Lcom/waze/messages/MessagesNativeManager;->onSendMessageNTV(ZLcom/waze/user/UserData;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/messages/MessagesNativeManager;->access$0(Lcom/waze/messages/MessagesNativeManager;ZLcom/waze/user/UserData;Ljava/lang/String;)V

    .line 170
    return-void
.end method
