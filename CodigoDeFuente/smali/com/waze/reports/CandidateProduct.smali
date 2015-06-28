.class public Lcom/waze/reports/CandidateProduct;
.super Ljava/lang/Object;
.source "CandidateProduct.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/waze/reports/CandidateProduct;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public lastUpdated:I

.field public price:F

.field public prodId:Ljava/lang/String;

.field public updatedBy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/waze/reports/CandidateProduct$1;

    invoke-direct {v0}, Lcom/waze/reports/CandidateProduct$1;-><init>()V

    .line 47
    sput-object v0, Lcom/waze/reports/CandidateProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/CandidateProduct;->prodId:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/waze/reports/CandidateProduct;->price:F

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/reports/CandidateProduct;->lastUpdated:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/CandidateProduct;->updatedBy:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/waze/reports/CandidateProduct;)V
    .locals 2
    .parameter "orig"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/waze/reports/CandidateProduct;->prodId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/reports/CandidateProduct;->prodId:Ljava/lang/String;

    .line 29
    iget v0, p1, Lcom/waze/reports/CandidateProduct;->price:F

    iput v0, p0, Lcom/waze/reports/CandidateProduct;->price:F

    .line 30
    iget v0, p1, Lcom/waze/reports/CandidateProduct;->lastUpdated:I

    iput v0, p0, Lcom/waze/reports/CandidateProduct;->lastUpdated:I

    .line 31
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/waze/reports/CandidateProduct;->updatedBy:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/reports/CandidateProduct;->updatedBy:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/waze/reports/CandidateProduct;->prodId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/waze/reports/CandidateProduct;->price:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    iget v0, p0, Lcom/waze/reports/CandidateProduct;->lastUpdated:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/waze/reports/CandidateProduct;->updatedBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return-void
.end method
