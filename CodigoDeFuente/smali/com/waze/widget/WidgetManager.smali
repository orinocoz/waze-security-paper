.class public Lcom/waze/widget/WidgetManager;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# static fields
.field private static dest:Lcom/waze/widget/Destination;

.field static mGpslocListener:Landroid/location/LocationListener;

.field private static mHandler:Landroid/os/Handler;

.field static mLocationManager:Landroid/location/LocationManager;

.field static mNetlocListener:Landroid/location/LocationListener;

.field private static mService:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/waze/widget/WidgetManager;->mGpslocListener:Landroid/location/LocationListener;

    .line 24
    sput-object v0, Lcom/waze/widget/WidgetManager;->mNetlocListener:Landroid/location/LocationListener;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/waze/widget/WidgetManager;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RouteRequest()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v9, 0x4

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 144
    const-string v0, "RouteRequest..."

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/waze/widget/WidgetManager;->loadWazeConfig()V

    .line 147
    invoke-static {}, Lcom/waze/widget/rt/RealTimeManager;->getInstance()Lcom/waze/widget/rt/RealTimeManager;

    move-result-object v7

    .line 148
    .local v7, rt:Lcom/waze/widget/rt/RealTimeManager;
    invoke-virtual {v7}, Lcom/waze/widget/rt/RealTimeManager;->hasUserName()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    const-string v0, "No valide user credentials found"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    .line 150
    const/high16 v0, 0x8

    new-instance v1, Lcom/waze/widget/StatusData;

    .line 151
    const-string v2, "No Destination"

    sget-object v3, Lcom/waze/widget/routing/RouteScoreType;->NONE:Lcom/waze/widget/routing/RouteScoreType;

    invoke-direct {v1, v2, v5, v3, v8}, Lcom/waze/widget/StatusData;-><init>(Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;Lcom/waze/widget/routing/RoutingResponse;)V

    .line 150
    invoke-static {v0, v1}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 152
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->stopRefreshMonitor()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    sget-object v0, Lcom/waze/widget/WidgetManager;->mService:Landroid/app/Service;

    if-nez v0, :cond_2

    .line 157
    const-string v0, "service is null"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->w(Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/waze/widget/StatusData;

    .line 159
    const-string v1, "No Location"

    sget-object v2, Lcom/waze/widget/routing/RouteScoreType;->NONE:Lcom/waze/widget/routing/RouteScoreType;

    invoke-direct {v0, v1, v5, v2, v8}, Lcom/waze/widget/StatusData;-><init>(Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;Lcom/waze/widget/routing/RoutingResponse;)V

    .line 158
    invoke-static {v9, v0}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 160
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->stopRefreshMonitor()V

    goto :goto_0

    .line 164
    :cond_2
    sget-object v0, Lcom/waze/widget/WidgetManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_3

    .line 165
    sget-object v0, Lcom/waze/widget/WidgetManager;->mService:Landroid/app/Service;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/waze/widget/WidgetManager;->mLocationManager:Landroid/location/LocationManager;

    .line 167
    :cond_3
    sget-object v0, Lcom/waze/widget/WidgetManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_4

    .line 170
    new-instance v0, Lcom/waze/widget/StatusData;

    .line 171
    const-string v1, "No Location"

    sget-object v2, Lcom/waze/widget/routing/RouteScoreType;->NONE:Lcom/waze/widget/routing/RouteScoreType;

    invoke-direct {v0, v1, v5, v2, v8}, Lcom/waze/widget/StatusData;-><init>(Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;Lcom/waze/widget/routing/RoutingResponse;)V

    .line 170
    invoke-static {v9, v0}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 172
    const-string v0, "locationManager is null"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->w(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->stopRefreshMonitor()V

    goto :goto_0

    .line 178
    :cond_4
    sget-object v0, Lcom/waze/widget/WidgetManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 179
    .local v6, lastKnownLocation:Landroid/location/Location;
    if-nez v6, :cond_9

    .line 180
    sget-object v0, Lcom/waze/widget/WidgetManager;->mGpslocListener:Landroid/location/LocationListener;

    if-nez v0, :cond_8

    .line 181
    const-string v0, "lastKnowLocation is null, activating GPS"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/waze/widget/WidgetManager;->mGpslocListener:Landroid/location/LocationListener;

    if-nez v0, :cond_5

    .line 185
    sget-object v0, Lcom/waze/widget/WidgetManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    new-instance v0, Lcom/waze/widget/WazeAppWidgetLocationListener;

    invoke-direct {v0}, Lcom/waze/widget/WazeAppWidgetLocationListener;-><init>()V

    sput-object v0, Lcom/waze/widget/WidgetManager;->mGpslocListener:Landroid/location/LocationListener;

    .line 187
    sget-object v0, Lcom/waze/widget/WidgetManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 188
    sget-object v5, Lcom/waze/widget/WidgetManager;->mGpslocListener:Landroid/location/LocationListener;

    .line 187
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 194
    :cond_5
    :goto_1
    sget-object v0, Lcom/waze/widget/WidgetManager;->mNetlocListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Lcom/waze/widget/WidgetManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    new-instance v0, Lcom/waze/widget/WazeAppWidgetLocationListener;

    invoke-direct {v0}, Lcom/waze/widget/WazeAppWidgetLocationListener;-><init>()V

    sput-object v0, Lcom/waze/widget/WidgetManager;->mNetlocListener:Landroid/location/LocationListener;

    .line 197
    sget-object v0, Lcom/waze/widget/WidgetManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    .line 198
    sget-object v5, Lcom/waze/widget/WidgetManager;->mNetlocListener:Landroid/location/LocationListener;

    .line 197
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto/16 :goto_0

    .line 190
    :cond_6
    const-string v0, "GPS_PROVIDER is disabled. Not registring loction listener"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_7
    const-string v0, "NETWORK_PROVIDER is disabled. Not registring loction listener"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_8
    const-string v0, "lastKnowLocation is null, GPS already activated"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_9
    invoke-static {v6}, Lcom/waze/widget/WidgetManager;->executeRequest(Landroid/location/Location;)V

    .line 208
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->stopRefreshMonitor()V

    goto/16 :goto_0
.end method

.method static synthetic access$0()Lcom/waze/widget/Destination;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/waze/widget/WidgetManager;->dest:Lcom/waze/widget/Destination;

    return-object v0
.end method

.method public static executeRequest(Landroid/location/Location;)V
    .locals 7
    .parameter "from"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 72
    invoke-static {}, Lcom/waze/widget/WidgetManager;->loadWazeConfig()V

    .line 74
    if-nez p0, :cond_1

    .line 77
    const/high16 v1, 0x4

    new-instance v2, Lcom/waze/widget/StatusData;

    const-string v3, "No Location"

    sget-object v4, Lcom/waze/widget/routing/RouteScoreType;->NONE:Lcom/waze/widget/routing/RouteScoreType;

    invoke-direct {v2, v3, v5, v4, v6}, Lcom/waze/widget/StatusData;-><init>(Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;Lcom/waze/widget/routing/RoutingResponse;)V

    invoke-static {v1, v2}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    .line 78
    const-string v1, "last Known Location is null"

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->w(Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {p0}, Lcom/waze/widget/DestinationSelector;->getDestination(Landroid/location/Location;)Lcom/waze/widget/Destination;

    move-result-object v1

    sput-object v1, Lcom/waze/widget/WidgetManager;->dest:Lcom/waze/widget/Destination;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DestinationSelector selected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/waze/widget/WidgetManager;->dest:Lcom/waze/widget/Destination;

    invoke-virtual {v2}, Lcom/waze/widget/Destination;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 86
    sget-object v1, Lcom/waze/widget/WidgetManager;->dest:Lcom/waze/widget/Destination;

    invoke-virtual {v1}, Lcom/waze/widget/Destination;->getType()Lcom/waze/widget/DestinationType;

    move-result-object v1

    sget-object v2, Lcom/waze/widget/DestinationType;->NA:Lcom/waze/widget/DestinationType;

    if-ne v1, v2, :cond_2

    .line 87
    const/high16 v1, 0x8

    new-instance v2, Lcom/waze/widget/StatusData;

    const-string v3, "No Destination"

    sget-object v4, Lcom/waze/widget/routing/RouteScoreType;->NONE:Lcom/waze/widget/routing/RouteScoreType;

    invoke-direct {v2, v3, v5, v4, v6}, Lcom/waze/widget/StatusData;-><init>(Ljava/lang/String;ILcom/waze/widget/routing/RouteScoreType;Lcom/waze/widget/routing/RoutingResponse;)V

    invoke-static {v1, v2}, Lcom/waze/widget/WazeAppWidgetService;->setState(ILcom/waze/widget/StatusData;)V

    goto :goto_0

    .line 89
    :cond_2
    sget-object v1, Lcom/waze/widget/WidgetManager;->dest:Lcom/waze/widget/Destination;

    invoke-virtual {v1}, Lcom/waze/widget/Destination;->getType()Lcom/waze/widget/DestinationType;

    move-result-object v1

    sget-object v2, Lcom/waze/widget/DestinationType;->NONE:Lcom/waze/widget/DestinationType;

    if-eq v1, v2, :cond_0

    .line 94
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->RoutingServerAuthenticationNeeded()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    invoke-static {}, Lcom/waze/widget/rt/RealTimeManager;->getInstance()Lcom/waze/widget/rt/RealTimeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/widget/rt/RealTimeManager;->authenticate()V

    .line 98
    :cond_3
    new-instance v0, Lcom/waze/widget/routing/RoutingManager;

    invoke-direct {v0}, Lcom/waze/widget/routing/RoutingManager;-><init>()V

    .line 99
    .local v0, rm:Lcom/waze/widget/routing/RoutingManager;
    sget-object v1, Lcom/waze/widget/WidgetManager;->dest:Lcom/waze/widget/Destination;

    invoke-virtual {v1}, Lcom/waze/widget/Destination;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/waze/widget/routing/RoutingManager;->RoutingRequest(Landroid/location/Location;Landroid/location/Location;)V

    goto :goto_0
.end method

.method public static executeResponse(Lcom/waze/widget/routing/RoutingResponse;)V
    .locals 2
    .parameter "rrsp"

    .prologue
    .line 105
    sget-object v0, Lcom/waze/widget/WidgetManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/waze/widget/WidgetManager$1;

    invoke-direct {v1, p0}, Lcom/waze/widget/WidgetManager$1;-><init>(Lcom/waze/widget/routing/RoutingResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public static hasHomeOrWork()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lcom/waze/widget/WidgetManager;->loadWazeConfig()V

    .line 56
    const-string v2, "Home"

    invoke-static {v2}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/config/WazeHistory;->getEntry(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 57
    .local v0, locationHome:Landroid/location/Location;
    const-string v2, "Work"

    invoke-static {v2}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/config/WazeHistory;->getEntry(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 59
    .local v1, locationWork:Landroid/location/Location;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 60
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 63
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static init(Landroid/app/Service;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 33
    sput-object p0, Lcom/waze/widget/WidgetManager;->mService:Landroid/app/Service;

    .line 34
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/waze/widget/WidgetManager;->mLocationManager:Landroid/location/LocationManager;

    .line 35
    invoke-static {}, Lcom/waze/widget/WidgetManager;->loadWazeConfig()V

    .line 36
    return-void
.end method

.method public static loadWazeConfig()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "loadWazeConfig"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/waze/config/WazePreferences;->load()V

    .line 45
    invoke-static {}, Lcom/waze/config/WazeUserPreferences;->load()V

    .line 46
    invoke-static {}, Lcom/waze/config/WazeHistory;->load()V

    .line 47
    const-string v0, "System.Language"

    invoke-static {v0}, Lcom/waze/config/WazeUserPreferences;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/config/WazeLang;->load(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static onLocation(Landroid/location/Location;)V
    .locals 3
    .parameter "loc"

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v0, Lcom/waze/widget/WidgetManager;->mGpslocListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/waze/widget/WidgetManager;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/waze/widget/WidgetManager;->mGpslocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 126
    sput-object v2, Lcom/waze/widget/WidgetManager;->mGpslocListener:Landroid/location/LocationListener;

    .line 129
    :cond_0
    sget-object v0, Lcom/waze/widget/WidgetManager;->mNetlocListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/waze/widget/WidgetManager;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/waze/widget/WidgetManager;->mNetlocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 131
    sput-object v2, Lcom/waze/widget/WidgetManager;->mNetlocListener:Landroid/location/LocationListener;

    .line 134
    :cond_1
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->stopRefreshMonitor()V

    .line 135
    invoke-static {p0}, Lcom/waze/widget/WidgetManager;->executeRequest(Landroid/location/Location;)V

    .line 137
    return-void
.end method
