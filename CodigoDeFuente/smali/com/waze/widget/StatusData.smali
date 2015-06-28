.class public Lcom/waze/widget/StatusData;
.super Ljava/lang/Object;
.source "StatusData.java"


# static fields
.field public static final STATUS_DATA_OK:I = 0x4

.field public static final STATUS_DRIVE_REQUEST:I = 0x80

.field public static final STATUS_ERR_GENERAL:I = 0x10000

.field public static final STATUS_ERR_NO_DESTINATION:I = 0x80000

.field public static final STATUS_ERR_NO_LOCATION:I = 0x40000

.field public static final STATUS_ERR_NO_LOGIN:I = 0x20000

.field public static final STATUS_ERR_REFRESH_TIMEOUT:I = 0x200000

.field public static final STATUS_ERR_ROUTE_SERVER:I = 0x100000

.field public static final STATUS_MASK_ERROR:I = 0x10000

.field public static final STATUS_NEW_WIDGET:I = 0x8

.field public static final STATUS_REFRESH_REQUEST:I = 0x20

.field public static final STATUS_REFRESH_REQUEST_INFO:I = 0x40

.field public static final STATUS_REFRESH_TEST_TRUE:I = 0x10

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_UNDEFINED:I = 0x2


# instance fields
.field private mDestDescription:Ljava/lang/String;

.field private mRoutingResponse:Lcom/waze/widget/routing/RoutingResponse;

.field private mScore:Lcom/waze/widget/routing/RouteScoreType;

.field private mTimeStamp:J

.field private mTimeToDest:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, "Home"

    iput-object v0, p0, Lcom/waze/widget/StatusData;->mDestDescription:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/widget/StatusData;->mTimeToDest:I

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/waze/widget/StatusData;->mTimeStamp:J

    .line 110
    sget-object v0, Lcom/waze/widget/routing/RouteScoreType;->NONE:Lcom/waze/widget/routing/RouteScoreType;

    iput-object v0, p0, Lcom/waze/widget/StatusData;->mScore:Lcom/waze/widget/routing/RouteScoreType;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/waze/widget/StatusData;)V
    .locals 2
    .parameter "aStatusData"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, "Home"

    iput-object v0, p0, Lcom/waze/widget/StatusData;->mDestDescription:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/widget/StatusData;->mTimeToDest:I

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/waze/widget/StatusData;->mTimeStamp:J

    .line 110
    sget-object v0, Lcom/waze/widget/routing/RouteScoreType;->NONE:Lcom/waze/widget/routing/RouteScoreType;

    iput-object v0, p0, Lcom/waze/widget/StatusData;->mScore:Lcom/waze/widget/routing/RouteScoreType;

    .line 57
    invoke-virtual {p0, p1}, Lcom/waze/widget/StatusData;->copy(Lcom/waze/widget/StatusData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 2
    .parameter "aDestDescription"
    .parameter "aTimeToDest"
    .parameter "aTimeStamp"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, "Home"

    iput-object v0, p0, Lcom/waze/widget/StatusData;->mDestDescription:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/widget/StatusData;->mTimeToDest:I

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/waze/widget/StatusData;->mTimeStamp:J

    .line 110
    sget-object v0, Lcom/waze/widget/routing/RouteScoreType;->NONE:Lcom/waze/widget/routing/RouteScoreType;

    iput-object v0, p0, Lcom/waze/widget/StatusData;->mScore:Lcom/waze/widget/routing/RouteScoreType;

    .line 49
    iput-wide p3, p0, Lcom/waze/widget/StatusData;->mTimeStamp:J

    .line 50
    iput-object p1, p0, Lcom/waze/widget/StatusData;->mDestDescription:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/waze/widget/StatusData;->mTimeToDest:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;Lcom/waze/widget/routing/RoutingResponse;)V
    .locals 2
    .parameter "aDestDescription"
    .parameter "aTimeToDest"
    .parameter "score"
    .parameter "routingRsp"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, "Home"

    iput-object v0, p0, Lcom/waze/widget/StatusData;->mDestDescription:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/widget/StatusData;->mTimeToDest:I

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/waze/widget/StatusData;->mTimeStamp:J

    .line 110
    sget-object v0, Lcom/waze/widget/routing/RouteScoreType;->NONE:Lcom/waze/widget/routing/RouteScoreType;

    iput-object v0, p0, Lcom/waze/widget/StatusData;->mScore:Lcom/waze/widget/routing/RouteScoreType;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/waze/widget/StatusData;->mTimeStamp:J

    .line 38
    iput-object p1, p0, Lcom/waze/widget/StatusData;->mDestDescription:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/waze/widget/StatusData;->mTimeToDest:I

    .line 40
    iput-object p3, p0, Lcom/waze/widget/StatusData;->mScore:Lcom/waze/widget/routing/RouteScoreType;

    .line 41
    iput-object p4, p0, Lcom/waze/widget/StatusData;->mRoutingResponse:Lcom/waze/widget/routing/RoutingResponse;

    .line 42
    return-void
.end method


# virtual methods
.method public copy(Lcom/waze/widget/StatusData;)V
    .locals 2
    .parameter "aData"

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p1, Lcom/waze/widget/StatusData;->mDestDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/widget/StatusData;->mDestDescription:Ljava/lang/String;

    .line 67
    iget v0, p1, Lcom/waze/widget/StatusData;->mTimeToDest:I

    iput v0, p0, Lcom/waze/widget/StatusData;->mTimeToDest:I

    .line 68
    iget-wide v0, p1, Lcom/waze/widget/StatusData;->mTimeStamp:J

    iput-wide v0, p0, Lcom/waze/widget/StatusData;->mTimeStamp:J

    .line 69
    iget-object v0, p1, Lcom/waze/widget/StatusData;->mScore:Lcom/waze/widget/routing/RouteScoreType;

    iput-object v0, p0, Lcom/waze/widget/StatusData;->mScore:Lcom/waze/widget/routing/RouteScoreType;

    .line 70
    iget-object v0, p1, Lcom/waze/widget/StatusData;->mRoutingResponse:Lcom/waze/widget/routing/RoutingResponse;

    iput-object v0, p0, Lcom/waze/widget/StatusData;->mRoutingResponse:Lcom/waze/widget/routing/RoutingResponse;

    .line 72
    :cond_0
    return-void
.end method

.method public destination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/waze/widget/StatusData;->mDestDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutingRespnse()Lcom/waze/widget/routing/RoutingResponse;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/waze/widget/StatusData;->mRoutingResponse:Lcom/waze/widget/routing/RoutingResponse;

    return-object v0
.end method

.method public score()Lcom/waze/widget/routing/RouteScoreType;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/waze/widget/StatusData;->mScore:Lcom/waze/widget/routing/RouteScoreType;

    return-object v0
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "aTimeStamp"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/waze/widget/StatusData;->mTimeStamp:J

    return-void
.end method

.method public timeStamp()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/waze/widget/StatusData;->mTimeStamp:J

    return-wide v0
.end method

.method public timeToDest()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/waze/widget/StatusData;->mTimeToDest:I

    return v0
.end method
