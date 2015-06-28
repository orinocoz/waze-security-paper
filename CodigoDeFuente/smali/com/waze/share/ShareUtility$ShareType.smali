.class public final enum Lcom/waze/share/ShareUtility$ShareType;
.super Ljava/lang/Enum;
.source "ShareUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/ShareUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/share/ShareUtility$ShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/waze/share/ShareUtility$ShareType;

.field public static final enum ShareType_PickUp:Lcom/waze/share/ShareUtility$ShareType;

.field public static final enum ShareType_ShareDestination:Lcom/waze/share/ShareUtility$ShareType;

.field public static final enum ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

.field public static final enum ShareType_ShareLocation:Lcom/waze/share/ShareUtility$ShareType;

.field public static final enum ShareType_ShareSelection:Lcom/waze/share/ShareUtility$ShareType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    new-instance v0, Lcom/waze/share/ShareUtility$ShareType;

    const-string v1, "ShareType_ShareDrive"

    invoke-direct {v0, v1, v2}, Lcom/waze/share/ShareUtility$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    .line 217
    new-instance v0, Lcom/waze/share/ShareUtility$ShareType;

    const-string v1, "ShareType_PickUp"

    invoke-direct {v0, v1, v3}, Lcom/waze/share/ShareUtility$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_PickUp:Lcom/waze/share/ShareUtility$ShareType;

    .line 218
    new-instance v0, Lcom/waze/share/ShareUtility$ShareType;

    const-string v1, "ShareType_ShareLocation"

    invoke-direct {v0, v1, v4}, Lcom/waze/share/ShareUtility$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareLocation:Lcom/waze/share/ShareUtility$ShareType;

    .line 219
    new-instance v0, Lcom/waze/share/ShareUtility$ShareType;

    const-string v1, "ShareType_ShareDestination"

    invoke-direct {v0, v1, v5}, Lcom/waze/share/ShareUtility$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDestination:Lcom/waze/share/ShareUtility$ShareType;

    .line 220
    new-instance v0, Lcom/waze/share/ShareUtility$ShareType;

    const-string v1, "ShareType_ShareSelection"

    invoke-direct {v0, v1, v6}, Lcom/waze/share/ShareUtility$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareSelection:Lcom/waze/share/ShareUtility$ShareType;

    .line 214
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/waze/share/ShareUtility$ShareType;

    sget-object v1, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/share/ShareUtility$ShareType;->ShareType_PickUp:Lcom/waze/share/ShareUtility$ShareType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareLocation:Lcom/waze/share/ShareUtility$ShareType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDestination:Lcom/waze/share/ShareUtility$ShareType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareSelection:Lcom/waze/share/ShareUtility$ShareType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/waze/share/ShareUtility$ShareType;->ENUM$VALUES:[Lcom/waze/share/ShareUtility$ShareType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/share/ShareUtility$ShareType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/share/ShareUtility$ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/share/ShareUtility$ShareType;

    return-object v0
.end method

.method public static values()[Lcom/waze/share/ShareUtility$ShareType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ENUM$VALUES:[Lcom/waze/share/ShareUtility$ShareType;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/share/ShareUtility$ShareType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
