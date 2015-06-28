.class final Lcom/waze/ifs/ui/CameraPreview$CompatabilityWrapper;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompatabilityWrapper"
.end annotation


# static fields
.field private static final MAX_CAPTURE_SIZE:I = 0x800000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestFitSize(IIZLandroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 18
    .parameter "aWidth"
    .parameter "aHeight"
    .parameter "bBiggerBetter"
    .parameter "aParams"

    .prologue
    .line 969
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v10

    .line 970
    .local v10, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, -0x1

    .line 971
    .local v2, bestFitIndex:I
    const v3, 0x7f7fffff

    .line 974
    .local v3, bestFitPenalty:F
    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 975
    move/from16 v11, p0

    .line 976
    .local v11, tmp:I
    move/from16 p0, p1

    .line 977
    move/from16 p1, v11

    .line 980
    .end local v11           #tmp:I
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-lt v7, v12, :cond_1

    .line 1009
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    return-object v12

    .line 981
    :cond_1
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 983
    .local v4, candidate:Landroid/hardware/Camera$Size;
    iget v12, v4, Landroid/hardware/Camera$Size;->width:I

    move/from16 v0, p0

    if-lt v12, v0, :cond_2

    iget v12, v4, Landroid/hardware/Camera$Size;->height:I

    move/from16 v0, p1

    if-ge v12, v0, :cond_3

    .line 980
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 987
    :cond_3
    if-eqz p2, :cond_5

    .line 988
    iget v12, v4, Landroid/hardware/Camera$Size;->width:I

    iget v13, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v12, v13

    const/high16 v13, 0x80

    if-gt v12, v13, :cond_2

    .line 992
    if-ltz v2, :cond_4

    .line 993
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 994
    .local v6, cur:Landroid/hardware/Camera$Size;
    iget v12, v4, Landroid/hardware/Camera$Size;->width:I

    iget v13, v6, Landroid/hardware/Camera$Size;->width:I

    if-ge v12, v13, :cond_4

    iget v12, v4, Landroid/hardware/Camera$Size;->height:I

    iget v13, v6, Landroid/hardware/Camera$Size;->height:I

    if-lt v12, v13, :cond_2

    .line 996
    .end local v6           #cur:Landroid/hardware/Camera$Size;
    :cond_4
    iget v12, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v12, v12

    iget v13, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-float v13, v13

    div-float v5, v12, v13

    .line 997
    .local v5, candidateRatio:F
    move/from16 v0, p0

    int-to-float v12, v0

    move/from16 v0, p1

    int-to-float v13, v0

    div-float v9, v12, v13

    .line 998
    .local v9, reqestedRatio:F
    sub-float v12, v9, v5

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1004
    .end local v5           #candidateRatio:F
    .end local v9           #reqestedRatio:F
    .local v8, penalty:F
    :goto_2
    cmpg-float v12, v8, v3

    if-gtz v12, :cond_2

    .line 1005
    move v2, v7

    .line 1006
    move v3, v8

    goto :goto_1

    .line 1001
    .end local v8           #penalty:F
    :cond_5
    iget v12, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v12

    move/from16 v0, p0

    int-to-double v14, v0

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 1002
    iget v14, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v14

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 1001
    add-double/2addr v12, v14

    double-to-float v8, v12

    .line 1000
    .restart local v8       #penalty:F
    goto :goto_2
.end method

.method public static getBestPreviewSize(IILandroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 13
    .parameter "aWidth"
    .parameter "aHeight"
    .parameter "aParams"

    .prologue
    .line 1013
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 1014
    .local v5, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v0, 0x0

    .line 1015
    .local v0, bestFitIndex:I
    const v1, 0x7fffffff

    .line 1018
    .local v1, bestFitPenalty:I
    if-ge p0, p1, :cond_0

    .line 1019
    move v6, p0

    .line 1020
    .local v6, tmp:I
    move p0, p1

    .line 1021
    move p1, v6

    .line 1024
    .end local v6           #tmp:I
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 1037
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    return-object v7

    .line 1025
    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 1027
    .local v2, candidate:Landroid/hardware/Camera$Size;
    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    if-lt v7, p0, :cond_2

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    if-ge v7, p1, :cond_3

    .line 1024
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1030
    :cond_3
    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    int-to-double v9, p0

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 1031
    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    int-to-double v11, p1

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 1030
    add-double/2addr v7, v9

    double-to-int v4, v7

    .line 1032
    .local v4, penalty:I
    if-ge v4, v1, :cond_2

    .line 1033
    move v0, v3

    .line 1034
    move v1, v4

    goto :goto_1
.end method
