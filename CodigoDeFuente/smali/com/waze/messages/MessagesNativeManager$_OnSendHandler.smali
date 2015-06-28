.class public Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;
.super Lcom/waze/messages/OnSendHandler;
.source "MessagesNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/messages/MessagesNativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "_OnSendHandler"
.end annotation


# static fields
.field protected static final serialVersionUID:J = 0x1000001L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/waze/messages/OnSendHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSend(ZLcom/waze/user/UserData;Ljava/lang/String;)V
    .locals 1
    .parameter "isPrivate"
    .parameter "userData"
    .parameter "text"

    .prologue
    .line 165
    new-instance v0, Lcom/waze/messages/MessagesNativeManager$_OnSendHandler$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/messages/MessagesNativeManager$_OnSendHandler$1;-><init>(Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;ZLcom/waze/user/UserData;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method
