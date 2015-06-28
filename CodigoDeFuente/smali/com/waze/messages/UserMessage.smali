.class public Lcom/waze/messages/UserMessage;
.super Ljava/lang/Object;
.source "UserMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startPrivate(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/user/UserData;)V
    .locals 3
    .parameter "context"
    .parameter "userData"

    .prologue
    .line 20
    invoke-static {}, Lcom/waze/messages/MessagesNativeManager;->getInstance()Lcom/waze/messages/MessagesNativeManager;

    move-result-object v1

    .line 21
    .local v1, nm:Lcom/waze/messages/MessagesNativeManager;
    new-instance v0, Lcom/waze/messages/MessagesNativeManager$EditorContext;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, p1}, Lcom/waze/messages/MessagesNativeManager$EditorContext;-><init>(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/user/UserData;)V

    .line 22
    .local v0, editorContext:Lcom/waze/messages/MessagesNativeManager$EditorContext;
    invoke-virtual {v1, v0}, Lcom/waze/messages/MessagesNativeManager;->startPrivate(Lcom/waze/messages/MessagesNativeManager$EditorContext;)V

    .line 23
    return-void
.end method

.method public static startPublic(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/user/UserData;)V
    .locals 3
    .parameter "context"
    .parameter "userData"

    .prologue
    .line 27
    invoke-static {}, Lcom/waze/messages/MessagesNativeManager;->getInstance()Lcom/waze/messages/MessagesNativeManager;

    move-result-object v1

    .line 28
    .local v1, nm:Lcom/waze/messages/MessagesNativeManager;
    new-instance v0, Lcom/waze/messages/MessagesNativeManager$EditorContext;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1}, Lcom/waze/messages/MessagesNativeManager$EditorContext;-><init>(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/user/UserData;)V

    .line 29
    .local v0, editorContext:Lcom/waze/messages/MessagesNativeManager$EditorContext;
    invoke-virtual {v1, v0}, Lcom/waze/messages/MessagesNativeManager;->startPublic(Lcom/waze/messages/MessagesNativeManager$EditorContext;)V

    .line 30
    return-void
.end method
