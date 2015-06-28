.class public Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->a:I

    iput v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->e:I

    iput v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->f:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->a:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->b:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->c:I

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->d:I

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->e:I

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->f:I

    return-void
.end method

.method public getConnectedMode()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->e:I

    return v0
.end method

.method public getLocationDevice()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->c:I

    return v0
.end method

.method public getMainUnitID()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->a:I

    return v0
.end method

.method public getPointerNum()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->b:I

    return v0
.end method

.method public getRemoteController()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->d:I

    return v0
.end method
