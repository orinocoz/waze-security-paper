.class public Lcom/waze/widget/routing/RoutingUserOptions;
.super Ljava/lang/Object;
.source "RoutingUserOptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowUnkownDirections()Z
    .locals 3

    .prologue
    .line 54
    const-string v1, "Routing.Allow unknown directions"

    const-string v2, "yes"

    invoke-static {v1, v2}, Lcom/waze/config/WazeUserPreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, allowUnkown:Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static avoidPalestinianRoads()Z
    .locals 3

    .prologue
    .line 81
    const-string v1, "Routing.Avoid Palestinian Roads"

    const-string v2, "yes"

    invoke-static {v1, v2}, Lcom/waze/config/WazeUserPreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, preferUnkownDirections:Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static avoidPrimaries()Z
    .locals 3

    .prologue
    .line 13
    const-string v1, "Routing.Avoid primaries"

    const-string v2, "no"

    invoke-static {v1, v2}, Lcom/waze/config/WazeUserPreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, avoidPrimaries:Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static avoidTolls()Z
    .locals 3

    .prologue
    .line 63
    const-string v1, "Routing.Avoid tolls"

    const-string v2, "no"

    invoke-static {v1, v2}, Lcom/waze/config/WazeUserPreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, avoidTolls:Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static avoidTrails()I
    .locals 3

    .prologue
    .line 22
    const-string v1, "Routing.Avoid trails"

    const-string v2, "Don\'t allow"

    invoke-static {v1, v2}, Lcom/waze/config/WazeUserPreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, avoidPrimaries:Ljava/lang/String;
    const-string v1, "Allow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 28
    :goto_0
    return v1

    .line 25
    :cond_0
    const-string v1, "Don\'t allow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    const/4 v1, 0x0

    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static preferSameStreet()Z
    .locals 3

    .prologue
    .line 36
    const-string v1, "Routing.Prefer same street"

    const-string v2, "no"

    invoke-static {v1, v2}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, preferSameStreet:Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static preferUnkownDirections()Z
    .locals 3

    .prologue
    .line 72
    const-string v1, "Routing.Prefer unknown directions"

    const-string v2, "no"

    invoke-static {v1, v2}, Lcom/waze/config/WazeUserPreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, preferUnkownDirections:Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static routeType()Lcom/waze/widget/routing/RoutingType;
    .locals 3

    .prologue
    .line 90
    const-string v1, "Routing.Type"

    const-string v2, "Fastest"

    invoke-static {v1, v2}, Lcom/waze/config/WazeUserPreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, routeType:Ljava/lang/String;
    const-string v1, "Fastest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Lcom/waze/widget/routing/RoutingType;->HISTORIC_TIME:Lcom/waze/widget/routing/RoutingType;

    .line 94
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/waze/widget/routing/RoutingType;->DISTANCE:Lcom/waze/widget/routing/RoutingType;

    goto :goto_0
.end method

.method public static userTraffic()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method
