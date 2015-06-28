.class public final enum Lcom/waze/utils/ImageUtils$DensityProps;
.super Ljava/lang/Enum;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/utils/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DensityProps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/utils/ImageUtils$DensityProps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/waze/utils/ImageUtils$DensityProps;

.field public static final enum HDPI:Lcom/waze/utils/ImageUtils$DensityProps;

.field public static final enum LDPI:Lcom/waze/utils/ImageUtils$DensityProps;

.field public static final enum MDPI:Lcom/waze/utils/ImageUtils$DensityProps;

.field public static final enum XHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

.field public static final enum XXHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

.field public static final enum XXXHDPI:Lcom/waze/utils/ImageUtils$DensityProps;


# instance fields
.field private final localDir:Ljava/lang/String;

.field private final scale:F

.field private final serverDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/waze/utils/ImageUtils$DensityProps;

    const-string v1, "LDPI"

    .line 46
    const-string v3, "ldpi"

    const-string v4, "."

    const/high16 v5, 0x3f40

    invoke-direct/range {v0 .. v5}, Lcom/waze/utils/ImageUtils$DensityProps;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;F)V

    sput-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->LDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    .line 47
    new-instance v3, Lcom/waze/utils/ImageUtils$DensityProps;

    const-string v4, "MDPI"

    const-string v6, "mdpi"

    const-string v7, "."

    const/high16 v8, 0x3f80

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/waze/utils/ImageUtils$DensityProps;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;F)V

    sput-object v3, Lcom/waze/utils/ImageUtils$DensityProps;->MDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    .line 48
    new-instance v3, Lcom/waze/utils/ImageUtils$DensityProps;

    const-string v4, "HDPI"

    const-string v6, "hdpi"

    const-string v7, "HD"

    const/high16 v8, 0x3fc0

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/waze/utils/ImageUtils$DensityProps;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;F)V

    sput-object v3, Lcom/waze/utils/ImageUtils$DensityProps;->HDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    .line 49
    new-instance v3, Lcom/waze/utils/ImageUtils$DensityProps;

    const-string v4, "XHDPI"

    const-string v6, "xhdpi"

    const-string v7, "2x"

    const/high16 v8, 0x4000

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/waze/utils/ImageUtils$DensityProps;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;F)V

    sput-object v3, Lcom/waze/utils/ImageUtils$DensityProps;->XHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    .line 50
    new-instance v3, Lcom/waze/utils/ImageUtils$DensityProps;

    const-string v4, "XXHDPI"

    const-string v6, "xxhdpi"

    const-string v7, "2x"

    const/high16 v8, 0x4040

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/waze/utils/ImageUtils$DensityProps;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;F)V

    sput-object v3, Lcom/waze/utils/ImageUtils$DensityProps;->XXHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    .line 51
    new-instance v3, Lcom/waze/utils/ImageUtils$DensityProps;

    const-string v4, "XXXHDPI"

    const/4 v5, 0x5

    const-string v6, "xxhdpi"

    const-string v7, "2x"

    const/high16 v8, 0x4080

    invoke-direct/range {v3 .. v8}, Lcom/waze/utils/ImageUtils$DensityProps;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;F)V

    sput-object v3, Lcom/waze/utils/ImageUtils$DensityProps;->XXXHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/waze/utils/ImageUtils$DensityProps;

    sget-object v1, Lcom/waze/utils/ImageUtils$DensityProps;->LDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/utils/ImageUtils$DensityProps;->MDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    aput-object v1, v0, v9

    sget-object v1, Lcom/waze/utils/ImageUtils$DensityProps;->HDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    aput-object v1, v0, v10

    sget-object v1, Lcom/waze/utils/ImageUtils$DensityProps;->XHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    aput-object v1, v0, v11

    sget-object v1, Lcom/waze/utils/ImageUtils$DensityProps;->XXHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/waze/utils/ImageUtils$DensityProps;->XXXHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    aput-object v2, v0, v1

    sput-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->ENUM$VALUES:[Lcom/waze/utils/ImageUtils$DensityProps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;F)V
    .locals 0
    .parameter
    .parameter
    .parameter "localDir"
    .parameter "serverDir"
    .parameter "scale"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/waze/utils/ImageUtils$DensityProps;->localDir:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/waze/utils/ImageUtils$DensityProps;->serverDir:Ljava/lang/String;

    .line 60
    iput p5, p0, Lcom/waze/utils/ImageUtils$DensityProps;->scale:F

    .line 61
    return-void
.end method

.method public static getEnumByScale(F)Lcom/waze/utils/ImageUtils$DensityProps;
    .locals 1
    .parameter "scale"

    .prologue
    .line 77
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->MDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    invoke-virtual {v0}, Lcom/waze/utils/ImageUtils$DensityProps;->getScale()F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 78
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->LDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    .line 88
    :goto_0
    return-object v0

    .line 79
    :cond_0
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->HDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    invoke-virtual {v0}, Lcom/waze/utils/ImageUtils$DensityProps;->getScale()F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 80
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->MDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    goto :goto_0

    .line 81
    :cond_1
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->XHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    invoke-virtual {v0}, Lcom/waze/utils/ImageUtils$DensityProps;->getScale()F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    .line 82
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->HDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    goto :goto_0

    .line 83
    :cond_2
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->XXHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    invoke-virtual {v0}, Lcom/waze/utils/ImageUtils$DensityProps;->getScale()F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3

    .line 84
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->XHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    goto :goto_0

    .line 85
    :cond_3
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->XXXHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    invoke-virtual {v0}, Lcom/waze/utils/ImageUtils$DensityProps;->getScale()F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_4

    .line 86
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->XXHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    goto :goto_0

    .line 88
    :cond_4
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->XXXHDPI:Lcom/waze/utils/ImageUtils$DensityProps;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/utils/ImageUtils$DensityProps;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/utils/ImageUtils$DensityProps;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/utils/ImageUtils$DensityProps;

    return-object v0
.end method

.method public static values()[Lcom/waze/utils/ImageUtils$DensityProps;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/utils/ImageUtils$DensityProps;->ENUM$VALUES:[Lcom/waze/utils/ImageUtils$DensityProps;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/utils/ImageUtils$DensityProps;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getLocalDrawableSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/waze/utils/ImageUtils$DensityProps;->localDir:Ljava/lang/String;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/waze/utils/ImageUtils$DensityProps;->scale:F

    return v0
.end method

.method public getServerDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/waze/utils/ImageUtils$DensityProps;->serverDir:Ljava/lang/String;

    return-object v0
.end method
