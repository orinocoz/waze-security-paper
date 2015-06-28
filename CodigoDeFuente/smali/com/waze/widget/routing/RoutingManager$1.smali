.class Lcom/waze/widget/routing/RoutingManager$1;
.super Ljava/lang/Thread;
.source "RoutingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/widget/routing/RoutingManager;->execute(Lcom/waze/widget/routing/RoutingRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/widget/routing/RoutingManager;

.field private final synthetic val$httpclient:Lorg/apache/http/client/HttpClient;

.field private final synthetic val$httppost:Lorg/apache/http/client/methods/HttpPost;


# direct methods
.method constructor <init>(Lcom/waze/widget/routing/RoutingManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/widget/routing/RoutingManager$1;->this$0:Lcom/waze/widget/routing/RoutingManager;

    iput-object p2, p0, Lcom/waze/widget/routing/RoutingManager$1;->val$httpclient:Lorg/apache/http/client/HttpClient;

    iput-object p3, p0, Lcom/waze/widget/routing/RoutingManager$1;->val$httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 82
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 88
    :try_start_0
    iget-object v4, p0, Lcom/waze/widget/routing/RoutingManager$1;->val$httpclient:Lorg/apache/http/client/HttpClient;

    iget-object v5, p0, Lcom/waze/widget/routing/RoutingManager$1;->val$httppost:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 90
    .local v2, rp:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 91
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, str:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got routing response ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :try_start_2
    new-instance v1, Lcom/waze/widget/routing/RoutingResponse;

    invoke-direct {v1, v3}, Lcom/waze/widget/routing/RoutingResponse;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, routingResponse:Lcom/waze/widget/routing/RoutingResponse;
    invoke-static {v1}, Lcom/waze/widget/WidgetManager;->executeResponse(Lcom/waze/widget/routing/RoutingResponse;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    .end local v1           #routingResponse:Lcom/waze/widget/routing/RoutingResponse;
    .end local v2           #rp:Lorg/apache/http/HttpResponse;
    .end local v3           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 97
    .restart local v2       #rp:Lorg/apache/http/HttpResponse;
    .restart local v3       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Lorg/json/JSONException;
    const/4 v4, 0x0

    :try_start_3
    invoke-static {v4}, Lcom/waze/widget/WidgetManager;->executeResponse(Lcom/waze/widget/routing/RoutingResponse;)V

    goto :goto_0

    .line 108
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #str:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 101
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "routing request failed code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    .line 106
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/waze/widget/WidgetManager;->executeResponse(Lcom/waze/widget/routing/RoutingResponse;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 111
    .end local v2           #rp:Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v4

    goto :goto_0
.end method
