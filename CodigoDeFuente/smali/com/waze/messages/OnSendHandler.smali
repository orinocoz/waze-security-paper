.class public abstract Lcom/waze/messages/OnSendHandler;
.super Ljava/lang/Object;
.source "OnSendHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSend(ZLcom/waze/user/UserData;Ljava/lang/String;)V
.end method
