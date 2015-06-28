.class Lcom/waze/messages/MessagesNativeManager$3;
.super Ljava/lang/Object;
.source "MessagesNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/messages/MessagesNativeManager;->startPublic(Lcom/waze/messages/MessagesNativeManager$EditorContext;)V
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
    iput-object p1, p0, Lcom/waze/messages/MessagesNativeManager$3;->this$0:Lcom/waze/messages/MessagesNativeManager;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/waze/messages/MessagesNativeManager$3;->this$0:Lcom/waze/messages/MessagesNativeManager;

    #calls: Lcom/waze/messages/MessagesNativeManager;->startPublicMessageNTV()V
    invoke-static {v0}, Lcom/waze/messages/MessagesNativeManager;->access$3(Lcom/waze/messages/MessagesNativeManager;)V

    .line 87
    return-void
.end method
