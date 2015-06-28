.class public Lcom/waze/widget/routing/RoutingManager;
.super Ljava/lang/Object;
.source "RoutingManager.java"


# instance fields
.field private mServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->getRoutingServerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/widget/routing/RoutingManager;->mServerUrl:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private execute(Lcom/waze/widget/routing/RoutingRequest;)V
    .locals 5
    .parameter "rr"

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v3, p0, Lcom/waze/widget/routing/RoutingManager;->mServerUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/waze/widget/routing/RoutingManager;->mServerUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 65
    :cond_0
    const-string v3, "Sending routing request [mServerUrl is null]"

    invoke-static {v3}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    .line 66
    invoke-static {v4}, Lcom/waze/widget/WidgetManager;->executeResponse(Lcom/waze/widget/routing/RoutingResponse;)V

    .line 119
    :goto_0
    return-void

    .line 70
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/waze/widget/routing/RoutingRequest;->buildCmd()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 71
    :cond_2
    const-string v3, "Sending routing request [RoutingRequest is null]"

    invoke-static {v3}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    .line 72
    invoke-static {v4}, Lcom/waze/widget/WidgetManager;->executeResponse(Lcom/waze/widget/routing/RoutingResponse;)V

    goto :goto_0

    .line 76
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending routing request [ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/waze/widget/routing/RoutingRequest;->getOriginAndDest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 79
    .local v0, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/waze/widget/routing/RoutingManager;->mServerUrl:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/routingRequest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/waze/widget/routing/RoutingRequest;->buildCmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lcom/waze/widget/routing/RoutingManager$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/waze/widget/routing/RoutingManager$1;-><init>(Lcom/waze/widget/routing/RoutingManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;)V

    .line 117
    .local v2, th:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public RoutingRequest(Landroid/location/Location;Landroid/location/Location;)V
    .locals 7
    .parameter "from"
    .parameter "to"

    .prologue
    .line 40
    invoke-static {}, Lcom/waze/widget/rt/RealTimeManager;->getInstance()Lcom/waze/widget/rt/RealTimeManager;

    move-result-object v6

    .line 43
    .local v6, rt:Lcom/waze/widget/rt/RealTimeManager;
    new-instance v0, Lcom/waze/widget/routing/RoutingRequest;

    invoke-static {}, Lcom/waze/widget/routing/RoutingUserOptions;->routeType()Lcom/waze/widget/routing/RoutingType;

    move-result-object v3

    invoke-virtual {v6}, Lcom/waze/widget/rt/RealTimeManager;->getSessionId()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v6}, Lcom/waze/widget/rt/RealTimeManager;->getCookie()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/waze/widget/routing/RoutingRequest;-><init>(Landroid/location/Location;Landroid/location/Location;Lcom/waze/widget/routing/RoutingType;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v0, rr:Lcom/waze/widget/routing/RoutingRequest;
    sget-object v1, Lcom/waze/widget/routing/RoutingOption;->AVOID_TOLL_ROADS:Lcom/waze/widget/routing/RoutingOption;

    invoke-static {}, Lcom/waze/widget/routing/RoutingUserOptions;->avoidTolls()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/widget/routing/RoutingRequest;->addOption(Lcom/waze/widget/routing/RoutingOption;Z)V

    .line 47
    sget-object v1, Lcom/waze/widget/routing/RoutingOption;->AVOID_DANGER_ZONES:Lcom/waze/widget/routing/RoutingOption;

    invoke-static {}, Lcom/waze/widget/routing/RoutingUserOptions;->avoidPalestinianRoads()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/widget/routing/RoutingRequest;->addOption(Lcom/waze/widget/routing/RoutingOption;Z)V

    .line 48
    sget-object v1, Lcom/waze/widget/routing/RoutingOption;->AVOID_PRIMARIES:Lcom/waze/widget/routing/RoutingOption;

    invoke-static {}, Lcom/waze/widget/routing/RoutingUserOptions;->avoidPrimaries()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/widget/routing/RoutingRequest;->addOption(Lcom/waze/widget/routing/RoutingOption;Z)V

    .line 49
    sget-object v1, Lcom/waze/widget/routing/RoutingOption;->PREFER_SAME_STREET:Lcom/waze/widget/routing/RoutingOption;

    invoke-static {}, Lcom/waze/widget/routing/RoutingUserOptions;->preferSameStreet()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/widget/routing/RoutingRequest;->addOption(Lcom/waze/widget/routing/RoutingOption;Z)V

    .line 51
    invoke-direct {p0, v0}, Lcom/waze/widget/routing/RoutingManager;->execute(Lcom/waze/widget/routing/RoutingRequest;)V

    .line 53
    return-void
.end method
