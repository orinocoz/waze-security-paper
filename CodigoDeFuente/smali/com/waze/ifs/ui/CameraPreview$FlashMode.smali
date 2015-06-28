.class public final enum Lcom/waze/ifs/ui/CameraPreview$FlashMode;
.super Ljava/lang/Enum;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlashMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/ifs/ui/CameraPreview$FlashMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Auto:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

.field private static final synthetic ENUM$VALUES:[Lcom/waze/ifs/ui/CameraPreview$FlashMode;

.field public static final enum Off:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

.field public static final enum On:Lcom/waze/ifs/ui/CameraPreview$FlashMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 934
    new-instance v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    const-string v1, "Off"

    invoke-direct {v0, v1, v2}, Lcom/waze/ifs/ui/CameraPreview$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Off:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    new-instance v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    const-string v1, "On"

    invoke-direct {v0, v1, v3}, Lcom/waze/ifs/ui/CameraPreview$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->On:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    new-instance v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    const-string v1, "Auto"

    invoke-direct {v0, v1, v4}, Lcom/waze/ifs/ui/CameraPreview$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Auto:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    .line 933
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Off:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->On:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Auto:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->ENUM$VALUES:[Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 933
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/ifs/ui/CameraPreview$FlashMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    return-object v0
.end method

.method public static values()[Lcom/waze/ifs/ui/CameraPreview$FlashMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->ENUM$VALUES:[Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
