.class public Lcom/waze/autocomplete/PlaceData;
.super Ljava/lang/Object;
.source "PlaceData.java"


# instance fields
.field public mAdsUrl:Ljava/lang/String;

.field public mIsAds:Z

.field public mLocX:I

.field public mLocY:I

.field public mLocalIndex:I

.field public mReference:Ljava/lang/String;

.field public mResponse:Ljava/lang/String;

.field public mSecondaryTitle:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mVenueId:Ljava/lang/String;

.field public mWasAdReported:Z

.field public mfeature:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcom/waze/autocomplete/PlaceData;->mLocX:I

    .line 15
    iput v1, p0, Lcom/waze/autocomplete/PlaceData;->mLocY:I

    .line 19
    iput-object v0, p0, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/waze/autocomplete/PlaceData;->mReference:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    .line 22
    iput-object v0, p0, Lcom/waze/autocomplete/PlaceData;->mAdsUrl:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/waze/autocomplete/PlaceData;->mIsAds:Z

    .line 26
    iput-boolean v2, p0, Lcom/waze/autocomplete/PlaceData;->mWasAdReported:Z

    .line 27
    iput v2, p0, Lcom/waze/autocomplete/PlaceData;->mfeature:I

    .line 28
    iput-object v0, p0, Lcom/waze/autocomplete/PlaceData;->mResponse:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "venue"
    .parameter "Title"
    .parameter "street"
    .parameter "City"
    .parameter "Url"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v2, p0, Lcom/waze/autocomplete/PlaceData;->mLocX:I

    .line 15
    iput v2, p0, Lcom/waze/autocomplete/PlaceData;->mLocY:I

    .line 32
    iput-object p1, p0, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 35
    iput-object v4, p0, Lcom/waze/autocomplete/PlaceData;->mReference:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/autocomplete/PlaceData;->mIsAds:Z

    .line 37
    iput-boolean v3, p0, Lcom/waze/autocomplete/PlaceData;->mWasAdReported:Z

    .line 38
    iput v2, p0, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    .line 39
    iput-object p5, p0, Lcom/waze/autocomplete/PlaceData;->mAdsUrl:Ljava/lang/String;

    .line 40
    iput v3, p0, Lcom/waze/autocomplete/PlaceData;->mfeature:I

    .line 41
    iput-object v4, p0, Lcom/waze/autocomplete/PlaceData;->mResponse:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public hasLocation()Z
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/waze/autocomplete/PlaceData;->mLocX:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/waze/autocomplete/PlaceData;->mLocY:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
