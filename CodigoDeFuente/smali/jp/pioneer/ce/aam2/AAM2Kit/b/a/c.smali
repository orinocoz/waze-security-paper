.class public Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final b:Landroid/os/Parcelable$Creator;


# instance fields
.field a:B

.field private c:D

.field private d:D

.field private e:Z

.field private f:D

.field private g:Z

.field private h:F

.field private i:Z

.field private j:F

.field private k:Z

.field private l:B

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/d;

    invoke-direct {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/d;-><init>()V

    sput-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->b:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->c:D

    iput-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->d:D

    iput-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->e:Z

    iput-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->f:D

    iput-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->g:Z

    iput v3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->h:F

    iput-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->i:Z

    iput v3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->j:F

    iput-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->k:Z

    iput-byte v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->l:B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->m:J

    iput-byte v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->a:B

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;B)V
    .locals 0

    iput-byte p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->l:B

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;D)V
    .locals 0

    iput-wide p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->c:D

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;F)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->j:F

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;J)V
    .locals 0

    iput-wide p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->m:J

    return-void
.end method

.method static synthetic b(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;D)V
    .locals 0

    iput-wide p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->d:D

    return-void
.end method

.method static synthetic b(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;F)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->h:F

    return-void
.end method

.method static synthetic c(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;D)V
    .locals 0

    iput-wide p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->f:D

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->m:J

    return-wide v0
.end method

.method public b()B
    .locals 1

    iget-byte v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->a:B

    return v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->c:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->d:D

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->f:D

    return-wide v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->h:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->j:F

    return v0
.end method

.method public h()B
    .locals 1

    iget-byte v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->l:B

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-byte v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->a:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-byte v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->l:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
