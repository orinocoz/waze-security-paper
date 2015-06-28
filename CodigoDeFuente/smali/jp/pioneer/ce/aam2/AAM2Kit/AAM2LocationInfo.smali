.class public Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private b:D

.field private c:D

.field private d:Z

.field private e:D

.field private f:Z

.field private g:F

.field private h:Z

.field private i:F

.field private j:J

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->b:D

    iput-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->c:D

    iput-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->d:Z

    iput-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->e:D

    iput-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->f:Z

    iput v3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->g:F

    iput-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->h:Z

    iput v3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->i:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->j:J

    iput-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->k:Z

    iput-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->a:I

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 0

    iput-wide p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->b:D

    return-void
.end method

.method public a(F)V
    .locals 1

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->g:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->f:Z

    return-void
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->l:Z

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->j:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->k:Z

    return-void
.end method

.method public b(D)V
    .locals 0

    iput-wide p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->c:D

    return-void
.end method

.method public b(F)V
    .locals 3

    const/high16 v2, 0x43b4

    move v0, p1

    :goto_0
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    :goto_1
    cmpl-float v1, v0, v2

    if-gez v1, :cond_1

    iput v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->h:Z

    return-void

    :cond_0
    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    sub-float/2addr v0, v2

    goto :goto_1
.end method

.method public c(D)V
    .locals 1

    iput-wide p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->e:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->d:Z

    return-void
.end method

.method public getAccuracy()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->a:I

    return v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->e:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->i:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->b:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->c:D

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->g:F

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->j:J

    return-wide v0
.end method

.method public isRealGpsTime()Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->k:Z

    return v0
.end method
