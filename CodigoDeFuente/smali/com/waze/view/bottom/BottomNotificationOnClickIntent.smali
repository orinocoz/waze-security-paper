.class public final enum Lcom/waze/view/bottom/BottomNotificationOnClickIntent;
.super Ljava/lang/Enum;
.source "BottomNotificationOnClickIntent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/view/bottom/BottomNotificationOnClickIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

.field public static final enum MY_FRIENDS_ACTIVITY:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

.field public static final enum MY_WAZE_ACTIVITY:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

.field public static final enum NONE:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

.field public static final enum RT_ALERTS_MENU:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->NONE:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    new-instance v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    const-string v1, "RT_ALERTS_MENU"

    invoke-direct {v0, v1, v3}, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->RT_ALERTS_MENU:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    new-instance v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    const-string v1, "MY_FRIENDS_ACTIVITY"

    invoke-direct {v0, v1, v4}, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->MY_FRIENDS_ACTIVITY:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    new-instance v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    const-string v1, "MY_WAZE_ACTIVITY"

    invoke-direct {v0, v1, v5}, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->MY_WAZE_ACTIVITY:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    sget-object v1, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->NONE:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->RT_ALERTS_MENU:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->MY_FRIENDS_ACTIVITY:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->MY_WAZE_ACTIVITY:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    aput-object v1, v0, v5

    sput-object v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->ENUM$VALUES:[Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/view/bottom/BottomNotificationOnClickIntent;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    return-object v0
.end method

.method public static values()[Lcom/waze/view/bottom/BottomNotificationOnClickIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->ENUM$VALUES:[Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
