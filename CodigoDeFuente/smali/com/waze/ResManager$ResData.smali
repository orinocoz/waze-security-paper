.class public Lcom/waze/ResManager$ResData;
.super Ljava/lang/Object;
.source "ResManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ResManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResData"
.end annotation


# instance fields
.field public buf:[B

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .parameter "aBuf"
    .parameter "aSize"

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p1, p0, Lcom/waze/ResManager$ResData;->buf:[B

    .line 546
    iput p2, p0, Lcom/waze/ResManager$ResData;->size:I

    .line 547
    return-void
.end method
