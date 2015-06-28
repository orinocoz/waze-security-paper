.class public final enum Lcom/waze/widget/routing/RoutingOption;
.super Ljava/lang/Enum;
.source "RoutingOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/widget/routing/RoutingOption;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALLOW_NEAR_BY_SOURCE:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum ALLOW_NEAR_BY_TARGET:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum ALLOW_UNKNOWN_DIRECTIONS:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum AVOID_DANGER_ZONES:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum AVOID_LANDMARKS:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum AVOID_LONG_TRAILS:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum AVOID_PRIMARIES:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum AVOID_TOLL_ROADS:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum AVOID_TRAILS:Lcom/waze/widget/routing/RoutingOption;

.field private static final synthetic ENUM$VALUES:[Lcom/waze/widget/routing/RoutingOption;

.field public static final enum IGNORE_HISTORIC_INFO:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum IGNORE_PENALTIES:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum IGNORE_REALTIME_INFO:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum IGNORE_SEGMENT_INFO:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum NONE:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum PREFER_COMMON_ROUTES:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum PREFER_LESS_SEGMENTS:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum PREFER_SAME_STREET:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum PREFER_UNKNOWN_DIRECTIONS:Lcom/waze/widget/routing/RoutingOption;

.field public static final enum USE_EXTENDED_INSTRUCTIONS:Lcom/waze/widget/routing/RoutingOption;


# instance fields
.field private defaultValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->NONE:Lcom/waze/widget/routing/RoutingOption;

    .line 6
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "AVOID_PRIMARIES"

    invoke-direct {v0, v1, v4, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->AVOID_PRIMARIES:Lcom/waze/widget/routing/RoutingOption;

    .line 7
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "AVOID_TRAILS"

    invoke-direct {v0, v1, v5, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->AVOID_TRAILS:Lcom/waze/widget/routing/RoutingOption;

    .line 8
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "AVOID_LONG_TRAILS"

    invoke-direct {v0, v1, v6, v4}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->AVOID_LONG_TRAILS:Lcom/waze/widget/routing/RoutingOption;

    .line 9
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "PREFER_SAME_STREET"

    invoke-direct {v0, v1, v7, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->PREFER_SAME_STREET:Lcom/waze/widget/routing/RoutingOption;

    .line 10
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "IGNORE_REALTIME_INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->IGNORE_REALTIME_INFO:Lcom/waze/widget/routing/RoutingOption;

    .line 11
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "ALLOW_UNKNOWN_DIRECTIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->ALLOW_UNKNOWN_DIRECTIONS:Lcom/waze/widget/routing/RoutingOption;

    .line 12
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "ALLOW_NEAR_BY_SOURCE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->ALLOW_NEAR_BY_SOURCE:Lcom/waze/widget/routing/RoutingOption;

    .line 13
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "ALLOW_NEAR_BY_TARGET"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->ALLOW_NEAR_BY_TARGET:Lcom/waze/widget/routing/RoutingOption;

    .line 14
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "IGNORE_SEGMENT_INFO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->IGNORE_SEGMENT_INFO:Lcom/waze/widget/routing/RoutingOption;

    .line 15
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "AVOID_TOLL_ROADS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->AVOID_TOLL_ROADS:Lcom/waze/widget/routing/RoutingOption;

    .line 16
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "IGNORE_PENALTIES"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->IGNORE_PENALTIES:Lcom/waze/widget/routing/RoutingOption;

    .line 17
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "PREFER_UNKNOWN_DIRECTIONS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->PREFER_UNKNOWN_DIRECTIONS:Lcom/waze/widget/routing/RoutingOption;

    .line 18
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "AVOID_DANGER_ZONES"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->AVOID_DANGER_ZONES:Lcom/waze/widget/routing/RoutingOption;

    .line 19
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "PREFER_LESS_SEGMENTS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v4}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->PREFER_LESS_SEGMENTS:Lcom/waze/widget/routing/RoutingOption;

    .line 20
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "IGNORE_HISTORIC_INFO"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->IGNORE_HISTORIC_INFO:Lcom/waze/widget/routing/RoutingOption;

    .line 21
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "USE_EXTENDED_INSTRUCTIONS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->USE_EXTENDED_INSTRUCTIONS:Lcom/waze/widget/routing/RoutingOption;

    .line 22
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "AVOID_LANDMARKS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->AVOID_LANDMARKS:Lcom/waze/widget/routing/RoutingOption;

    .line 23
    new-instance v0, Lcom/waze/widget/routing/RoutingOption;

    const-string v1, "PREFER_COMMON_ROUTES"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/widget/routing/RoutingOption;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->PREFER_COMMON_ROUTES:Lcom/waze/widget/routing/RoutingOption;

    .line 3
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/waze/widget/routing/RoutingOption;

    sget-object v1, Lcom/waze/widget/routing/RoutingOption;->NONE:Lcom/waze/widget/routing/RoutingOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/widget/routing/RoutingOption;->AVOID_PRIMARIES:Lcom/waze/widget/routing/RoutingOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/widget/routing/RoutingOption;->AVOID_TRAILS:Lcom/waze/widget/routing/RoutingOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/waze/widget/routing/RoutingOption;->AVOID_LONG_TRAILS:Lcom/waze/widget/routing/RoutingOption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/waze/widget/routing/RoutingOption;->PREFER_SAME_STREET:Lcom/waze/widget/routing/RoutingOption;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->IGNORE_REALTIME_INFO:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->ALLOW_UNKNOWN_DIRECTIONS:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->ALLOW_NEAR_BY_SOURCE:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->ALLOW_NEAR_BY_TARGET:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->IGNORE_SEGMENT_INFO:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->AVOID_TOLL_ROADS:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->IGNORE_PENALTIES:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->PREFER_UNKNOWN_DIRECTIONS:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->AVOID_DANGER_ZONES:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->PREFER_LESS_SEGMENTS:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->IGNORE_HISTORIC_INFO:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->USE_EXTENDED_INSTRUCTIONS:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->AVOID_LANDMARKS:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/waze/widget/routing/RoutingOption;->PREFER_COMMON_ROUTES:Lcom/waze/widget/routing/RoutingOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/waze/widget/routing/RoutingOption;->ENUM$VALUES:[Lcom/waze/widget/routing/RoutingOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "defaultValue"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-boolean p3, p0, Lcom/waze/widget/routing/RoutingOption;->defaultValue:Z

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/widget/routing/RoutingOption;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/widget/routing/RoutingOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/widget/routing/RoutingOption;

    return-object v0
.end method

.method public static values()[Lcom/waze/widget/routing/RoutingOption;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/widget/routing/RoutingOption;->ENUM$VALUES:[Lcom/waze/widget/routing/RoutingOption;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/widget/routing/RoutingOption;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDefault()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/waze/widget/routing/RoutingOption;->defaultValue:Z

    return v0
.end method
