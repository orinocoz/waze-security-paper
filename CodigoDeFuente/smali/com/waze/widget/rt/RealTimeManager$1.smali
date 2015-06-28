.class Lcom/waze/widget/rt/RealTimeManager$1;
.super Ljava/lang/Thread;
.source "RealTimeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/widget/rt/RealTimeManager;->SendStat(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/widget/rt/RealTimeManager;

.field private final synthetic val$httpclient:Lorg/apache/http/client/HttpClient;

.field private final synthetic val$httppost:Lorg/apache/http/client/methods/HttpPost;

.field private final synthetic val$sBuildCommand:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/widget/rt/RealTimeManager;Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/widget/rt/RealTimeManager$1;->this$0:Lcom/waze/widget/rt/RealTimeManager;

    iput-object p2, p0, Lcom/waze/widget/rt/RealTimeManager$1;->val$httppost:Lorg/apache/http/client/methods/HttpPost;

    iput-object p3, p0, Lcom/waze/widget/rt/RealTimeManager$1;->val$sBuildCommand:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/widget/rt/RealTimeManager$1;->val$httpclient:Lorg/apache/http/client/HttpClient;

    .line 266
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/waze/widget/rt/RealTimeManager$1;->val$httppost:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "Content-Type"

    const-string v4, "binary/octet-stream"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/waze/widget/rt/RealTimeManager$1;->val$httppost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, Lcom/waze/widget/rt/RealTimeManager$1;->val$sBuildCommand:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 277
    iget-object v2, p0, Lcom/waze/widget/rt/RealTimeManager$1;->val$httpclient:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/waze/widget/rt/RealTimeManager$1;->val$httppost:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 279
    .local v1, rp:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 290
    .end local v1           #rp:Lorg/apache/http/HttpResponse;
    :goto_0
    return-void

    .line 285
    .restart local v1       #rp:Lorg/apache/http/HttpResponse;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authenticate failed [error ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v1           #rp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authenticate error [error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
