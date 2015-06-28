.class public final enum Lcom/waze/ResourceDownloadType;
.super Ljava/lang/Enum;
.source "ResourceDownloadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/ResourceDownloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_AD_IMAGE:Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_CONFIFG:Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_COUNTRY_SPECIFIC_IMAGES:Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_IMAGE:Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_IMAGE_JAVA:Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_LANG:Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_LANG_ASR:Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_LANG_TTS:Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_SEARCH_CONF:Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_SHIELD:Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_SOUND:Lcom/waze/ResourceDownloadType;

.field public static final enum RES_DOWNLOAD_SPLASH:Lcom/waze/ResourceDownloadType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_IMAGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_IMAGE:Lcom/waze/ResourceDownloadType;

    .line 5
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_SOUND"

    invoke-direct {v0, v1, v5, v5}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_SOUND:Lcom/waze/ResourceDownloadType;

    .line 6
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_CONFIFG"

    invoke-direct {v0, v1, v6, v6}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_CONFIFG:Lcom/waze/ResourceDownloadType;

    .line 7
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_LANG"

    invoke-direct {v0, v1, v7, v7}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_LANG:Lcom/waze/ResourceDownloadType;

    .line 8
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_COUNTRY_SPECIFIC_IMAGES"

    invoke-direct {v0, v1, v8, v8}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_COUNTRY_SPECIFIC_IMAGES:Lcom/waze/ResourceDownloadType;

    .line 9
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_SEARCH_CONF"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_SEARCH_CONF:Lcom/waze/ResourceDownloadType;

    .line 10
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_SPLASH"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_SPLASH:Lcom/waze/ResourceDownloadType;

    .line 11
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_LANG_TTS"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_LANG_TTS:Lcom/waze/ResourceDownloadType;

    .line 12
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_AD_IMAGE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_AD_IMAGE:Lcom/waze/ResourceDownloadType;

    .line 13
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_SHIELD"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_SHIELD:Lcom/waze/ResourceDownloadType;

    .line 14
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_LANG_ASR"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_LANG_ASR:Lcom/waze/ResourceDownloadType;

    .line 15
    new-instance v0, Lcom/waze/ResourceDownloadType;

    const-string v1, "RES_DOWNLOAD_IMAGE_JAVA"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ResourceDownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_IMAGE_JAVA:Lcom/waze/ResourceDownloadType;

    .line 3
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/waze/ResourceDownloadType;

    sget-object v1, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_IMAGE:Lcom/waze/ResourceDownloadType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_SOUND:Lcom/waze/ResourceDownloadType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_CONFIFG:Lcom/waze/ResourceDownloadType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_LANG:Lcom/waze/ResourceDownloadType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_COUNTRY_SPECIFIC_IMAGES:Lcom/waze/ResourceDownloadType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_SEARCH_CONF:Lcom/waze/ResourceDownloadType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_SPLASH:Lcom/waze/ResourceDownloadType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_LANG_TTS:Lcom/waze/ResourceDownloadType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_AD_IMAGE:Lcom/waze/ResourceDownloadType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_SHIELD:Lcom/waze/ResourceDownloadType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_LANG_ASR:Lcom/waze/ResourceDownloadType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_IMAGE_JAVA:Lcom/waze/ResourceDownloadType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/waze/ResourceDownloadType;->ENUM$VALUES:[Lcom/waze/ResourceDownloadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/waze/ResourceDownloadType;->value:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/ResourceDownloadType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/ResourceDownloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/ResourceDownloadType;

    return-object v0
.end method

.method public static values()[Lcom/waze/ResourceDownloadType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/ResourceDownloadType;->ENUM$VALUES:[Lcom/waze/ResourceDownloadType;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/ResourceDownloadType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/waze/ResourceDownloadType;->value:I

    return v0
.end method
