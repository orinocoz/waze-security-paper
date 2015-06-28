.class Ljp/pioneer/ce/aam2/AAM2Kit/b/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;
    .locals 2

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;

    invoke-direct {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;->b:I

    return-object v0
.end method

.method public a(I)[Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;
    .locals 1

    new-array v0, p1, [Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/f;->a(Landroid/os/Parcel;)Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/f;->a(I)[Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;

    move-result-object v0

    return-object v0
.end method
