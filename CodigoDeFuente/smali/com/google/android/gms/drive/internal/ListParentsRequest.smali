.class public Lcom/google/android/gms/drive/internal/ListParentsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/ListParentsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Jo:Lcom/google/android/gms/drive/DriveId;

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/ad;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ad;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;)V
    .locals 0
    .parameter "versionCode"
    .parameter "driveId"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->Jo:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .locals 1
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/drive/internal/ListParentsRequest;-><init>(ILcom/google/android/gms/drive/DriveId;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ad;->a(Lcom/google/android/gms/drive/internal/ListParentsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
