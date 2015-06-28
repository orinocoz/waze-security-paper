.class public Lcom/waze/widget/routing/RoutingRequest;
.super Ljava/lang/Object;
.source "RoutingRequest.java"


# static fields
.field private static fromRange:I

.field private static toRange:I


# instance fields
.field private mFrom:Landroid/location/Location;

.field private mKey:Ljava/lang/String;

.field private mRouteType:Lcom/waze/widget/routing/RoutingType;

.field private mSession:Ljava/lang/String;

.field private mTo:Landroid/location/Location;

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/waze/widget/routing/RoutingOption;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 19
    sput v0, Lcom/waze/widget/routing/RoutingRequest;->fromRange:I

    .line 20
    sput v0, Lcom/waze/widget/routing/RoutingRequest;->toRange:I

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;Landroid/location/Location;Lcom/waze/widget/routing/RoutingType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "sessionId"
    .parameter "key"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/waze/widget/routing/RoutingRequest;->mFrom:Landroid/location/Location;

    .line 28
    iput-object p2, p0, Lcom/waze/widget/routing/RoutingRequest;->mTo:Landroid/location/Location;

    .line 29
    iput-object p3, p0, Lcom/waze/widget/routing/RoutingRequest;->mRouteType:Lcom/waze/widget/routing/RoutingType;

    .line 30
    iput-object p4, p0, Lcom/waze/widget/routing/RoutingRequest;->mSession:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/waze/widget/routing/RoutingRequest;->mKey:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->getStartRange()I

    move-result v0

    sput v0, Lcom/waze/widget/routing/RoutingRequest;->fromRange:I

    .line 33
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->getEndRange()I

    move-result v0

    sput v0, Lcom/waze/widget/routing/RoutingRequest;->toRange:I

    .line 34
    return-void
.end method

.method public static getNowLocation()I
    .locals 2

    .prologue
    .line 66
    sget v0, Lcom/waze/widget/routing/RoutingRequest;->fromRange:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->getEndRange()I

    move-result v0

    sput v0, Lcom/waze/widget/routing/RoutingRequest;->fromRange:I

    .line 68
    :cond_0
    sget v0, Lcom/waze/widget/routing/RoutingRequest;->fromRange:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static getNumberOfRecords()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 56
    sget v0, Lcom/waze/widget/routing/RoutingRequest;->fromRange:I

    if-ne v0, v1, :cond_0

    .line 57
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->getStartRange()I

    move-result v0

    sput v0, Lcom/waze/widget/routing/RoutingRequest;->fromRange:I

    .line 59
    :cond_0
    sget v0, Lcom/waze/widget/routing/RoutingRequest;->toRange:I

    if-ne v0, v1, :cond_1

    .line 60
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->getEndRange()I

    move-result v0

    sput v0, Lcom/waze/widget/routing/RoutingRequest;->toRange:I

    .line 62
    :cond_1
    sget v0, Lcom/waze/widget/routing/RoutingRequest;->fromRange:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    sget v1, Lcom/waze/widget/routing/RoutingRequest;->toRange:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addOption(Lcom/waze/widget/routing/RoutingOption;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/waze/widget/routing/RoutingRequest;->options:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/waze/widget/routing/RoutingRequest;->options:Ljava/util/Map;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/waze/widget/routing/RoutingRequest;->options:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public buildCmd()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 76
    iget-object v2, p0, Lcom/waze/widget/routing/RoutingRequest;->mTo:Landroid/location/Location;

    if-nez v2, :cond_1

    .line 77
    const-string v2, "RoutingRequest.buildCmd [mTo is null]"

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/waze/widget/routing/RoutingRequest;->mFrom:Landroid/location/Location;

    if-nez v2, :cond_2

    .line 82
    const-string v2, "RoutingRequest.buildCmd [mFrom is null]"

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?from=x:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/waze/widget/routing/RoutingRequest;->mFrom:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/widget/routing/RoutingRequest;->mFrom:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+bd:true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    const-string v3, "&to=x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/widget/routing/RoutingRequest;->mTo:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/widget/routing/RoutingRequest;->mTo:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+bd:true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    const-string v3, "&type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/widget/routing/RoutingRequest;->mRouteType:Lcom/waze/widget/routing/RoutingType;

    invoke-virtual {v3}, Lcom/waze/widget/routing/RoutingType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    const-string v3, "&returnGeometries=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 90
    const-string v3, "&returnInstructions=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    const-string v3, "&timeout=60000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    const-string v3, "&nPaths=3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    const-string v3, "&returnJSON=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    const-string v3, "&graph="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/waze/widget/routing/RoutingRequest;->fromRange:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/waze/widget/routing/RoutingRequest;->toRange:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, cmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/waze/widget/routing/RoutingRequest;->mSession:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/widget/routing/RoutingRequest;->mSession:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/waze/widget/routing/RoutingRequest;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/widget/routing/RoutingRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_4
    iget-object v2, p0, Lcom/waze/widget/routing/RoutingRequest;->options:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&options="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/waze/widget/routing/RoutingRequest;->options:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/waze/widget/routing/RoutingOption;Ljava/lang/Boolean;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/widget/routing/RoutingOption;

    invoke-virtual {v2}, Lcom/waze/widget/routing/RoutingOption;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "T"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 111
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "F"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public getOriginAndDest()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/waze/widget/routing/RoutingRequest;->mTo:Landroid/location/Location;

    if-nez v1, :cond_0

    .line 126
    const-string v1, "RoutingRequest.getOriginAndDest [mTo is null]"

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    .line 138
    :goto_0
    return-object v0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/waze/widget/routing/RoutingRequest;->mFrom:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 131
    const-string v1, "RoutingRequest.getOriginAndDest [mFrom is null]"

    invoke-static {v1}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?from=x:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/widget/routing/RoutingRequest;->mFrom:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/widget/routing/RoutingRequest;->mFrom:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&to=x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/waze/widget/routing/RoutingRequest;->mTo:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/widget/routing/RoutingRequest;->mTo:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, originAndDest:Ljava/lang/String;
    goto :goto_0
.end method

.method public setRouteType(Lcom/waze/widget/routing/RoutingType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/waze/widget/routing/RoutingRequest;->mRouteType:Lcom/waze/widget/routing/RoutingType;

    .line 42
    return-void
.end method
