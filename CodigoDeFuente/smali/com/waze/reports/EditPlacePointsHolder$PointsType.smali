.class public final enum Lcom/waze/reports/EditPlacePointsHolder$PointsType;
.super Ljava/lang/Enum;
.source "EditPlacePointsHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/EditPlacePointsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PointsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/reports/EditPlacePointsHolder$PointsType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Categories:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum City:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum CreatePlace:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum Description:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field private static final synthetic ENUM$VALUES:[Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum HouseNumber:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum Images:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum Location:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum Name:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum OpeningHours:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum PhoneNumber:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum Services:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum Street:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

.field public static final enum URL:Lcom/waze/reports/EditPlacePointsHolder$PointsType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "Images"

    invoke-direct {v0, v1, v3}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Images:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "Location"

    invoke-direct {v0, v1, v4}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Location:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "Name"

    invoke-direct {v0, v1, v5}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Name:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "Categories"

    invoke-direct {v0, v1, v6}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Categories:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "Street"

    invoke-direct {v0, v1, v7}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Street:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "HouseNumber"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->HouseNumber:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "City"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->City:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "Services"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Services:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "OpeningHours"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->OpeningHours:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "Description"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Description:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "PhoneNumber"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->PhoneNumber:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "URL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->URL:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    const-string v1, "CreatePlace"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->CreatePlace:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    .line 7
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Images:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Location:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Name:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Categories:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Street:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->HouseNumber:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->City:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Services:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->OpeningHours:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Description:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->PhoneNumber:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->URL:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->CreatePlace:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ENUM$VALUES:[Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/reports/EditPlacePointsHolder$PointsType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    return-object v0
.end method

.method public static values()[Lcom/waze/reports/EditPlacePointsHolder$PointsType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ENUM$VALUES:[Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
