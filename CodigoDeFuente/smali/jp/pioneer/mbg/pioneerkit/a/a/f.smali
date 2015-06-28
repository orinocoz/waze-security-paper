.class Ljp/pioneer/mbg/pioneerkit/a/a/f;
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
.method public a(Landroid/os/Parcel;)Ljp/pioneer/mbg/pioneerkit/a/a/e;
    .locals 2

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/a/a/e;

    invoke-direct {v0}, Ljp/pioneer/mbg/pioneerkit/a/a/e;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ljp/pioneer/mbg/pioneerkit/a/a/e;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ljp/pioneer/mbg/pioneerkit/a/a/e;->b:I

    return-object v0
.end method

.method public a(I)[Ljp/pioneer/mbg/pioneerkit/a/a/e;
    .locals 1

    new-array v0, p1, [Ljp/pioneer/mbg/pioneerkit/a/a/e;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljp/pioneer/mbg/pioneerkit/a/a/f;->a(Landroid/os/Parcel;)Ljp/pioneer/mbg/pioneerkit/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljp/pioneer/mbg/pioneerkit/a/a/f;->a(I)[Ljp/pioneer/mbg/pioneerkit/a/a/e;

    move-result-object v0

    return-object v0
.end method
