.class public Lcom/waze/reports/EditPlacePointsHolder;
.super Ljava/lang/Object;
.source "EditPlacePointsHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/EditPlacePointsHolder$PointsType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$waze$reports$EditPlacePointsHolder$PointsType:[I

.field private static mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;


# direct methods
.method static synthetic $SWITCH_TABLE$com$waze$reports$EditPlacePointsHolder$PointsType()[I
    .locals 3

    .prologue
    .line 6
    sget-object v0, Lcom/waze/reports/EditPlacePointsHolder;->$SWITCH_TABLE$com$waze$reports$EditPlacePointsHolder$PointsType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->values()[Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Categories:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_1
    :try_start_1
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->City:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_2
    :try_start_2
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->CreatePlace:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_3
    :try_start_3
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Description:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_4
    :try_start_4
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->HouseNumber:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_5
    :try_start_5
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Images:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_6
    :try_start_6
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Location:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    :try_start_7
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Name:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    :try_start_8
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->OpeningHours:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_9
    :try_start_9
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->PhoneNumber:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    :try_start_a
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Services:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_b
    :try_start_b
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Street:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_c
    :try_start_c
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->URL:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_d
    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder;->$SWITCH_TABLE$com$waze$reports$EditPlacePointsHolder$PointsType:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/NativeManager$VenueFieldPoints;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    sput-object p0, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    return-void
.end method

.method public static getAllPoints()Lcom/waze/NativeManager$VenueFieldPoints;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/waze/reports/EditPlacePointsHolder$1;

    invoke-direct {v0}, Lcom/waze/reports/EditPlacePointsHolder$1;-><init>()V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 24
    :cond_0
    sget-object v0, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    return-object v0
.end method

.method public static getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I
    .locals 4
    .parameter "pt"

    .prologue
    const/4 v1, 0x0

    .line 28
    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    if-nez v2, :cond_0

    move v0, v1

    .line 74
    :goto_0
    return v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    .local v0, points:I
    invoke-static {}, Lcom/waze/reports/EditPlacePointsHolder;->$SWITCH_TABLE$com$waze$reports$EditPlacePointsHolder$PointsType()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 72
    goto :goto_0

    .line 33
    :pswitch_0
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->images:I

    .line 34
    goto :goto_0

    .line 36
    :pswitch_1
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->name:I

    .line 37
    goto :goto_0

    .line 39
    :pswitch_2
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->categories:I

    .line 40
    goto :goto_0

    .line 42
    :pswitch_3
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->street:I

    .line 43
    goto :goto_0

    .line 45
    :pswitch_4
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->house_number:I

    .line 46
    goto :goto_0

    .line 48
    :pswitch_5
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->city:I

    .line 49
    goto :goto_0

    .line 51
    :pswitch_6
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->services:I

    .line 52
    goto :goto_0

    .line 54
    :pswitch_7
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->hours:I

    .line 55
    goto :goto_0

    .line 57
    :pswitch_8
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->description:I

    .line 58
    goto :goto_0

    .line 60
    :pswitch_9
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->phone:I

    .line 61
    goto :goto_0

    .line 63
    :pswitch_a
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->url:I

    .line 64
    goto :goto_0

    .line 66
    :pswitch_b
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder;->mAllPoints:Lcom/waze/NativeManager$VenueFieldPoints;

    iget v0, v1, Lcom/waze/NativeManager$VenueFieldPoints;->location:I

    .line 67
    goto :goto_0

    .line 69
    :pswitch_c
    const/4 v0, 0x3

    .line 70
    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method
