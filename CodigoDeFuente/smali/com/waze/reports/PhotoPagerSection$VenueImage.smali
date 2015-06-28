.class public Lcom/waze/reports/PhotoPagerSection$VenueImage;
.super Ljava/lang/Object;
.source "PhotoPagerSection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/PhotoPagerSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VenueImage"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/waze/reports/PhotoPagerSection$VenueImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canDelete:Z

.field public didLike:Z

.field public imageThumbnailUri:Ljava/lang/String;

.field public imageUri:Ljava/lang/String;

.field public isUploading:Z

.field public mood:Ljava/lang/String;

.field public submitter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/waze/reports/PhotoPagerSection$VenueImage$1;

    invoke-direct {v0}, Lcom/waze/reports/PhotoPagerSection$VenueImage$1;-><init>()V

    .line 89
    sput-object v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v2, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->didLike:Z

    .line 49
    iput-boolean v2, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->canDelete:Z

    .line 50
    iput-boolean v2, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->isUploading:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageUri:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageThumbnailUri:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->submitter:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->mood:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->didLike:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->canDelete:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->isUploading:Z

    .line 71
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move v0, v2

    .line 69
    goto :goto_1

    :cond_2
    move v1, v2

    .line 70
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1
    .parameter "uri"
    .parameter "uriThumbnail"
    .parameter "submittedBy"
    .parameter "submitterMood"
    .parameter "liked"
    .parameter "byMe"
    .parameter "uploading"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->didLike:Z

    .line 49
    iput-boolean v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->canDelete:Z

    .line 50
    iput-boolean v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->isUploading:Z

    .line 54
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageUri:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageThumbnailUri:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->submitter:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->mood:Ljava/lang/String;

    .line 58
    iput-boolean p5, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->didLike:Z

    .line 59
    iput-boolean p6, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->canDelete:Z

    .line 60
    iput-boolean p7, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->isUploading:Z

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageThumbnailUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->submitter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->mood:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-boolean v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->didLike:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-boolean v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->canDelete:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-boolean v0, p0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->isUploading:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0

    :cond_1
    move v0, v2

    .line 85
    goto :goto_1

    :cond_2
    move v1, v2

    .line 86
    goto :goto_2
.end method
