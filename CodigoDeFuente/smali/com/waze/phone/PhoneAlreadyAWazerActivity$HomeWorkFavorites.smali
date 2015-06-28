.class public final enum Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;
.super Ljava/lang/Enum;
.source "PhoneAlreadyAWazerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/phone/PhoneAlreadyAWazerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HomeWorkFavorites"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

.field public static final enum HOME:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

.field public static final enum WORK:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;


# instance fields
.field private numVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2, v2}, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->HOME:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    new-instance v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v3, v3}, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->WORK:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    sget-object v1, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->HOME:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->WORK:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    aput-object v1, v0, v3

    sput-object v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->ENUM$VALUES:[Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "numVal"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->numVal:I

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    return-object v0
.end method

.method public static values()[Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->ENUM$VALUES:[Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getNumVal()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->numVal:I

    return v0
.end method
