.class public final enum Lcom/waze/widget/routing/RoutingType;
.super Ljava/lang/Enum;
.source "RoutingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/widget/routing/RoutingType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISTANCE:Lcom/waze/widget/routing/RoutingType;

.field private static final synthetic ENUM$VALUES:[Lcom/waze/widget/routing/RoutingType;

.field public static final enum HISTORIC_TIME:Lcom/waze/widget/routing/RoutingType;

.field public static final enum NONE:Lcom/waze/widget/routing/RoutingType;

.field public static final enum TIME:Lcom/waze/widget/routing/RoutingType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcom/waze/widget/routing/RoutingType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/waze/widget/routing/RoutingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/widget/routing/RoutingType;->NONE:Lcom/waze/widget/routing/RoutingType;

    new-instance v0, Lcom/waze/widget/routing/RoutingType;

    const-string v1, "DISTANCE"

    invoke-direct {v0, v1, v3}, Lcom/waze/widget/routing/RoutingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/widget/routing/RoutingType;->DISTANCE:Lcom/waze/widget/routing/RoutingType;

    new-instance v0, Lcom/waze/widget/routing/RoutingType;

    const-string v1, "TIME"

    invoke-direct {v0, v1, v4}, Lcom/waze/widget/routing/RoutingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/widget/routing/RoutingType;->TIME:Lcom/waze/widget/routing/RoutingType;

    new-instance v0, Lcom/waze/widget/routing/RoutingType;

    const-string v1, "HISTORIC_TIME"

    invoke-direct {v0, v1, v5}, Lcom/waze/widget/routing/RoutingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/widget/routing/RoutingType;->HISTORIC_TIME:Lcom/waze/widget/routing/RoutingType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/waze/widget/routing/RoutingType;

    sget-object v1, Lcom/waze/widget/routing/RoutingType;->NONE:Lcom/waze/widget/routing/RoutingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/widget/routing/RoutingType;->DISTANCE:Lcom/waze/widget/routing/RoutingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/widget/routing/RoutingType;->TIME:Lcom/waze/widget/routing/RoutingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/widget/routing/RoutingType;->HISTORIC_TIME:Lcom/waze/widget/routing/RoutingType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/waze/widget/routing/RoutingType;->ENUM$VALUES:[Lcom/waze/widget/routing/RoutingType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/waze/widget/routing/RoutingType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/widget/routing/RoutingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/widget/routing/RoutingType;

    return-object v0
.end method

.method public static values()[Lcom/waze/widget/routing/RoutingType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/widget/routing/RoutingType;->ENUM$VALUES:[Lcom/waze/widget/routing/RoutingType;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/widget/routing/RoutingType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
