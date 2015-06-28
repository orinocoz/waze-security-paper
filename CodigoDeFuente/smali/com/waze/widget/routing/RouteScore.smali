.class public Lcom/waze/widget/routing/RouteScore;
.super Ljava/lang/Object;
.source "RouteScore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScore(II)Lcom/waze/widget/routing/RouteScoreType;
    .locals 6
    .parameter "time"
    .parameter "avegare"

    .prologue
    .line 14
    int-to-double v0, p0

    int-to-double v2, p1

    const-wide v4, 0x3ff199999999999aL

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 16
    sget-object v0, Lcom/waze/widget/routing/RouteScoreType;->ROUTE_BAD:Lcom/waze/widget/routing/RouteScoreType;

    .line 22
    :goto_0
    return-object v0

    .line 17
    :cond_0
    if-ge p0, p1, :cond_1

    .line 19
    sget-object v0, Lcom/waze/widget/routing/RouteScoreType;->ROUTE_GOOD:Lcom/waze/widget/routing/RouteScoreType;

    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/waze/widget/routing/RouteScoreType;->ROUTE_OK:Lcom/waze/widget/routing/RouteScoreType;

    goto :goto_0
.end method
