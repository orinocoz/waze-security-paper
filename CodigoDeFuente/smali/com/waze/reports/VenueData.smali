.class public Lcom/waze/reports/VenueData;
.super Ljava/lang/Object;
.source "VenueData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/waze/reports/VenueData;",
            ">;"
        }
    .end annotation
.end field

.field public static final FlagRequest_Type_ARRAYSIZE:I = 0xb

.field public static final FlagRequest_Type_CLOSED:I = 0x1

.field public static final FlagRequest_Type_DOES_NOT_MATCH_SEARCH:I = 0xa

.field public static final FlagRequest_Type_DUPLICATE:I = 0x4

.field public static final FlagRequest_Type_INAPPROPRIATE:I = 0x5

.field public static final FlagRequest_Type_LOW_QUALITY:I = 0x7

.field public static final FlagRequest_Type_MOVED:I = 0x2

.field public static final FlagRequest_Type_OTHER:I = 0x9

.field public static final FlagRequest_Type_RESIDENTIAL:I = 0x3

.field public static final FlagRequest_Type_UNRELATED:I = 0x8

.field public static final FlagRequest_Type_WRONG_DETAILS:I = 0x6

.field public static MAX_ARR_SIZE:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public RoutingContext:Ljava/lang/String;

.field public about:Ljava/lang/String;

.field public aliases:[Ljava/lang/String;

.field public bHasMoreData:Z

.field public bResidence:Z

.field public bUpdateable:Z

.field public brand:Ljava/lang/String;

.field public categories:[Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public context:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public details:Ljava/lang/String;

.field public houseNumber:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imageByMe:[Z

.field public imageLiked:[Z

.field public imageReporterMoods:[Ljava/lang/String;

.field public imageReporters:[Ljava/lang/String;

.field public imageThumbnailURLs:[Ljava/lang/String;

.field public imageURLs:[Ljava/lang/String;

.field public latitude:I

.field public longitude:I

.field public name:Ljava/lang/String;

.field public newImageIds:[Ljava/lang/String;

.field public numAliases:I

.field public numCategories:I

.field public numImages:I

.field public numNewImages:I

.field public numOpeningHours:I

.field public numProducts:I

.field public numServices:I

.field public openingHours:[Lcom/waze/reports/OpeningHours;

.field public phoneNumber:Ljava/lang/String;

.field public products:[Lcom/waze/reports/CandidateProduct;

.field public providerId:Ljava/lang/String;

.field public reporter:Ljava/lang/String;

.field public reporterMood:Ljava/lang/String;

.field public services:[Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public street:Ljava/lang/String;

.field public updater:Ljava/lang/String;

.field public updaterMood:Ljava/lang/String;

.field public wasLocationChanged:Z

.field public website:Ljava/lang/String;

.field public websiteDisplayText:Ljava/lang/String;

.field public zip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x1e

    sput v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    .line 286
    new-instance v0, Lcom/waze/reports/VenueData$1;

    invoke-direct {v0}, Lcom/waze/reports/VenueData$1;-><init>()V

    sput-object v0, Lcom/waze/reports/VenueData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 294
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/waze/reports/VenueData;->numImages:I

    .line 40
    iput v0, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    .line 53
    iput-boolean v0, p0, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    .line 56
    iput v0, p0, Lcom/waze/reports/VenueData;->numCategories:I

    .line 59
    iput v0, p0, Lcom/waze/reports/VenueData;->numServices:I

    .line 62
    iput v0, p0, Lcom/waze/reports/VenueData;->numOpeningHours:I

    .line 65
    iput v0, p0, Lcom/waze/reports/VenueData;->numAliases:I

    .line 68
    iput v0, p0, Lcom/waze/reports/VenueData;->numProducts:I

    .line 86
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    .line 87
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    .line 88
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    .line 89
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    .line 90
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    .line 91
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/waze/reports/VenueData;->imageByMe:[Z

    .line 92
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/reports/VenueData;->newImageIds:[Ljava/lang/String;

    .line 93
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    .line 94
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    .line 95
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Lcom/waze/reports/OpeningHours;

    iput-object v0, p0, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    .line 96
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/reports/VenueData;->aliases:[Ljava/lang/String;

    .line 97
    sget v0, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    new-array v0, v0, [Lcom/waze/reports/CandidateProduct;

    iput-object v0, p0, Lcom/waze/reports/VenueData;->products:[Lcom/waze/reports/CandidateProduct;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-direct {p0}, Lcom/waze/reports/VenueData;-><init>()V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->providerId:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/waze/reports/VenueData;->bUpdateable:Z

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/waze/reports/VenueData;->bResidence:Z

    .line 250
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 255
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageByMe:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/reports/VenueData;->numImages:I

    .line 257
    iget-object v0, p0, Lcom/waze/reports/VenueData;->newImageIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/reports/VenueData;->longitude:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/reports/VenueData;->latitude:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    .line 265
    iget-object v0, p0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/reports/VenueData;->numCategories:I

    .line 267
    iget-object v0, p0, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/reports/VenueData;->numServices:I

    .line 269
    iget-object v0, p0, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    sget-object v1, Lcom/waze/reports/OpeningHours;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/reports/VenueData;->numOpeningHours:I

    .line 271
    iget-object v0, p0, Lcom/waze/reports/VenueData;->aliases:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/reports/VenueData;->numAliases:I

    .line 273
    iget-object v0, p0, Lcom/waze/reports/VenueData;->products:[Lcom/waze/reports/CandidateProduct;

    sget-object v1, Lcom/waze/reports/CandidateProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/waze/reports/VenueData;->numProducts:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->about:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->phoneNumber:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->website:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->websiteDisplayText:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->context:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->reporter:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->reporterMood:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->updater:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/VenueData;->updaterMood:Ljava/lang/String;

    .line 284
    return-void

    :cond_0
    move v0, v2

    .line 248
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 249
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 264
    goto :goto_2
.end method

.method private cloneString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 315
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 166
    iget v0, p0, Lcom/waze/reports/VenueData;->numCategories:I

    sget v1, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    if-ne v0, v1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    iget v1, p0, Lcom/waze/reports/VenueData;->numCategories:I

    aput-object p1, v0, v1

    .line 168
    iget v0, p0, Lcom/waze/reports/VenueData;->numCategories:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/reports/VenueData;->numCategories:I

    goto :goto_0
.end method

.method public addImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "thumbUrl"
    .parameter "reporter"

    .prologue
    const/4 v3, 0x0

    .line 101
    :goto_0
    iget v0, p0, Lcom/waze/reports/VenueData;->numImages:I

    sget v1, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    iget v1, p0, Lcom/waze/reports/VenueData;->numImages:I

    aput-object p1, v0, v1

    .line 105
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    iget v1, p0, Lcom/waze/reports/VenueData;->numImages:I

    aput-object p2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    iget v1, p0, Lcom/waze/reports/VenueData;->numImages:I

    aput-object p3, v0, v1

    .line 107
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    iget v1, p0, Lcom/waze/reports/VenueData;->numImages:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    iget v1, p0, Lcom/waze/reports/VenueData;->numImages:I

    aput-boolean v3, v0, v1

    .line 109
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageByMe:[Z

    iget v1, p0, Lcom/waze/reports/VenueData;->numImages:I

    aput-boolean v3, v0, v1

    .line 110
    iget v0, p0, Lcom/waze/reports/VenueData;->numImages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/reports/VenueData;->numImages:I

    .line 111
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0, v3}, Lcom/waze/reports/VenueData;->removeImage(I)Z

    goto :goto_0
.end method

.method public addNewImageId(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 148
    iget v0, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    sget v1, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    if-ne v0, v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/VenueData;->newImageIds:[Ljava/lang/String;

    iget v1, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    aput-object p1, v0, v1

    .line 150
    iget v0, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    goto :goto_0
.end method

.method public addOpHrs(Lcom/waze/reports/OpeningHours;)V
    .locals 2
    .parameter "opHr"

    .prologue
    .line 189
    iget v0, p0, Lcom/waze/reports/VenueData;->numOpeningHours:I

    sget v1, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    if-ne v0, v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    iget v1, p0, Lcom/waze/reports/VenueData;->numOpeningHours:I

    aput-object p1, v0, v1

    .line 191
    iget v0, p0, Lcom/waze/reports/VenueData;->numOpeningHours:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/reports/VenueData;->numOpeningHours:I

    goto :goto_0
.end method

.method public clone()Lcom/waze/reports/VenueData;
    .locals 5

    .prologue
    .line 321
    new-instance v0, Lcom/waze/reports/VenueData;

    invoke-direct {v0}, Lcom/waze/reports/VenueData;-><init>()V

    .line 323
    .local v0, copy:Lcom/waze/reports/VenueData;
    iget-object v2, p0, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 324
    iget-object v2, p0, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    .line 325
    iget-object v2, p0, Lcom/waze/reports/VenueData;->providerId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->providerId:Ljava/lang/String;

    .line 326
    iget-boolean v2, p0, Lcom/waze/reports/VenueData;->bUpdateable:Z

    iput-boolean v2, v0, Lcom/waze/reports/VenueData;->bUpdateable:Z

    .line 327
    iget-boolean v2, p0, Lcom/waze/reports/VenueData;->bResidence:Z

    iput-boolean v2, v0, Lcom/waze/reports/VenueData;->bResidence:Z

    .line 329
    iget-object v2, v0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/waze/reports/VenueData;->numImages:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/waze/reports/VenueData;->numImages:I

    .line 330
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, v0, Lcom/waze/reports/VenueData;->numImages:I

    if-lt v1, v2, :cond_0

    .line 339
    iget-object v2, v0, Lcom/waze/reports/VenueData;->newImageIds:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/waze/reports/VenueData;->numNewImages:I

    .line 340
    const/4 v1, 0x0

    :goto_1
    iget v2, v0, Lcom/waze/reports/VenueData;->numNewImages:I

    if-lt v1, v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    .line 346
    iget-object v2, p0, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    .line 348
    iget v2, p0, Lcom/waze/reports/VenueData;->longitude:I

    iput v2, v0, Lcom/waze/reports/VenueData;->longitude:I

    .line 349
    iget v2, p0, Lcom/waze/reports/VenueData;->latitude:I

    iput v2, v0, Lcom/waze/reports/VenueData;->latitude:I

    .line 350
    iget-boolean v2, p0, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    iput-boolean v2, v0, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    .line 352
    iget-object v2, v0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/waze/reports/VenueData;->numCategories:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/waze/reports/VenueData;->numCategories:I

    .line 353
    const/4 v1, 0x0

    :goto_2
    iget v2, v0, Lcom/waze/reports/VenueData;->numCategories:I

    if-lt v1, v2, :cond_2

    .line 357
    iget-object v2, v0, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/waze/reports/VenueData;->numServices:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/waze/reports/VenueData;->numServices:I

    .line 358
    const/4 v1, 0x0

    :goto_3
    iget v2, v0, Lcom/waze/reports/VenueData;->numServices:I

    if-lt v1, v2, :cond_3

    .line 362
    iget-object v2, v0, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    array-length v2, v2

    iget v3, p0, Lcom/waze/reports/VenueData;->numOpeningHours:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/waze/reports/VenueData;->numOpeningHours:I

    .line 363
    const/4 v1, 0x0

    :goto_4
    iget v2, v0, Lcom/waze/reports/VenueData;->numOpeningHours:I

    if-lt v1, v2, :cond_4

    .line 367
    iget-object v2, v0, Lcom/waze/reports/VenueData;->aliases:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/waze/reports/VenueData;->numAliases:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/waze/reports/VenueData;->numAliases:I

    .line 368
    const/4 v1, 0x0

    :goto_5
    iget v2, v0, Lcom/waze/reports/VenueData;->numAliases:I

    if-lt v1, v2, :cond_5

    .line 372
    iget-object v2, v0, Lcom/waze/reports/VenueData;->products:[Lcom/waze/reports/CandidateProduct;

    array-length v2, v2

    iget v3, p0, Lcom/waze/reports/VenueData;->numProducts:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/waze/reports/VenueData;->numProducts:I

    .line 373
    const/4 v1, 0x0

    :goto_6
    iget v2, v0, Lcom/waze/reports/VenueData;->numProducts:I

    if-lt v1, v2, :cond_6

    .line 377
    iget-object v2, p0, Lcom/waze/reports/VenueData;->about:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->about:Ljava/lang/String;

    .line 378
    iget-object v2, p0, Lcom/waze/reports/VenueData;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->phoneNumber:Ljava/lang/String;

    .line 379
    iget-object v2, p0, Lcom/waze/reports/VenueData;->website:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->website:Ljava/lang/String;

    .line 380
    iget-object v2, p0, Lcom/waze/reports/VenueData;->websiteDisplayText:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->websiteDisplayText:Ljava/lang/String;

    .line 382
    iget-object v2, p0, Lcom/waze/reports/VenueData;->context:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->context:Ljava/lang/String;

    .line 384
    iget-object v2, p0, Lcom/waze/reports/VenueData;->reporter:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->reporter:Ljava/lang/String;

    .line 385
    iget-object v2, p0, Lcom/waze/reports/VenueData;->reporterMood:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->reporterMood:Ljava/lang/String;

    .line 386
    iget-object v2, p0, Lcom/waze/reports/VenueData;->updater:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->updater:Ljava/lang/String;

    .line 387
    iget-object v2, p0, Lcom/waze/reports/VenueData;->updaterMood:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/reports/VenueData;->updaterMood:Ljava/lang/String;

    .line 389
    return-object v0

    .line 331
    :cond_0
    iget-object v2, v0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 332
    iget-object v2, v0, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 333
    iget-object v2, v0, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 334
    iget-object v2, v0, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 335
    iget-object v2, v0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    iget-object v3, p0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 336
    iget-object v2, v0, Lcom/waze/reports/VenueData;->imageByMe:[Z

    iget-object v3, p0, Lcom/waze/reports/VenueData;->imageByMe:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 341
    :cond_1
    iget-object v2, v0, Lcom/waze/reports/VenueData;->newImageIds:[Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/reports/VenueData;->newImageIds:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 354
    :cond_2
    iget-object v2, v0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 359
    :cond_3
    iget-object v2, v0, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 364
    :cond_4
    iget-object v2, v0, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    new-instance v3, Lcom/waze/reports/OpeningHours;

    iget-object v4, p0, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Lcom/waze/reports/OpeningHours;-><init>(Lcom/waze/reports/OpeningHours;)V

    aput-object v3, v2, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 369
    :cond_5
    iget-object v2, v0, Lcom/waze/reports/VenueData;->aliases:[Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/reports/VenueData;->aliases:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/waze/reports/VenueData;->cloneString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 374
    :cond_6
    iget-object v2, v0, Lcom/waze/reports/VenueData;->products:[Lcom/waze/reports/CandidateProduct;

    new-instance v3, Lcom/waze/reports/CandidateProduct;

    iget-object v4, p0, Lcom/waze/reports/VenueData;->products:[Lcom/waze/reports/CandidateProduct;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Lcom/waze/reports/CandidateProduct;-><init>(Lcom/waze/reports/CandidateProduct;)V

    aput-object v3, v2, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/waze/reports/VenueData;->clone()Lcom/waze/reports/VenueData;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public getAddressString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, bob:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v1, p0, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v1, p0, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 307
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeCategory(Ljava/lang/String;)Z
    .locals 5
    .parameter "category"

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, found:Z
    iget v2, p0, Lcom/waze/reports/VenueData;->numCategories:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 185
    :goto_0
    return v2

    .line 174
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/waze/reports/VenueData;->numCategories:I

    if-lt v1, v2, :cond_2

    .line 181
    if-eqz v0, :cond_1

    .line 182
    iget v2, p0, Lcom/waze/reports/VenueData;->numCategories:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/waze/reports/VenueData;->numCategories:I

    .line 183
    iget-object v2, p0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    iget v3, p0, Lcom/waze/reports/VenueData;->numCategories:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    :cond_1
    move v2, v0

    .line 185
    goto :goto_0

    .line 175
    :cond_2
    if-eqz v0, :cond_4

    .line 176
    iget-object v2, p0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    add-int/lit8 v3, v1, -0x1

    iget-object v4, p0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v2, v3

    .line 174
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    :cond_4
    iget-object v2, p0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public removeImage(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 126
    iget v2, p0, Lcom/waze/reports/VenueData;->numImages:I

    if-gt v2, p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    if-ltz p1, :cond_0

    .line 129
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/waze/reports/VenueData;->numImages:I

    if-lt v0, v2, :cond_2

    .line 137
    iget v2, p0, Lcom/waze/reports/VenueData;->numImages:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/waze/reports/VenueData;->numImages:I

    .line 138
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    iget v3, p0, Lcom/waze/reports/VenueData;->numImages:I

    aput-object v5, v2, v3

    .line 139
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    iget v3, p0, Lcom/waze/reports/VenueData;->numImages:I

    aput-object v5, v2, v3

    .line 140
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    iget v3, p0, Lcom/waze/reports/VenueData;->numImages:I

    aput-object v5, v2, v3

    .line 141
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    iget v3, p0, Lcom/waze/reports/VenueData;->numImages:I

    aput-object v5, v2, v3

    .line 142
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    iget v3, p0, Lcom/waze/reports/VenueData;->numImages:I

    aput-boolean v1, v2, v3

    .line 143
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageByMe:[Z

    iget v3, p0, Lcom/waze/reports/VenueData;->numImages:I

    aput-boolean v1, v2, v3

    .line 144
    const/4 v1, 0x1

    goto :goto_0

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 131
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 132
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 133
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 134
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    aget-boolean v4, v4, v0

    aput-boolean v4, v2, v3

    .line 135
    iget-object v2, p0, Lcom/waze/reports/VenueData;->imageByMe:[Z

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/waze/reports/VenueData;->imageByMe:[Z

    aget-boolean v4, v4, v0

    aput-boolean v4, v2, v3

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeNewImageId(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 154
    iget v2, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    if-gt v2, p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 155
    :cond_1
    if-ltz p1, :cond_0

    .line 157
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    if-lt v0, v1, :cond_2

    .line 160
    iget v1, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    .line 161
    iget-object v1, p0, Lcom/waze/reports/VenueData;->newImageIds:[Ljava/lang/String;

    iget v2, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 162
    const/4 v1, 0x1

    goto :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/waze/reports/VenueData;->newImageIds:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/waze/reports/VenueData;->newImageIds:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public replaceImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mPhotoPath"
    .parameter "imageUrl"
    .parameter "imageThumbnailUrl"

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/waze/reports/VenueData;->numImages:I

    if-lt v0, v1, :cond_0

    .line 123
    :goto_1
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 117
    iget-object v1, p0, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    aput-object p3, v1, v0

    .line 118
    iget-object v1, p0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 119
    iget-object v1, p0, Lcom/waze/reports/VenueData;->imageByMe:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/waze/reports/VenueData;->providerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-boolean v0, p0, Lcom/waze/reports/VenueData;->bUpdateable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-boolean v0, p0, Lcom/waze/reports/VenueData;->bResidence:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 211
    iget-object v0, p0, Lcom/waze/reports/VenueData;->imageByMe:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 212
    iget v0, p0, Lcom/waze/reports/VenueData;->numImages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v0, p0, Lcom/waze/reports/VenueData;->newImageIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 214
    iget v0, p0, Lcom/waze/reports/VenueData;->numNewImages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/waze/reports/VenueData;->longitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/waze/reports/VenueData;->latitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-boolean v0, p0, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lcom/waze/reports/VenueData;->numCategories:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 224
    iget v0, p0, Lcom/waze/reports/VenueData;->numServices:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v0, p0, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 226
    iget v0, p0, Lcom/waze/reports/VenueData;->numOpeningHours:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v0, p0, Lcom/waze/reports/VenueData;->aliases:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 228
    iget v0, p0, Lcom/waze/reports/VenueData;->numAliases:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v0, p0, Lcom/waze/reports/VenueData;->products:[Lcom/waze/reports/CandidateProduct;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 230
    iget v0, p0, Lcom/waze/reports/VenueData;->numProducts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Lcom/waze/reports/VenueData;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/waze/reports/VenueData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/waze/reports/VenueData;->website:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/waze/reports/VenueData;->websiteDisplayText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/waze/reports/VenueData;->context:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/waze/reports/VenueData;->reporter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/waze/reports/VenueData;->reporterMood:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/waze/reports/VenueData;->updater:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/waze/reports/VenueData;->updaterMood:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    return-void

    :cond_0
    move v0, v2

    .line 204
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 205
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 220
    goto :goto_2
.end method
