.class final enum Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;
.super Ljava/lang/Enum;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/mywaze/MyWazeNativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UrlSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field public static final enum URL_COUPONS:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field public static final enum URL_FACEBOOKCONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field public static final enum URL_FACEBOOKLIKE:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field public static final enum URL_FACEBOOKSHARE:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field public static final enum URL_FORGOTPASSWORD:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field public static final enum URL_FOURSQUARECONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field public static final enum URL_GROUPS:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field public static final enum URL_SCOREBOARD:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field public static final enum URL_TWITTERCONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field public static final enum URL_TWITTERCONNECTPLUSINITIAL:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field public static final enum URL_TWITTERFOLLOW:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1516
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    const-string v1, "URL_GROUPS"

    invoke-direct {v0, v1, v3}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_GROUPS:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    .line 1517
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    const-string v1, "URL_SCOREBOARD"

    invoke-direct {v0, v1, v4}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_SCOREBOARD:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    .line 1518
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    const-string v1, "URL_COUPONS"

    invoke-direct {v0, v1, v5}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_COUPONS:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    .line 1519
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    const-string v1, "URL_FACEBOOKCONNECT"

    invoke-direct {v0, v1, v6}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FACEBOOKCONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    .line 1520
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    const-string v1, "URL_FOURSQUARECONNECT"

    invoke-direct {v0, v1, v7}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FOURSQUARECONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    .line 1521
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    const-string v1, "URL_FORGOTPASSWORD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FORGOTPASSWORD:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    .line 1522
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    const-string v1, "URL_FACEBOOKSHARE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FACEBOOKSHARE:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    .line 1523
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    const-string v1, "URL_FACEBOOKLIKE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FACEBOOKLIKE:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    .line 1524
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    const-string v1, "URL_TWITTERFOLLOW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_TWITTERFOLLOW:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    .line 1525
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    const-string v1, "URL_TWITTERCONNECT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_TWITTERCONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    .line 1526
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    const-string v1, "URL_TWITTERCONNECTPLUSINITIAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_TWITTERCONNECTPLUSINITIAL:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    .line 1515
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    sget-object v1, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_GROUPS:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_SCOREBOARD:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_COUPONS:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    aput-object v1, v0, v5

    sget-object v1, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FACEBOOKCONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    aput-object v1, v0, v6

    sget-object v1, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FOURSQUARECONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FORGOTPASSWORD:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FACEBOOKSHARE:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FACEBOOKLIKE:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_TWITTERFOLLOW:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_TWITTERCONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_TWITTERCONNECTPLUSINITIAL:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    aput-object v2, v0, v1

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->ENUM$VALUES:[Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1515
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    return-object v0
.end method

.method public static values()[Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->ENUM$VALUES:[Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
