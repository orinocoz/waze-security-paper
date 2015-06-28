.class public final enum Lcom/waze/ResManager$ZipEntryType;
.super Ljava/lang/Enum;
.source "ResManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ResManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZipEntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/ResManager$ZipEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/waze/ResManager$ZipEntryType;

.field public static final enum ZIP_ENTRY_DIRECTORY:Lcom/waze/ResManager$ZipEntryType;

.field public static final enum ZIP_ENTRY_FILE:Lcom/waze/ResManager$ZipEntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/waze/ResManager$ZipEntryType;

    const-string v1, "ZIP_ENTRY_FILE"

    invoke-direct {v0, v1, v2}, Lcom/waze/ResManager$ZipEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_FILE:Lcom/waze/ResManager$ZipEntryType;

    new-instance v0, Lcom/waze/ResManager$ZipEntryType;

    const-string v1, "ZIP_ENTRY_DIRECTORY"

    invoke-direct {v0, v1, v3}, Lcom/waze/ResManager$ZipEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_DIRECTORY:Lcom/waze/ResManager$ZipEntryType;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/waze/ResManager$ZipEntryType;

    sget-object v1, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_FILE:Lcom/waze/ResManager$ZipEntryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/ResManager$ZipEntryType;->ZIP_ENTRY_DIRECTORY:Lcom/waze/ResManager$ZipEntryType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/waze/ResManager$ZipEntryType;->ENUM$VALUES:[Lcom/waze/ResManager$ZipEntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/ResManager$ZipEntryType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/ResManager$ZipEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/ResManager$ZipEntryType;

    return-object v0
.end method

.method public static values()[Lcom/waze/ResManager$ZipEntryType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/ResManager$ZipEntryType;->ENUM$VALUES:[Lcom/waze/ResManager$ZipEntryType;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/ResManager$ZipEntryType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
