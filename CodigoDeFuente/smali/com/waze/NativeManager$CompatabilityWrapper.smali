.class final Lcom/waze/NativeManager$CompatabilityWrapper;
.super Ljava/lang/Object;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompatabilityWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4644
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method
