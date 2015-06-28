.class public Lcom/waze/inbox/InboxMessage;
.super Ljava/lang/Object;
.source "InboxMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final MSG_TYPE_CONTENT:I = 0x1

.field protected static final MSG_TYPE_LINK:I = 0x0

.field protected static final MSG_TYPE_SECURED_LINK:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected id:Ljava/lang/String;

.field protected message:Ljava/lang/String;

.field protected messageType:I

.field protected preview:Ljava/lang/String;

.field protected sent:J

.field protected sentFString:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field protected unread:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 50
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 40
    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 44
    goto :goto_0

    .line 47
    :cond_3
    iget-object v2, p0, Lcom/waze/inbox/InboxMessage;->id:Ljava/lang/String;

    check-cast p1, Lcom/waze/inbox/InboxMessage;

    .end local p1
    iget-object v3, p1, Lcom/waze/inbox/InboxMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/waze/inbox/InboxMessage;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
