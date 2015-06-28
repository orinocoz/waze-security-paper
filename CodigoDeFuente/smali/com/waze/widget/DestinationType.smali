.class public final enum Lcom/waze/widget/DestinationType;
.super Ljava/lang/Enum;
.source "DestinationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/widget/DestinationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/waze/widget/DestinationType;

.field public static final enum HOME:Lcom/waze/widget/DestinationType;

.field public static final enum NA:Lcom/waze/widget/DestinationType;

.field public static final enum NONE:Lcom/waze/widget/DestinationType;

.field public static final enum WORK:Lcom/waze/widget/DestinationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcom/waze/widget/DestinationType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2}, Lcom/waze/widget/DestinationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/widget/DestinationType;->HOME:Lcom/waze/widget/DestinationType;

    new-instance v0, Lcom/waze/widget/DestinationType;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v3}, Lcom/waze/widget/DestinationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/widget/DestinationType;->WORK:Lcom/waze/widget/DestinationType;

    new-instance v0, Lcom/waze/widget/DestinationType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/waze/widget/DestinationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/widget/DestinationType;->NONE:Lcom/waze/widget/DestinationType;

    new-instance v0, Lcom/waze/widget/DestinationType;

    const-string v1, "NA"

    invoke-direct {v0, v1, v5}, Lcom/waze/widget/DestinationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/widget/DestinationType;->NA:Lcom/waze/widget/DestinationType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/waze/widget/DestinationType;

    sget-object v1, Lcom/waze/widget/DestinationType;->HOME:Lcom/waze/widget/DestinationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/widget/DestinationType;->WORK:Lcom/waze/widget/DestinationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/widget/DestinationType;->NONE:Lcom/waze/widget/DestinationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/widget/DestinationType;->NA:Lcom/waze/widget/DestinationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/waze/widget/DestinationType;->ENUM$VALUES:[Lcom/waze/widget/DestinationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/waze/widget/DestinationType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/widget/DestinationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/widget/DestinationType;

    return-object v0
.end method

.method public static values()[Lcom/waze/widget/DestinationType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/widget/DestinationType;->ENUM$VALUES:[Lcom/waze/widget/DestinationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/widget/DestinationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
