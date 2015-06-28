.class public Ljp/pioneer/mbg/pioneerkit/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final c:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/a/a/f;

    invoke-direct {v0}, Ljp/pioneer/mbg/pioneerkit/a/a/f;-><init>()V

    sput-object v0, Ljp/pioneer/mbg/pioneerkit/a/a/e;->c:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljp/pioneer/mbg/pioneerkit/a/a/e;->a:I

    iput v0, p0, Ljp/pioneer/mbg/pioneerkit/a/a/e;->b:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Ljp/pioneer/mbg/pioneerkit/a/a/e;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ljp/pioneer/mbg/pioneerkit/a/a/e;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
