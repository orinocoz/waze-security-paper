.class public Lcom/waze/share/ShareFbQueries$PostRequestListener;
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
    name = "PostRequestListener"
.end annotation


# instance fields
.field private mCallback:Lcom/waze/share/ShareFbQueries$IPostCallback;

.field private mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$IPostCallback;)V
    .locals 1
    .parameter "progress"
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object v0, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    .line 524
    iput-object v0, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IPostCallback;

    .line 479
    iput-object p1, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    .line 480
    iput-object p2, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IPostCallback;

    .line 481
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 8
    .parameter "response"

    .prologue
    const/4 v7, 0x0

    .line 485
    const-string v4, "Facebook queries"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Post request completed with response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Response;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 489
    .local v0, error:Lcom/facebook/FacebookRequestError;
    if-eqz v0, :cond_2

    .line 491
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IPostCallback;

    if-eqz v4, :cond_0

    .line 492
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IPostCallback;

    const v5, 0x10000001

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/waze/share/ShareFbQueries$IPostCallback;->onPostResult(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v0           #error:Lcom/facebook/FacebookRequestError;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    if-eqz v4, :cond_1

    .line 519
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/ProgressBarDialog;->cancel()V

    .line 521
    :cond_1
    return-void

    .line 496
    .restart local v0       #error:Lcom/facebook/FacebookRequestError;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 497
    .local v2, json:Lorg/json/JSONObject;
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, postId:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 500
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IPostCallback;

    if-eqz v4, :cond_0

    .line 501
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IPostCallback;

    const v5, 0x10000001

    const-string v6, "No post id"

    invoke-interface {v4, v5, v6}, Lcom/waze/share/ShareFbQueries$IPostCallback;->onPostResult(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 511
    .end local v0           #error:Lcom/facebook/FacebookRequestError;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #postId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 513
    .local v1, ex:Lorg/json/JSONException;
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IPostCallback;

    if-eqz v4, :cond_0

    .line 514
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IPostCallback;

    const v5, 0x10000004

    invoke-interface {v4, v5, v7}, Lcom/waze/share/ShareFbQueries$IPostCallback;->onPostResult(ILjava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v1           #ex:Lorg/json/JSONException;
    .restart local v0       #error:Lcom/facebook/FacebookRequestError;
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #postId:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v4, "Facebook queries"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Post request succeeded. Id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IPostCallback;

    if-eqz v4, :cond_0

    .line 507
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$PostRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IPostCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/waze/share/ShareFbQueries$IPostCallback;->onPostResult(ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
