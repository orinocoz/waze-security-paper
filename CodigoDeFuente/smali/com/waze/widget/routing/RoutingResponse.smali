.class public Lcom/waze/widget/routing/RoutingResponse;
.super Ljava/lang/Object;
.source "RoutingResponse.java"


# instance fields
.field private mAverageTime:I

.field private mJson:Lorg/json/JSONObject;

.field private mMax:I

.field private mMin:I

.field private mValuesArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "fromString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v2, 0x0

    .line 23
    .local v2, total:I
    const v4, 0x7fffffff

    :try_start_0
    iput v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mMin:I

    .line 24
    const/4 v4, 0x0

    iput v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mMax:I

    .line 25
    const/4 v4, 0x0

    iput v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mAverageTime:I

    .line 26
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mJson:Lorg/json/JSONObject;

    .line 27
    iget-object v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mJson:Lorg/json/JSONObject;

    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mValuesArray:Lorg/json/JSONArray;

    .line 28
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mValuesArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v1, v4, :cond_0

    .line 42
    iget-object v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mValuesArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    div-int v4, v2, v4

    iput v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mAverageTime:I

    .line 44
    return-void

    .line 29
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mValuesArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, val:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lcom/waze/widget/routing/RoutingResponse;->mMin:I

    if-ge v4, v5, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mMin:I

    .line 32
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lcom/waze/widget/routing/RoutingResponse;->mMax:I

    if-le v4, v5, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/waze/widget/routing/RoutingResponse;->mMax:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v1           #i:I
    .end local v3           #val:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JSONException parsing routing result ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    .line 39
    throw v0
.end method


# virtual methods
.method public getAveragetTime()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/waze/widget/routing/RoutingResponse;->mAverageTime:I

    return v0
.end method

.method public getList()[D
    .locals 7

    .prologue
    .line 51
    iget-object v3, p0, Lcom/waze/widget/routing/RoutingResponse;->mValuesArray:Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/waze/widget/routing/RoutingResponse;->mValuesArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v0, v3, [D

    .line 53
    .local v0, dArray:[D
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/waze/widget/routing/RoutingResponse;->mValuesArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 64
    .end local v0           #dArray:[D
    .end local v1           #i:I
    :goto_1
    return-object v0

    .line 56
    .restart local v0       #dArray:[D
    .restart local v1       #i:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/waze/widget/routing/RoutingResponse;->mValuesArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, val:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x404e

    div-double/2addr v3, v5

    aput-wide v3, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v2           #val:Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v0           #dArray:[D
    .end local v1           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 58
    .restart local v0       #dArray:[D
    .restart local v1       #i:I
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/waze/widget/routing/RoutingResponse;->mMax:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/waze/widget/routing/RoutingResponse;->mMin:I

    return v0
.end method

.method public getNumResults()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/waze/widget/routing/RoutingResponse;->mValuesArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getTime()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/waze/widget/routing/RoutingResponse;->mValuesArray:Lorg/json/JSONArray;

    if-nez v3, :cond_0

    .line 122
    :goto_0
    return v2

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/waze/widget/routing/RoutingResponse;->mValuesArray:Lorg/json/JSONArray;

    invoke-static {}, Lcom/waze/widget/routing/RoutingRequest;->getNowLocation()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, val:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 120
    .end local v1           #val:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/waze/widget/routing/RoutingResponse;->mJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/waze/widget/routing/RoutingResponse;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
