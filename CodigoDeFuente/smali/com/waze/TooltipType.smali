.class public final enum Lcom/waze/TooltipType;
.super Ljava/lang/Enum;
.source "TooltipType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/TooltipType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARRIVAL_SENT:Lcom/waze/TooltipType;

.field private static final synthetic ENUM$VALUES:[Lcom/waze/TooltipType;

.field public static final enum ETA:Lcom/waze/TooltipType;

.field public static final enum ETA_UPDATE_SENT:Lcom/waze/TooltipType;

.field public static final enum FRIENDS:Lcom/waze/TooltipType;

.field public static final enum MAIN_MENU:Lcom/waze/TooltipType;

.field public static final enum NEW_USER_VIEWING:Lcom/waze/TooltipType;

.field public static final enum ROAD_CLOSURE:Lcom/waze/TooltipType;

.field public static final enum SHARE:Lcom/waze/TooltipType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/waze/TooltipType;

    const-string v1, "ROAD_CLOSURE"

    invoke-direct {v0, v1, v3}, Lcom/waze/TooltipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/TooltipType;->ROAD_CLOSURE:Lcom/waze/TooltipType;

    new-instance v0, Lcom/waze/TooltipType;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v4}, Lcom/waze/TooltipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/TooltipType;->SHARE:Lcom/waze/TooltipType;

    new-instance v0, Lcom/waze/TooltipType;

    const-string v1, "MAIN_MENU"

    invoke-direct {v0, v1, v5}, Lcom/waze/TooltipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/TooltipType;->MAIN_MENU:Lcom/waze/TooltipType;

    new-instance v0, Lcom/waze/TooltipType;

    const-string v1, "FRIENDS"

    invoke-direct {v0, v1, v6}, Lcom/waze/TooltipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/TooltipType;->FRIENDS:Lcom/waze/TooltipType;

    new-instance v0, Lcom/waze/TooltipType;

    const-string v1, "ETA"

    invoke-direct {v0, v1, v7}, Lcom/waze/TooltipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/TooltipType;->ETA:Lcom/waze/TooltipType;

    new-instance v0, Lcom/waze/TooltipType;

    const-string v1, "NEW_USER_VIEWING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/waze/TooltipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/TooltipType;->NEW_USER_VIEWING:Lcom/waze/TooltipType;

    new-instance v0, Lcom/waze/TooltipType;

    const-string v1, "ETA_UPDATE_SENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/waze/TooltipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/TooltipType;->ETA_UPDATE_SENT:Lcom/waze/TooltipType;

    new-instance v0, Lcom/waze/TooltipType;

    const-string v1, "ARRIVAL_SENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/waze/TooltipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/TooltipType;->ARRIVAL_SENT:Lcom/waze/TooltipType;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/waze/TooltipType;

    sget-object v1, Lcom/waze/TooltipType;->ROAD_CLOSURE:Lcom/waze/TooltipType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/TooltipType;->SHARE:Lcom/waze/TooltipType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/TooltipType;->MAIN_MENU:Lcom/waze/TooltipType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/waze/TooltipType;->FRIENDS:Lcom/waze/TooltipType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/waze/TooltipType;->ETA:Lcom/waze/TooltipType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/waze/TooltipType;->NEW_USER_VIEWING:Lcom/waze/TooltipType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/waze/TooltipType;->ETA_UPDATE_SENT:Lcom/waze/TooltipType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/waze/TooltipType;->ARRIVAL_SENT:Lcom/waze/TooltipType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/waze/TooltipType;->ENUM$VALUES:[Lcom/waze/TooltipType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/waze/TooltipType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/TooltipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/TooltipType;

    return-object v0
.end method

.method public static values()[Lcom/waze/TooltipType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/TooltipType;->ENUM$VALUES:[Lcom/waze/TooltipType;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/TooltipType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
