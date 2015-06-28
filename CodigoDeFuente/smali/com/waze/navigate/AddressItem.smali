.class public Lcom/waze/navigate/AddressItem;
.super Ljava/lang/Object;
.source "AddressItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/AddressItem$AdvertiserData;
    }
.end annotation


# static fields
.field public static final CALENDAR_ENC_ITEM:I = 0xc

.field public static final CALENDAR_ITEM:I = 0xb

.field public static final CATEGORY_CALENDAR:I = 0x7

.field public static final CATEGORY_CONTACT:I = 0x5

.field public static final CATEGORY_ERROR:I = 0x4

.field public static final CATEGORY_EVENTS:I = 0x6

.field public static final CATEGORY_FAVORITE:I = 0x1

.field public static final CATEGORY_HISTORY:I = 0x2

.field public static final CATEGORY_OTHER:I = 0x63

.field public static final CATEGORY_SEARCH:I = 0x3

.field public static final CATEGORY_SHARED:I = 0x8

.field public static final EVENT_ITEM:I = 0x9

.field public static final FAVORITE_ITEM:I = 0x5

.field public static final FAVORITE_ITEM_EMPTY:I = 0x6

.field public static final FB_ENC_ITEM:I = 0xa

.field public static final HISTORY_ITEM:I = 0x8

.field public static final HOME_ITEM:I = 0x1

.field public static final HOME_ITEM_EMPTY:I = 0x2

.field public static final NO_ADDITIONS:[Ljava/lang/String; = null

.field public static final NO_RESULT_ADDRESS_ITEM:Lcom/waze/navigate/AddressItem; = null

.field public static final SEARCH_ITEM:I = 0x7

.field public static final SHARED_ITEM:I = 0xd

.field public static final WORK_ITEM:I = 0x3

.field public static final WORK_ITEM_EMPTY:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private MeetingId:Ljava/lang/String;

.field public VanueID:Ljava/lang/String;

.field private accreditation:Ljava/lang/String;

.field private additions:[Ljava/lang/String;

.field private address:Ljava/lang/String;

.field public advPointId:I

.field public brand:Ljava/lang/String;

.field private category:Ljava/lang/Integer;

.field private categoryDesc:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public dealId:Ljava/lang/String;

.field public dealText:Ljava/lang/String;

.field public dealTitle:Ljava/lang/String;

.field public dealType:I

.field private distance:Ljava/lang/String;

.field public distanceMeters:I

.field private house:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/Integer;

.field public index:I

.field private isRecurring:Z

.field private is_validate:Ljava/lang/Boolean;

.field public lastUpdated:J

.field private locationX:Ljava/lang/Integer;

.field private locationY:Ljava/lang/Integer;

.field mAdvertiserData:Lcom/waze/navigate/AddressItem$AdvertiserData;

.field public mImageURL:Ljava/lang/String;

.field public mIsNavigable:Z

.field public mPreviewIcon:Ljava/lang/String;

.field private more_action:Ljava/lang/Boolean;

.field private phone:Ljava/lang/String;

.field public price:F

.field public price_format:Ljava/lang/String;

.field public range:I

.field private secondaryTitle:Ljava/lang/String;

.field private special_url:Ljava/lang/String;

.field public sponsored:Z

.field private starttime:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private street:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/Integer;

.field private url:Ljava/lang/String;

.field public venueData:Lcom/waze/reports/VenueData;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .prologue
    .line 39
    new-instance v0, Lcom/waze/navigate/AddressItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 40
    const-string v3, "No results found"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 41
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 39
    invoke-direct/range {v0 .. v21}, Lcom/waze/navigate/AddressItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/reports/VenueData;)V

    sput-object v0, Lcom/waze/navigate/AddressItem;->NO_RESULT_ADDRESS_ITEM:Lcom/waze/navigate/AddressItem;

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/waze/navigate/AddressItem;->NO_ADDITIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/reports/VenueData;)V
    .locals 1
    .parameter "index"
    .parameter "locationX"
    .parameter "locationY"
    .parameter "title"
    .parameter "secondaryTitle"
    .parameter "address"
    .parameter "distance"
    .parameter "country"
    .parameter "state"
    .parameter "city"
    .parameter "street"
    .parameter "house"
    .parameter "more_action"
    .parameter "image"
    .parameter "category"
    .parameter "id"
    .parameter "type"
    .parameter "url"
    .parameter "special_url"
    .parameter "icon"
    .parameter "accreditation"
    .parameter "vanue"
    .parameter "venueData"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->categoryDesc:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->starttime:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->country:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->state:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->city:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->street:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->house:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->price_format:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/navigate/AddressItem;->distanceMeters:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/navigate/AddressItem;->index:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->mImageURL:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->mPreviewIcon:Ljava/lang/String;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    .line 148
    invoke-direct/range {p0 .. p23}, Lcom/waze/navigate/AddressItem;->init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/reports/VenueData;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/waze/autocomplete/PlaceData;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->categoryDesc:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->starttime:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->country:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->state:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->city:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->street:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->house:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    .line 81
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->price_format:Ljava/lang/String;

    .line 87
    iput v2, p0, Lcom/waze/navigate/AddressItem;->distanceMeters:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/navigate/AddressItem;->index:I

    .line 90
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->mImageURL:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->mPreviewIcon:Ljava/lang/String;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    .line 154
    iget v0, p1, Lcom/waze/autocomplete/PlaceData;->mLocX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->locationX:Ljava/lang/Integer;

    .line 155
    iget v0, p1, Lcom/waze/autocomplete/PlaceData;->mLocY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->locationY:Ljava/lang/Integer;

    .line 156
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->address:Ljava/lang/String;

    .line 157
    iget-object v0, p1, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->title:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->secondaryTitle:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->distance:Ljava/lang/String;

    .line 160
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->more_action:Ljava/lang/Boolean;

    .line 161
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    .line 162
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->category:Ljava/lang/Integer;

    .line 163
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->id:Ljava/lang/String;

    .line 164
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->type:Ljava/lang/Integer;

    .line 165
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->url:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->special_url:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->icon:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 169
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->country:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->state:Ljava/lang/String;

    .line 171
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->city:Ljava/lang/String;

    .line 172
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->street:Ljava/lang/String;

    .line 173
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->house:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/reports/VenueData;)V
    .locals 2
    .parameter "locationX"
    .parameter "locationY"
    .parameter "title"
    .parameter "secondaryTitle"
    .parameter "address"
    .parameter "distance"
    .parameter "more_action"
    .parameter "image"
    .parameter "category"
    .parameter "id"
    .parameter "type"
    .parameter "url"
    .parameter "special_url"
    .parameter "icon"
    .parameter "vanue"
    .parameter "country"
    .parameter "state"
    .parameter "city"
    .parameter "street"
    .parameter "house"
    .parameter "venueData"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->categoryDesc:Ljava/lang/String;

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->starttime:Ljava/lang/String;

    .line 68
    const-string v1, ""

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->country:Ljava/lang/String;

    .line 69
    const-string v1, ""

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->state:Ljava/lang/String;

    .line 70
    const-string v1, ""

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->city:Ljava/lang/String;

    .line 71
    const-string v1, ""

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->street:Ljava/lang/String;

    .line 72
    const-string v1, ""

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->house:Ljava/lang/String;

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->price_format:Ljava/lang/String;

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/waze/navigate/AddressItem;->distanceMeters:I

    .line 88
    const-string v1, ""

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    .line 89
    const/4 v1, -0x1

    iput v1, p0, Lcom/waze/navigate/AddressItem;->index:I

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->mImageURL:Ljava/lang/String;

    .line 92
    const-string v1, ""

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->mPreviewIcon:Ljava/lang/String;

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    .line 99
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->locationX:Ljava/lang/Integer;

    .line 100
    :goto_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/waze/navigate/AddressItem;->locationY:Ljava/lang/Integer;

    .line 101
    :goto_1
    iput-object p5, p0, Lcom/waze/navigate/AddressItem;->address:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/waze/navigate/AddressItem;->title:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/waze/navigate/AddressItem;->secondaryTitle:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lcom/waze/navigate/AddressItem;->distance:Ljava/lang/String;

    .line 105
    iput-object p7, p0, Lcom/waze/navigate/AddressItem;->more_action:Ljava/lang/Boolean;

    .line 106
    iput-object p8, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    .line 107
    iput-object p9, p0, Lcom/waze/navigate/AddressItem;->category:Ljava/lang/Integer;

    .line 108
    iput-object p10, p0, Lcom/waze/navigate/AddressItem;->id:Ljava/lang/String;

    .line 109
    iput-object p11, p0, Lcom/waze/navigate/AddressItem;->type:Ljava/lang/Integer;

    .line 110
    iput-object p12, p0, Lcom/waze/navigate/AddressItem;->url:Ljava/lang/String;

    .line 111
    iput-object p13, p0, Lcom/waze/navigate/AddressItem;->special_url:Ljava/lang/String;

    .line 112
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->icon:Ljava/lang/String;

    .line 113
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->country:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->state:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->city:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->street:Ljava/lang/String;

    .line 118
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->house:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    .line 120
    return-void

    .line 99
    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->locationX:Ljava/lang/Integer;

    goto :goto_0

    .line 100
    :cond_1
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->locationY:Ljava/lang/Integer;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/reports/VenueData;Z)V
    .locals 26
    .parameter "locationX"
    .parameter "locationY"
    .parameter "title"
    .parameter "secondaryTitle"
    .parameter "address"
    .parameter "distance"
    .parameter "country"
    .parameter "state"
    .parameter "city"
    .parameter "street"
    .parameter "house"
    .parameter "more_action"
    .parameter "image"
    .parameter "category"
    .parameter "id"
    .parameter "type"
    .parameter "url"
    .parameter "special_url"
    .parameter "icon"
    .parameter "accreditation"
    .parameter "Date"
    .parameter "sMeetingId"
    .parameter "venueId"
    .parameter "venueData"
    .parameter "CalendarisRecurring"

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->categoryDesc:Ljava/lang/String;

    .line 66
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->starttime:Ljava/lang/String;

    .line 68
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->country:Ljava/lang/String;

    .line 69
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->state:Ljava/lang/String;

    .line 70
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->city:Ljava/lang/String;

    .line 71
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->street:Ljava/lang/String;

    .line 72
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->house:Ljava/lang/String;

    .line 74
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    .line 81
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->price_format:Ljava/lang/String;

    .line 87
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/waze/navigate/AddressItem;->distanceMeters:I

    .line 88
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    .line 89
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/waze/navigate/AddressItem;->index:I

    .line 90
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 91
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->mImageURL:Ljava/lang/String;

    .line 92
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->mPreviewIcon:Ljava/lang/String;

    .line 93
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    .line 128
    const/4 v3, -0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    invoke-direct/range {v2 .. v25}, Lcom/waze/navigate/AddressItem;->init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/reports/VenueData;)V

    .line 131
    if-eqz p21, :cond_0

    .line 133
    move-object/from16 v0, p21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/navigate/AddressItem;->starttime:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/navigate/AddressItem;->MeetingId:Ljava/lang/String;

    .line 135
    move/from16 v0, p25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/navigate/AddressItem;->isRecurring:Z

    .line 137
    :cond_0
    if-eqz p16, :cond_1

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    if-eqz p22, :cond_1

    .line 139
    move-object/from16 v0, p22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/navigate/AddressItem;->MeetingId:Ljava/lang/String;

    .line 141
    :cond_1
    return-void
.end method

.method private init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/reports/VenueData;)V
    .locals 3
    .parameter "index"
    .parameter "locationX"
    .parameter "locationY"
    .parameter "title"
    .parameter "secondaryTitle"
    .parameter "address"
    .parameter "distance"
    .parameter "country"
    .parameter "state"
    .parameter "city"
    .parameter "street"
    .parameter "house"
    .parameter "more_action"
    .parameter "image"
    .parameter "category"
    .parameter "id"
    .parameter "type"
    .parameter "url"
    .parameter "special_url"
    .parameter "icon"
    .parameter "accreditation"
    .parameter "venueId"
    .parameter "venueData"

    .prologue
    .line 183
    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->locationX:Ljava/lang/Integer;

    .line 184
    :goto_0
    if-eqz p3, :cond_5

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->locationY:Ljava/lang/Integer;

    .line 185
    :goto_1
    iput-object p6, p0, Lcom/waze/navigate/AddressItem;->address:Ljava/lang/String;

    .line 186
    iput-object p4, p0, Lcom/waze/navigate/AddressItem;->title:Ljava/lang/String;

    .line 187
    iput-object p5, p0, Lcom/waze/navigate/AddressItem;->secondaryTitle:Ljava/lang/String;

    .line 188
    iput-object p7, p0, Lcom/waze/navigate/AddressItem;->distance:Ljava/lang/String;

    .line 189
    if-eqz p13, :cond_0

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->more_action:Ljava/lang/Boolean;

    .line 190
    :cond_0
    if-eqz p14, :cond_1

    .line 191
    const-string v1, "home"

    move-object/from16 v0, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f020194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    .line 223
    :cond_1
    :goto_2
    if-eqz p15, :cond_2

    .line 224
    const-string v1, "F"

    move-object/from16 v0, p15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->category:Ljava/lang/Integer;

    .line 231
    :cond_2
    :goto_3
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->id:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->url:Ljava/lang/String;

    .line 233
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 234
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->special_url:Ljava/lang/String;

    .line 235
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->icon:Ljava/lang/String;

    .line 236
    iput p1, p0, Lcom/waze/navigate/AddressItem;->index:I

    .line 237
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->accreditation:Ljava/lang/String;

    .line 238
    iput-object p8, p0, Lcom/waze/navigate/AddressItem;->country:Ljava/lang/String;

    .line 239
    iput-object p9, p0, Lcom/waze/navigate/AddressItem;->state:Ljava/lang/String;

    .line 240
    iput-object p10, p0, Lcom/waze/navigate/AddressItem;->city:Ljava/lang/String;

    .line 241
    iput-object p11, p0, Lcom/waze/navigate/AddressItem;->street:Ljava/lang/String;

    .line 242
    iput-object p12, p0, Lcom/waze/navigate/AddressItem;->house:Ljava/lang/String;

    .line 243
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    .line 245
    if-eqz p17, :cond_3

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->type:Ljava/lang/Integer;

    .line 246
    :cond_3
    const-string v1, "WAZE"

    invoke-virtual {p0}, Lcom/waze/navigate/AddressItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 183
    :cond_4
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->locationX:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 184
    :cond_5
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->locationY:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 192
    :cond_6
    const-string v1, "work"

    move-object/from16 v0, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f02046a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    goto :goto_2

    .line 193
    :cond_7
    const-string v1, "History"

    move-object/from16 v0, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f020193

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 194
    :cond_8
    const-string v1, "Ads"

    move-object/from16 v0, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f020012

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 195
    :cond_9
    const-string v1, "Event"

    move-object/from16 v0, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 196
    const v1, 0x7f020155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    .line 197
    const-string v1, "Tap to verify"

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->secondaryTitle:Ljava/lang/String;

    .line 198
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->is_validate:Ljava/lang/Boolean;

    .line 199
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->more_action:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 201
    :cond_a
    const-string v1, "EventVerified"

    move-object/from16 v0, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 202
    const v1, 0x7f020156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    .line 203
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->is_validate:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 205
    :cond_b
    const-string v1, "calendar_blue"

    move-object/from16 v0, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 206
    const v1, 0x7f0200a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    .line 207
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->is_validate:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 209
    :cond_c
    const-string v1, "calendar"

    move-object/from16 v0, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 210
    const v1, 0x7f02009f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    .line 211
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->is_validate:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 213
    :cond_d
    const-string v1, "Star"

    move-object/from16 v0, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 215
    const v1, 0x7f0203cd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 217
    :cond_e
    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 219
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->mImageURL:Ljava/lang/String;

    goto/16 :goto_2

    .line 225
    :cond_f
    const-string v1, "A"

    move-object/from16 v0, p15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->category:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 226
    :cond_10
    const-string v1, "S"

    move-object/from16 v0, p15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->category:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 227
    :cond_11
    const-string v1, "E"

    move-object/from16 v0, p15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->category:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 228
    :cond_12
    const-string v1, "C"

    move-object/from16 v0, p15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->category:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 229
    :cond_13
    const-string v1, "H"

    move-object/from16 v0, p15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressItem;->category:Ljava/lang/Integer;

    goto/16 :goto_3
.end method


# virtual methods
.method public getAccreditation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->accreditation:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->additions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->additions:[Ljava/lang/String;

    .line 319
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/waze/navigate/AddressItem;->NO_ADDITIONS:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAdvertiserData()Lcom/waze/navigate/AddressItem$AdvertiserData;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->mAdvertiserData:Lcom/waze/navigate/AddressItem$AdvertiserData;

    return-object v0
.end method

.method public getCategory()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->category:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCategoryDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->categoryDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDealId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->dealId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->dealId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->distance:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->distance:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHouse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->house:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->icon:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->icon:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    const-string v0, "category_menu_default"

    .line 343
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->icon:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsValidate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->is_validate:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->is_validate:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getLocationX()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->locationX:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocationY()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->locationY:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMeetingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->MeetingId:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreAction()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->more_action:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->phone:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 335
    const-string v0, ""

    .line 337
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->phone:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->secondaryTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->secondaryTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSpecialUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->special_url:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->starttime:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getisRecurring()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/waze/navigate/AddressItem;->isRecurring:Z

    return v0
.end method

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->icon:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->icon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->icon:Ljava/lang/String;

    const-string v1, "category_menu_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdditions([Ljava/lang/String;)V
    .locals 6
    .parameter "additions"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->additions:[Ljava/lang/String;

    .line 325
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 328
    return-void

    .line 325
    :cond_0
    aget-object v0, p1, v1

    .line 326
    .local v0, a:Ljava/lang/String;
    const-string v3, "WAZE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ad="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->address:Ljava/lang/String;

    return-void
.end method

.method public setAdvertiserData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "query"
    .parameter "session"
    .parameter "cookie"

    .prologue
    .line 434
    new-instance v0, Lcom/waze/navigate/AddressItem$AdvertiserData;

    invoke-direct {v0}, Lcom/waze/navigate/AddressItem$AdvertiserData;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->mAdvertiserData:Lcom/waze/navigate/AddressItem$AdvertiserData;

    .line 435
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->mAdvertiserData:Lcom/waze/navigate/AddressItem$AdvertiserData;

    iput-object p1, v0, Lcom/waze/navigate/AddressItem$AdvertiserData;->url:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->mAdvertiserData:Lcom/waze/navigate/AddressItem$AdvertiserData;

    iput-object p2, v0, Lcom/waze/navigate/AddressItem$AdvertiserData;->query:Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->mAdvertiserData:Lcom/waze/navigate/AddressItem$AdvertiserData;

    iput p3, v0, Lcom/waze/navigate/AddressItem$AdvertiserData;->session:I

    .line 438
    iget-object v0, p0, Lcom/waze/navigate/AddressItem;->mAdvertiserData:Lcom/waze/navigate/AddressItem$AdvertiserData;

    iput-object p4, v0, Lcom/waze/navigate/AddressItem$AdvertiserData;->cookie:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .parameter "brand"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setCategory(Ljava/lang/Integer;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->category:Ljava/lang/Integer;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->city:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->country:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setDeal(ZILjava/lang/String;Ljava/lang/String;FILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "sponsored"
    .parameter "dealType"
    .parameter "dealTitle"
    .parameter "dealText"
    .parameter "price"
    .parameter "range"
    .parameter "currency"
    .parameter "lastUpdated"
    .parameter "dealId"
    .parameter "advPointId"
    .parameter "priceFormat"

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/waze/navigate/AddressItem;->sponsored:Z

    .line 304
    iput p2, p0, Lcom/waze/navigate/AddressItem;->dealType:I

    .line 305
    iput-object p3, p0, Lcom/waze/navigate/AddressItem;->dealTitle:Ljava/lang/String;

    .line 306
    iput-object p4, p0, Lcom/waze/navigate/AddressItem;->dealText:Ljava/lang/String;

    .line 307
    iput p5, p0, Lcom/waze/navigate/AddressItem;->price:F

    .line 308
    iput p6, p0, Lcom/waze/navigate/AddressItem;->range:I

    .line 309
    iput-object p7, p0, Lcom/waze/navigate/AddressItem;->currency:Ljava/lang/String;

    .line 310
    iput-wide p8, p0, Lcom/waze/navigate/AddressItem;->lastUpdated:J

    .line 311
    iput-object p10, p0, Lcom/waze/navigate/AddressItem;->dealId:Ljava/lang/String;

    .line 312
    iput p11, p0, Lcom/waze/navigate/AddressItem;->advPointId:I

    .line 313
    iput-object p12, p0, Lcom/waze/navigate/AddressItem;->price_format:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setDistance(I)V
    .locals 0
    .parameter "meters"

    .prologue
    .line 283
    iput p1, p0, Lcom/waze/navigate/AddressItem;->distanceMeters:I

    .line 284
    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->distance:Ljava/lang/String;

    return-void
.end method

.method public setHouse(Ljava/lang/String;)V
    .locals 0
    .parameter "house"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->house:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->icon:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/Integer;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    return-void
.end method

.method public setIsValidate(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "bIsValidate"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->is_validate:Ljava/lang/Boolean;

    .line 375
    return-void
.end method

.method public setLocationX(Ljava/lang/Integer;)V
    .locals 1
    .parameter "x"

    .prologue
    .line 250
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->locationX:Ljava/lang/Integer;

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->locationX:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setLocationY(Ljava/lang/Integer;)V
    .locals 1
    .parameter "y"

    .prologue
    .line 252
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->locationY:Ljava/lang/Integer;

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddressItem;->locationY:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setMeetingId(Ljava/lang/String;)V
    .locals 0
    .parameter "sMeetingId"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->MeetingId:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setMoreAction(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->more_action:Ljava/lang/Boolean;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 330
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phone:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->phone:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->secondaryTitle:Ljava/lang/String;

    return-void
.end method

.method public setSpecialUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "special_url"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->special_url:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->state:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .parameter "street"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->street:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->type:Ljava/lang/Integer;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/waze/navigate/AddressItem;->url:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 289
    const-string v0, "AddressItem"

    .line 290
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " A:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressItem;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " D:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressItem;->distance:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " X:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressItem;->locationX:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressItem;->locationY:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ma:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressItem;->more_action:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " C:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressItem;->category:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressItem;->type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " I:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressItem;->image:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    return-object v0
.end method
