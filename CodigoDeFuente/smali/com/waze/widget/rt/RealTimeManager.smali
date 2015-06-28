.class public Lcom/waze/widget/rt/RealTimeManager;
.super Ljava/lang/Object;
.source "RealTimeManager.java"


# static fields
.field private static final PROTOCL_VERSION:I = 0x92

.field private static mInstance:Lcom/waze/widget/rt/RealTimeManager;


# instance fields
.field private mAuthenticationRsp:Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;

.field private mIsSecuredConnection:Z

.field private mPassword:Ljava/lang/String;

.field private mSecuredServerUrl:Ljava/lang/String;

.field private mServerUrl:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/widget/rt/RealTimeManager;->mInstance:Lcom/waze/widget/rt/RealTimeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0}, Lcom/waze/widget/rt/RealTimeManager;->loadRealTimeParams()V

    .line 59
    return-void
.end method

.method public static getInstance()Lcom/waze/widget/rt/RealTimeManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/waze/widget/rt/RealTimeManager;->mInstance:Lcom/waze/widget/rt/RealTimeManager;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/waze/widget/rt/RealTimeManager;->mInstance:Lcom/waze/widget/rt/RealTimeManager;

    .line 37
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/waze/widget/rt/RealTimeManager;

    invoke-direct {v0}, Lcom/waze/widget/rt/RealTimeManager;-><init>()V

    sput-object v0, Lcom/waze/widget/rt/RealTimeManager;->mInstance:Lcom/waze/widget/rt/RealTimeManager;

    .line 37
    sget-object v0, Lcom/waze/widget/rt/RealTimeManager;->mInstance:Lcom/waze/widget/rt/RealTimeManager;

    goto :goto_0
.end method

.method public static getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    const/16 v0, 0x92

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadRealTimeParams()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "Realtime.Name"

    invoke-static {v0}, Lcom/waze/config/WazeUserPreferences;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/widget/rt/RealTimeManager;->mUserName:Ljava/lang/String;

    .line 47
    const-string v0, "Realtime.PasswordEnc"

    invoke-static {v0}, Lcom/waze/config/WazeUserPreferences;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/widget/rt/RealTimeManager;->mPassword:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->ServerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/widget/rt/RealTimeManager;->mServerUrl:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->SecuredServerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/widget/rt/RealTimeManager;->mSecuredServerUrl:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetPreferences;->isWebServiceSecuredEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/widget/rt/RealTimeManager;->mIsSecuredConnection:Z

    .line 51
    return-void
.end method


# virtual methods
.method public ClientInfo(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 111
    const-string v7, "client_info"

    invoke-static {v7, p1}, Lcom/waze/messages/QuestionData;->ReadKeyData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, sClientInfo:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    :cond_0
    const-string v7, "Client info failed"

    invoke-static {v7}, Lcom/waze/widget/WazeAppWidgetLog;->w(Ljava/lang/String;)V

    .line 144
    :goto_0
    return v6

    .line 119
    :cond_1
    :try_start_0
    const-string v7, "Sending client info request"

    invoke-static {v7}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 120
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 123
    .local v1, httpclient:Lorg/apache/http/client/HttpClient;
    iget-boolean v7, p0, Lcom/waze/widget/rt/RealTimeManager;->mIsSecuredConnection:Z

    if-eqz v7, :cond_2

    .line 124
    iget-object v5, p0, Lcom/waze/widget/rt/RealTimeManager;->mSecuredServerUrl:Ljava/lang/String;

    .line 127
    .local v5, url:Ljava/lang/String;
    :goto_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/distrib/static"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, httppost:Lorg/apache/http/client/methods/HttpPost;
    const-string v7, "Content-Type"

    const-string v8, "binary/octet-stream"

    invoke-virtual {v2, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v7, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v7, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 131
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 133
    .local v3, rp:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    .line 135
    const/4 v6, 0x1

    goto :goto_0

    .line 126
    .end local v2           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #rp:Lorg/apache/http/HttpResponse;
    .end local v5           #url:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/waze/widget/rt/RealTimeManager;->mServerUrl:Ljava/lang/String;

    .restart local v5       #url:Ljava/lang/String;
    goto :goto_1

    .line 139
    .restart local v2       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v3       #rp:Lorg/apache/http/HttpResponse;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "client info failed [error ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v1           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v2           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #rp:Lorg/apache/http/HttpResponse;
    .end local v5           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "client info error [error="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public GetURIForStat(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "mContext"
    .parameter "EventName"
    .parameter "EventParams"

    .prologue
    const/4 v0, 0x0

    .line 152
    const-string v4, "client_info"

    invoke-static {v4, p1}, Lcom/waze/messages/QuestionData;->ReadKeyData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, sClientInfo:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :cond_1
    iget-object v4, p0, Lcom/waze/widget/rt/RealTimeManager;->mUserName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/waze/widget/rt/RealTimeManager;->mPassword:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/waze/widget/rt/RealTimeManager;->mPassword:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/waze/NativeManager;->decryptPasswordStatic(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, decPassword:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "login aborted  / password extraction failed ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/waze/widget/rt/RealTimeManager;->mUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/widget/WazeAppWidgetLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, cmd:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Authenticate,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/waze/widget/rt/RealTimeManager;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/widget/rt/RealTimeManager;->mUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v2, Lcom/waze/utils/StatsData;

    invoke-direct {v2, p1, p2, p3}, Lcom/waze/utils/StatsData;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 172
    .local v2, rr:Lcom/waze/utils/StatsData;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/waze/utils/StatsData;->buildCmd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Logout\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    goto/16 :goto_0
.end method

.method public SendAdsStat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "mContext"
    .parameter "Eventname"

    .prologue
    .line 303
    iget-boolean v7, p0, Lcom/waze/widget/rt/RealTimeManager;->mIsSecuredConnection:Z

    if-eqz v7, :cond_1

    .line 304
    iget-object v6, p0, Lcom/waze/widget/rt/RealTimeManager;->mSecuredServerUrl:Ljava/lang/String;

    .line 308
    .local v6, url:Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 309
    :cond_0
    const-string v7, "OfflineStats"

    const-string v8, "server url is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_1
    return-void

    .line 306
    .end local v6           #url:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/waze/widget/rt/RealTimeManager;->mServerUrl:Ljava/lang/String;

    .restart local v6       #url:Ljava/lang/String;
    goto :goto_0

    .line 313
    :cond_2
    const-string v7, "Offline Ads.Params"

    invoke-static {v7}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, params:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 316
    :cond_3
    const-string v7, "OfflineStats"

    const-string v8, " Ads build params failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    :cond_4
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    .line 321
    .local v3, s:[Ljava/lang/String;
    invoke-static {}, Lcom/waze/widget/rt/RealTimeManager;->getInstance()Lcom/waze/widget/rt/RealTimeManager;

    move-result-object v7

    invoke-virtual {v7, p1, p2, v3}, Lcom/waze/widget/rt/RealTimeManager;->GetURIForStat(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, sBuildCommand:Ljava/lang/String;
    if-nez v4, :cond_5

    .line 325
    const-string v7, "OfflineStats"

    const-string v8, " Ads build command failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 329
    :cond_5
    const-string v7, "OfflineStats"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " Sending offline event: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " full build command : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 332
    .local v0, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/distrib/static"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Lcom/waze/widget/rt/RealTimeManager$2;

    invoke-direct {v5, p0, v1, v4, v0}, Lcom/waze/widget/rt/RealTimeManager$2;-><init>(Lcom/waze/widget/rt/RealTimeManager;Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V

    .line 368
    .local v5, th:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public SendStat(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "mContext"
    .parameter "Eventname"
    .parameter "EventParams"

    .prologue
    .line 242
    iget-boolean v5, p0, Lcom/waze/widget/rt/RealTimeManager;->mIsSecuredConnection:Z

    if-eqz v5, :cond_1

    .line 243
    iget-object v4, p0, Lcom/waze/widget/rt/RealTimeManager;->mSecuredServerUrl:Ljava/lang/String;

    .line 247
    .local v4, url:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 248
    :cond_0
    const-string v5, "OfflineStats"

    const-string v6, "server url is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_1
    return-void

    .line 245
    .end local v4           #url:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/waze/widget/rt/RealTimeManager;->mServerUrl:Ljava/lang/String;

    .restart local v4       #url:Ljava/lang/String;
    goto :goto_0

    .line 252
    :cond_2
    invoke-static {}, Lcom/waze/widget/rt/RealTimeManager;->getInstance()Lcom/waze/widget/rt/RealTimeManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/waze/widget/rt/RealTimeManager;->GetURIForStat(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, sBuildCommand:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 256
    const-string v5, "OfflineStats"

    const-string v6, "build command failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    :cond_3
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 261
    .local v0, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/distrib/static"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Lcom/waze/widget/rt/RealTimeManager$1;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/waze/widget/rt/RealTimeManager$1;-><init>(Lcom/waze/widget/rt/RealTimeManager;Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V

    .line 296
    .local v3, th:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public authenticate()V
    .locals 11

    .prologue
    .line 185
    iget-object v9, p0, Lcom/waze/widget/rt/RealTimeManager;->mUserName:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/waze/widget/rt/RealTimeManager;->mPassword:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 186
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "login aborted ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/waze/widget/rt/RealTimeManager;->mUserName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/waze/widget/WazeAppWidgetLog;->w(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v9, p0, Lcom/waze/widget/rt/RealTimeManager;->mPassword:Ljava/lang/String;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/waze/NativeManager;->decryptPasswordStatic(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, decPassword:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 192
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "login aborted  / password extraction failed ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/waze/widget/rt/RealTimeManager;->mUserName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/waze/widget/WazeAppWidgetLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-boolean v9, p0, Lcom/waze/widget/rt/RealTimeManager;->mIsSecuredConnection:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/waze/widget/rt/RealTimeManager;->mSecuredServerUrl:Ljava/lang/String;

    if-eqz v9, :cond_4

    :cond_3
    iget-boolean v9, p0, Lcom/waze/widget/rt/RealTimeManager;->mIsSecuredConnection:Z

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/waze/widget/rt/RealTimeManager;->mServerUrl:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 197
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "login aborted [mIsSecuredConnection="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/waze/widget/rt/RealTimeManager;->mIsSecuredConnection:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mSecuredServerUrl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/waze/widget/rt/RealTimeManager;->mSecuredServerUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mServerUrl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/waze/widget/rt/RealTimeManager;->mServerUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/waze/widget/WazeAppWidgetLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_5
    new-instance v0, Lcom/waze/widget/rt/AuthenticateRequest;

    iget-object v9, p0, Lcom/waze/widget/rt/RealTimeManager;->mUserName:Ljava/lang/String;

    invoke-direct {v0, v9, v2}, Lcom/waze/widget/rt/AuthenticateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v0, authReq:Lcom/waze/widget/rt/AuthenticateRequest;
    :try_start_0
    const-string v9, "Sending Authenticate request"

    invoke-static {v9}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 207
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 210
    .local v4, httpclient:Lorg/apache/http/client/HttpClient;
    iget-boolean v9, p0, Lcom/waze/widget/rt/RealTimeManager;->mIsSecuredConnection:Z

    if-eqz v9, :cond_6

    .line 211
    iget-object v8, p0, Lcom/waze/widget/rt/RealTimeManager;->mSecuredServerUrl:Ljava/lang/String;

    .line 214
    .local v8, url:Ljava/lang/String;
    :goto_1
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/distrib/static"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 216
    .local v5, httppost:Lorg/apache/http/client/methods/HttpPost;
    const-string v9, "Content-Type"

    const-string v10, "binary/octet-stream"

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Lcom/waze/widget/rt/AuthenticateRequest;->buildCmd()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, cmd:Ljava/lang/String;
    new-instance v9, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v9, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 219
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 221
    .local v6, rp:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_7

    .line 223
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, str:Ljava/lang/String;
    new-instance v9, Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;

    invoke-direct {v9, v7}, Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/waze/widget/rt/RealTimeManager;->mAuthenticationRsp:Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 232
    .end local v1           #cmd:Ljava/lang/String;
    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v5           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #rp:Lorg/apache/http/HttpResponse;
    .end local v7           #str:Ljava/lang/String;
    .end local v8           #url:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 233
    .local v3, e:Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Authenticate error [error="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #httpclient:Lorg/apache/http/client/HttpClient;
    :cond_6
    :try_start_1
    iget-object v8, p0, Lcom/waze/widget/rt/RealTimeManager;->mServerUrl:Ljava/lang/String;

    .restart local v8       #url:Ljava/lang/String;
    goto :goto_1

    .line 229
    .restart local v1       #cmd:Ljava/lang/String;
    .restart local v5       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v6       #rp:Lorg/apache/http/HttpResponse;
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Authenticate failed [error ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/waze/widget/rt/RealTimeManager;->mAuthenticationRsp:Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/widget/rt/RealTimeManager;->mAuthenticationRsp:Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;

    invoke-virtual {v0}, Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;->getCookie()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/waze/widget/rt/RealTimeManager;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/waze/widget/rt/RealTimeManager;->mAuthenticationRsp:Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/widget/rt/RealTimeManager;->mAuthenticationRsp:Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;

    invoke-virtual {v0}, Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;->getSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/waze/widget/rt/RealTimeManager;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public hasUserName()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/waze/widget/rt/RealTimeManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/waze/widget/rt/RealTimeManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
