.class Ljp/pioneer/ce/aam2/AAM2Kit/b/a/d;
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
.method public a(Landroid/os/Parcel;)Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;
    .locals 3

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;

    invoke-direct {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->b(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->c(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->b(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->a:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;B)V

    return-object v0
.end method

.method public a(I)[Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;
    .locals 1

    new-array v0, p1, [Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/d;->a(Landroid/os/Parcel;)Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/d;->a(I)[Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;

    move-result-object v0

    return-object v0
.end method
