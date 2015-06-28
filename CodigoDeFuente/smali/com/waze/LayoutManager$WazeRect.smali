.class public Lcom/waze/LayoutManager$WazeRect;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WazeRect"
.end annotation


# instance fields
.field public maxx:I

.field public maxy:I

.field public minx:I

.field public miny:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .parameter "aMinX"
    .parameter "aMinY"
    .parameter "aMaxX"
    .parameter "aMaxY"

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput p1, p0, Lcom/waze/LayoutManager$WazeRect;->minx:I

    .line 433
    iput p3, p0, Lcom/waze/LayoutManager$WazeRect;->maxx:I

    .line 434
    iput p2, p0, Lcom/waze/LayoutManager$WazeRect;->miny:I

    .line 435
    iput p4, p0, Lcom/waze/LayoutManager$WazeRect;->maxy:I

    .line 436
    return-void
.end method
