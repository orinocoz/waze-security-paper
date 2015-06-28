.class public Lcom/waze/share/ShareFbQueries$LocationRequestListener;
.super Ljava/lang/Object;
.source "ShareFbQueries.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/ShareFbQueries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationRequestListener"
.end annotation


# instance fields
.field private mCallback:Lcom/waze/share/ShareFbQueries$ILocationsListCallback;

.field private mCenter:Lcom/waze/location/Position;

.field private mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$ILocationsListCallback;Lcom/waze/location/Position;)V
    .locals 1
    .parameter "progress"
    .parameter "cb"
    .parameter "center"

    .prologue
    const/4 v0, 0x0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object v0, p0, Lcom/waze/share/ShareFbQueries$LocationRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    .line 466
    iput-object v0, p0, Lcom/waze/share/ShareFbQueries$LocationRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$ILocationsListCallback;

    .line 425
    iput-object p1, p0, Lcom/waze/share/ShareFbQueries$LocationRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    .line 426
    iput-object p2, p0, Lcom/waze/share/ShareFbQueries$LocationRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$ILocationsListCallback;

    .line 427
    iput-object p3, p0, Lcom/waze/share/ShareFbQueries$LocationRequestListener;->mCenter:Lcom/waze/location/Position;

    .line 428
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 433
    .local v0, error:Lcom/facebook/FacebookRequestError;
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    .line 434
    .local v1, graphObject:Lcom/facebook/model/GraphObject;
    const/4 v2, 0x0

    .line 437
    .local v2, locationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbLocation;>;"
    const-string v4, "Facebook queries"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Location request completed with response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Response;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-eqz v1, :cond_0

    .line 441
    invoke-interface {v1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/share/ShareFbQueries$LocationRequestListener;->mCenter:Lcom/waze/location/Position;

    const/4 v6, 0x0

    #calls: Lcom/waze/share/ShareFbQueries;->parseLocationsListData(Lorg/json/JSONObject;Lcom/waze/location/Position;Z)Ljava/util/ArrayList;
    invoke-static {v4, v5, v6}, Lcom/waze/share/ShareFbQueries;->access$1(Lorg/json/JSONObject;Lcom/waze/location/Position;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 444
    :cond_0
    if-eqz v2, :cond_3

    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, res:I
    const-string v4, "Facebook queries"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Facebook location request has been completed. Got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " locations!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_0
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$LocationRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$ILocationsListCallback;

    if-eqz v4, :cond_1

    .line 456
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$LocationRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$ILocationsListCallback;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v3, v5}, Lcom/waze/share/ShareFbQueries$ILocationsListCallback;->onLocationsListResult(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 458
    :cond_1
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$LocationRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    if-eqz v4, :cond_2

    .line 460
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$LocationRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/ProgressBarDialog;->cancel()V

    .line 462
    :cond_2
    return-void

    .line 451
    .end local v3           #res:I
    :cond_3
    const v3, 0x10000002

    .line 452
    .restart local v3       #res:I
    const-string v4, "Facebook queries"

    const-string v5, "Facebook location request has been completed. Got no locations!"

    invoke-static {v4, v5}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
