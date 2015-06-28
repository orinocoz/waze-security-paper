.class public final enum Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;
.super Ljava/lang/Enum;
.source "FavoriteDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/db/dataObj/FavoriteDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FavoriteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Default:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

.field private static final synthetic ENUM$VALUES:[Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

.field public static final enum Home:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

.field public static final enum Other:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

.field public static final enum Work:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    const-string v1, "Default"

    invoke-direct {v0, v1, v2, v2}, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->Default:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    new-instance v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    const-string v1, "Home"

    invoke-direct {v0, v1, v3, v3}, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->Home:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    new-instance v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    const-string v1, "Work"

    invoke-direct {v0, v1, v4, v4}, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->Work:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    new-instance v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    const-string v1, "Other"

    invoke-direct {v0, v1, v5, v5}, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->Other:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    sget-object v1, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->Default:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->Home:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->Work:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->Other:Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->ENUM$VALUES:[Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->value:I

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    return-object v0
.end method

.method public static values()[Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->ENUM$VALUES:[Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
