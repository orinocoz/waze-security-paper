.class public Lcom/waze/reports/EditPlaceValidatorsHolder;
.super Ljava/lang/Object;
.source "EditPlaceValidatorsHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$waze$reports$EditPlaceValidatorsHolder$ValidatorType:[I

.field private static mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;


# direct methods
.method static synthetic $SWITCH_TABLE$com$waze$reports$EditPlaceValidatorsHolder$ValidatorType()[I
    .locals 3

    .prologue
    .line 6
    sget-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->$SWITCH_TABLE$com$waze$reports$EditPlaceValidatorsHolder$ValidatorType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->values()[Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->City:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->Description:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->HouseNumber:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->Name:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->PhoneNumber:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->Street:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->URL:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-virtual {v1}, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->$SWITCH_TABLE$com$waze$reports$EditPlaceValidatorsHolder$ValidatorType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/NativeManager$VenueFieldValidators;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    sput-object p0, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    return-void
.end method

.method public static getAllValidators()Lcom/waze/NativeManager$VenueFieldValidators;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/waze/reports/EditPlaceValidatorsHolder$1;

    invoke-direct {v0}, Lcom/waze/reports/EditPlaceValidatorsHolder$1;-><init>()V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 24
    :cond_0
    sget-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    return-object v0
.end method

.method public static getValidator(Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;)Ljava/lang/String;
    .locals 3
    .parameter "pt"

    .prologue
    const/4 v0, 0x0

    .line 28
    sget-object v1, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    if-nez v1, :cond_0

    .line 46
    :goto_0
    return-object v0

    .line 30
    :cond_0
    invoke-static {}, Lcom/waze/reports/EditPlaceValidatorsHolder;->$SWITCH_TABLE$com$waze$reports$EditPlaceValidatorsHolder$ValidatorType()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 32
    :pswitch_0
    sget-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    iget-object v0, v0, Lcom/waze/NativeManager$VenueFieldValidators;->name:Ljava/lang/String;

    goto :goto_0

    .line 34
    :pswitch_1
    sget-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    iget-object v0, v0, Lcom/waze/NativeManager$VenueFieldValidators;->street:Ljava/lang/String;

    goto :goto_0

    .line 36
    :pswitch_2
    sget-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    iget-object v0, v0, Lcom/waze/NativeManager$VenueFieldValidators;->house_number:Ljava/lang/String;

    goto :goto_0

    .line 38
    :pswitch_3
    sget-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    iget-object v0, v0, Lcom/waze/NativeManager$VenueFieldValidators;->city:Ljava/lang/String;

    goto :goto_0

    .line 40
    :pswitch_4
    sget-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    iget-object v0, v0, Lcom/waze/NativeManager$VenueFieldValidators;->description:Ljava/lang/String;

    goto :goto_0

    .line 42
    :pswitch_5
    sget-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    iget-object v0, v0, Lcom/waze/NativeManager$VenueFieldValidators;->phone:Ljava/lang/String;

    goto :goto_0

    .line 44
    :pswitch_6
    sget-object v0, Lcom/waze/reports/EditPlaceValidatorsHolder;->mAllValidators:Lcom/waze/NativeManager$VenueFieldValidators;

    iget-object v0, v0, Lcom/waze/NativeManager$VenueFieldValidators;->url:Ljava/lang/String;

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
