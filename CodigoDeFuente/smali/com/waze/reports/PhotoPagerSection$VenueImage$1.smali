.class Lcom/waze/reports/PhotoPagerSection$VenueImage$1;
.super Ljava/lang/Object;
.source "PhotoPagerSection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/PhotoPagerSection$VenueImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/waze/reports/PhotoPagerSection$VenueImage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/waze/reports/PhotoPagerSection$VenueImage;
    .locals 1
    .parameter "in"

    .prologue
    .line 92
    new-instance v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    invoke-direct {v0, p1}, Lcom/waze/reports/PhotoPagerSection$VenueImage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/waze/reports/PhotoPagerSection$VenueImage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/waze/reports/PhotoPagerSection$VenueImage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/waze/reports/PhotoPagerSection$VenueImage;
    .locals 1
    .parameter "size"

    .prologue
    .line 96
    new-array v0, p1, [Lcom/waze/reports/PhotoPagerSection$VenueImage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/waze/reports/PhotoPagerSection$VenueImage$1;->newArray(I)[Lcom/waze/reports/PhotoPagerSection$VenueImage;

    move-result-object v0

    return-object v0
.end method
