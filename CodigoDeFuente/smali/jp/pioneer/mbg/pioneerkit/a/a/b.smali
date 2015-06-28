.class Ljp/pioneer/mbg/pioneerkit/a/a/b;
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
.method public a(Landroid/os/Parcel;)Ljp/pioneer/mbg/pioneerkit/a/a/a;
    .locals 2

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/a/a/a;

    invoke-direct {v0}, Ljp/pioneer/mbg/pioneerkit/a/a/a;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ljp/pioneer/mbg/pioneerkit/a/a/a;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ljp/pioneer/mbg/pioneerkit/a/a/a;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ljp/pioneer/mbg/pioneerkit/a/a/a;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ljp/pioneer/mbg/pioneerkit/a/a/a;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Ljp/pioneer/mbg/pioneerkit/a/a/a;->a(Ljp/pioneer/mbg/pioneerkit/a/a/a;I)V

    return-object v0
.end method

.method public a(I)[Ljp/pioneer/mbg/pioneerkit/a/a/a;
    .locals 1

    new-array v0, p1, [Ljp/pioneer/mbg/pioneerkit/a/a/a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljp/pioneer/mbg/pioneerkit/a/a/b;->a(Landroid/os/Parcel;)Ljp/pioneer/mbg/pioneerkit/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljp/pioneer/mbg/pioneerkit/a/a/b;->a(I)[Ljp/pioneer/mbg/pioneerkit/a/a/a;

    move-result-object v0

    return-object v0
.end method
