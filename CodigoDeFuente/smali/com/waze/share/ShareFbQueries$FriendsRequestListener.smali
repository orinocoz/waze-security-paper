.class public Lcom/waze/share/ShareFbQueries$FriendsRequestListener;
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
    name = "FriendsRequestListener"
.end annotation


# instance fields
.field private mCallback:Lcom/waze/share/ShareFbQueries$IFriendsListCallback;

.field private mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$IFriendsListCallback;)V
    .locals 1
    .parameter "progress"
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object v0, p0, Lcom/waze/share/ShareFbQueries$FriendsRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    .line 417
    iput-object v0, p0, Lcom/waze/share/ShareFbQueries$FriendsRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IFriendsListCallback;

    .line 378
    iput-object p1, p0, Lcom/waze/share/ShareFbQueries$FriendsRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    .line 379
    iput-object p2, p0, Lcom/waze/share/ShareFbQueries$FriendsRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IFriendsListCallback;

    .line 380
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 384
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 385
    .local v0, error:Lcom/facebook/FacebookRequestError;
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v2

    .line 386
    .local v2, graphObject:Lcom/facebook/model/GraphObject;
    const/4 v1, 0x0

    .line 389
    .local v1, friendsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbFriend;>;"
    const-string v4, "Facebook queries"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Friends list request completed with response: "

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

    .line 391
    if-eqz v2, :cond_0

    .line 393
    invoke-interface {v2}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x1

    #calls: Lcom/waze/share/ShareFbQueries;->parseFriendsListData(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/waze/share/ShareFbQueries;->access$0(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 396
    :cond_0
    if-eqz v1, :cond_3

    .line 398
    const-string v4, "Facebook queries"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Facebook friends request has been completed. Got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " friends!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v3, 0x0

    .line 407
    .local v3, res:I
    :goto_0
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$FriendsRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IFriendsListCallback;

    if-eqz v4, :cond_1

    .line 408
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$FriendsRequestListener;->mCallback:Lcom/waze/share/ShareFbQueries$IFriendsListCallback;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v3, v5}, Lcom/waze/share/ShareFbQueries$IFriendsListCallback;->onFriendsListResult(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 410
    :cond_1
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$FriendsRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    if-eqz v4, :cond_2

    .line 412
    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$FriendsRequestListener;->mProgress:Lcom/waze/ifs/ui/ProgressBarDialog;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/ProgressBarDialog;->cancel()V

    .line 414
    :cond_2
    return-void

    .line 403
    .end local v3           #res:I
    :cond_3
    const-string v4, "Facebook queries"

    const-string v5, "Facebook friends request has been completed. Got no results !"

    invoke-static {v4, v5}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const v3, 0x10000002

    .restart local v3       #res:I
    goto :goto_0
.end method
