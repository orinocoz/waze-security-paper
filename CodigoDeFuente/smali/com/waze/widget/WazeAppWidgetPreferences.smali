.class public Lcom/waze/widget/WazeAppWidgetPreferences;
.super Ljava/lang/Object;
.source "WazeAppWidgetPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AllowRefreshTimer()J
    .locals 8

    .prologue
    .line 24
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 25
    .local v0, defaultTimer:Ljava/lang/Long;
    const-string v4, "Widget.Allow Refresh Timer"

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 30
    :goto_0
    return-wide v1

    .line 29
    :cond_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long v1, v4, v6

    .line 30
    .local v1, val:J
    goto :goto_0
.end method

.method public static RoutingServerAuthenticationNeeded()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 12
    const-string v1, "Widget.Authentication"

    const-string v2, "no"

    invoke-static {v1, v2}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 16
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static SecuredServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "Realtime.Web-Service Secured Address"

    invoke-static {v0}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "Realtime.Web-Service Address"

    invoke-static {v0}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static debugEnabled()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 47
    const-string v1, "General.Log level"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, value:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 51
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static getEndRange()I
    .locals 3

    .prologue
    .line 99
    const-string v1, "Widget.End Range"

    const-string v2, "60"

    invoke-static {v1, v2}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getRoutingServerUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    const-string v1, "Widget.Routing Server URL"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public static getStartRange()I
    .locals 3

    .prologue
    .line 90
    const-string v1, "Widget.Start Range"

    const-string v2, "-60"

    invoke-static {v1, v2}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static isWebServiceSecuredEnabled()Z
    .locals 3

    .prologue
    .line 77
    const-string v1, "Realtime.Web-Service Secure Enabled"

    const-string v2, "yes"

    invoke-static {v1, v2}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x1

    .line 81
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
