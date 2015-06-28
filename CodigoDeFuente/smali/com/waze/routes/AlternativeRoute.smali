.class public Lcom/waze/routes/AlternativeRoute;
.super Ljava/lang/Object;
.source "AlternativeRoute.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/waze/routes/AlternativeRoute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public closure:Z

.field public description:Ljava/lang/String;

.field public distance:I

.field public distanceRound:I

.field public distanceTenths:I

.field public distanceUnits:Ljava/lang/String;

.field public id:I

.field public preferred:Z

.field public time:I

.field public toll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/waze/routes/AlternativeRoute$1;

    invoke-direct {v0}, Lcom/waze/routes/AlternativeRoute$1;-><init>()V

    .line 64
    sput-object v0, Lcom/waze/routes/AlternativeRoute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 73
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IILjava/lang/String;ZZ)V
    .locals 1
    .parameter "id"
    .parameter "distance"
    .parameter "time"
    .parameter "description"
    .parameter "distanceRound"
    .parameter "distanceTenths"
    .parameter "distanceUnits"
    .parameter "preferred"
    .parameter "toll"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/waze/routes/AlternativeRoute;->id:I

    .line 10
    iput p2, p0, Lcom/waze/routes/AlternativeRoute;->distance:I

    .line 11
    iput p3, p0, Lcom/waze/routes/AlternativeRoute;->time:I

    .line 12
    iput-object p4, p0, Lcom/waze/routes/AlternativeRoute;->description:Ljava/lang/String;

    .line 13
    iput p5, p0, Lcom/waze/routes/AlternativeRoute;->distanceRound:I

    .line 14
    iput p6, p0, Lcom/waze/routes/AlternativeRoute;->distanceTenths:I

    .line 15
    iput-object p7, p0, Lcom/waze/routes/AlternativeRoute;->distanceUnits:Ljava/lang/String;

    .line 16
    iput-boolean p8, p0, Lcom/waze/routes/AlternativeRoute;->preferred:Z

    .line 17
    iput-boolean p9, p0, Lcom/waze/routes/AlternativeRoute;->toll:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/routes/AlternativeRoute;->closure:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/routes/AlternativeRoute;->distance:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/routes/AlternativeRoute;->time:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/routes/AlternativeRoute;->description:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/routes/AlternativeRoute;->distanceRound:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/routes/AlternativeRoute;->distanceTenths:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/routes/AlternativeRoute;->distanceUnits:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/routes/AlternativeRoute;->id:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/waze/routes/AlternativeRoute;->preferred:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/waze/routes/AlternativeRoute;->toll:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/waze/routes/AlternativeRoute;->closure:Z

    .line 62
    return-void

    :cond_0
    move v0, v2

    .line 59
    goto :goto_0

    :cond_1
    move v0, v2

    .line 60
    goto :goto_1

    :cond_2
    move v1, v2

    .line 61
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
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

    .line 39
    iget v0, p0, Lcom/waze/routes/AlternativeRoute;->distance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/waze/routes/AlternativeRoute;->time:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcom/waze/routes/AlternativeRoute;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/waze/routes/AlternativeRoute;->distanceRound:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/waze/routes/AlternativeRoute;->distanceTenths:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/waze/routes/AlternativeRoute;->distanceUnits:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcom/waze/routes/AlternativeRoute;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-boolean v0, p0, Lcom/waze/routes/AlternativeRoute;->preferred:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-boolean v0, p0, Lcom/waze/routes/AlternativeRoute;->toll:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-boolean v0, p0, Lcom/waze/routes/AlternativeRoute;->closure:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0

    :cond_1
    move v0, v2

    .line 47
    goto :goto_1

    :cond_2
    move v1, v2

    .line 48
    goto :goto_2
.end method
