.class public Lcom/waze/utils/TicketRoller;
.super Ljava/lang/Object;
.source "TicketRoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/utils/TicketRoller$Type;
    }
.end annotation


# static fields
.field private static typeTickets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/waze/utils/TicketRoller$Type;->values()[Lcom/waze/utils/TicketRoller$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/waze/utils/TicketRoller;->typeTickets:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get(Lcom/waze/utils/TicketRoller$Type;)I
    .locals 4
    .parameter "t"

    .prologue
    .line 18
    const-class v1, Lcom/waze/utils/TicketRoller;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/waze/utils/TicketRoller;->typeTickets:[I

    invoke-virtual {p0}, Lcom/waze/utils/TicketRoller$Type;->ordinal()I

    move-result v2

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static testThis()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 22
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Test:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 23
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Test:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    invoke-static {v0, v2}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 24
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Test:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 25
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Last:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 26
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Test:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    invoke-static {v0, v4}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 27
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Test:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    invoke-static {v0, v5}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 28
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Last:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    invoke-static {v0, v2}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 29
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Last:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 30
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Last:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    invoke-static {v0, v4}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 31
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Test:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 32
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Test:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 33
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Last:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    invoke-static {v0, v5}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 34
    return-void
.end method
