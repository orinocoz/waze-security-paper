.class public Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final e:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/b;

    invoke-direct {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/b;-><init>()V

    sput-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->e:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->a:I

    iput v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->f:I

    iput v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->g:I

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->f:I

    return-void
.end method

.method static synthetic b(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->g:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
