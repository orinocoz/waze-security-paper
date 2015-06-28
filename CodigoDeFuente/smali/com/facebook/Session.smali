.class public Lcom/facebook/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Session$AuthorizationRequest;,
        Lcom/facebook/Session$AutoPublishAsyncTask;,
        Lcom/facebook/Session$Builder;,
        Lcom/facebook/Session$NewPermissionsRequest;,
        Lcom/facebook/Session$OpenRequest;,
        Lcom/facebook/Session$PermissionsPair;,
        Lcom/facebook/Session$SerializationProxyV1;,
        Lcom/facebook/Session$SerializationProxyV2;,
        Lcom/facebook/Session$StartActivityDelegate;,
        Lcom/facebook/Session$StatusCallback;,
        Lcom/facebook/Session$TokenRefreshRequest;,
        Lcom/facebook/Session$TokenRefreshRequestHandler;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$SessionState:[I = null

.field public static final ACTION_ACTIVE_SESSION_CLOSED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

.field public static final ACTION_ACTIVE_SESSION_OPENED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_OPENED"

.field public static final ACTION_ACTIVE_SESSION_SET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_SET"

.field public static final ACTION_ACTIVE_SESSION_UNSET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_UNSET"

.field private static final AUTH_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.authBundleKey"

.field public static final DEFAULT_AUTHORIZE_ACTIVITY_CODE:I = 0xface

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static final SESSION_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.saveSessionKey"

.field private static final STATIC_LOCK:Ljava/lang/Object; = null

.field public static final TAG:Ljava/lang/String; = null

.field private static final TOKEN_EXTEND_RETRY_SECONDS:I = 0xe10

.field private static final TOKEN_EXTEND_THRESHOLD_SECONDS:I = 0x15180

.field public static final WEB_VIEW_ERROR_CODE_KEY:Ljava/lang/String; = "com.facebook.sdk.WebViewErrorCode"

.field public static final WEB_VIEW_FAILING_URL_KEY:Ljava/lang/String; = "com.facebook.sdk.FailingUrl"

.field private static activeSession:Lcom/facebook/Session; = null

.field private static final serialVersionUID:J = 0x1L

.field private static volatile staticContext:Landroid/content/Context;


# instance fields
.field private appEventsLogger:Lcom/facebook/AppEventsLogger;

.field private applicationId:Ljava/lang/String;

.field private volatile authorizationBundle:Landroid/os/Bundle;

.field private authorizationClient:Lcom/facebook/AuthorizationClient;

.field private autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Session$StatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

.field private handler:Landroid/os/Handler;

.field private lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private final lock:Ljava/lang/Object;

.field private pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

.field private state:Lcom/facebook/SessionState;

.field private tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

.field private tokenInfo:Lcom/facebook/AccessToken;


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$SessionState()[I
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/SessionState;->values()[Lcom/facebook/SessionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/facebook/Session;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    .line 159
    new-instance v0, Lcom/facebook/Session$1;

    invoke-direct {v0}, Lcom/facebook/Session$1;-><init>()V

    sput-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "currentContext"

    .prologue
    const/4 v1, 0x0

    .line 293
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    .line 294
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;)V
    .locals 1
    .parameter "context"
    .parameter "applicationId"
    .parameter "tokenCachingStrategy"

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    .line 298
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V
    .locals 6
    .parameter "context"
    .parameter "applicationId"
    .parameter "tokenCachingStrategy"
    .parameter "loadTokenFromCache"

    .prologue
    const/4 v2, 0x0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 179
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 304
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 305
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 308
    :cond_0
    const-string v3, "applicationId"

    invoke-static {p2, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 312
    if-nez p3, :cond_1

    .line 313
    new-instance p3, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    .end local p3
    sget-object v3, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-direct {p3, v3}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    .line 316
    .restart local p3
    :cond_1
    iput-object p2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 317
    iput-object p3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 318
    sget-object v3, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    iput-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 319
    iput-object v2, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 320
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    .line 321
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    .line 323
    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lcom/facebook/TokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v2

    .line 324
    .local v2, tokenState:Landroid/os/Bundle;
    :cond_2
    invoke-static {v2}, Lcom/facebook/TokenCachingStrategy;->hasTokenInformation(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 326
    const-string v3, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {v2, v3}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 327
    .local v0, cachedExpirationDate:Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 329
    .local v1, now:Ljava/util/Date;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 332
    :cond_3
    invoke-virtual {p3}, Lcom/facebook/TokenCachingStrategy;->clear()V

    .line 333
    invoke-static {}, Lcom/facebook/AccessToken;->createEmptyToken()Lcom/facebook/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 342
    .end local v0           #cachedExpirationDate:Ljava/util/Date;
    .end local v1           #now:Ljava/util/Date;
    :goto_0
    return-void

    .line 336
    .restart local v0       #cachedExpirationDate:Ljava/util/Date;
    .restart local v1       #now:Ljava/util/Date;
    :cond_4
    invoke-static {v2}, Lcom/facebook/AccessToken;->createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 337
    sget-object v3, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    iput-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    goto :goto_0

    .line 340
    .end local v0           #cachedExpirationDate:Ljava/util/Date;
    .end local v1           #now:Ljava/util/Date;
    :cond_5
    invoke-static {}, Lcom/facebook/AccessToken;->createEmptyToken()Lcom/facebook/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V
    .locals 4
    .parameter "applicationId"
    .parameter "state"
    .parameter "tokenInfo"
    .parameter "lastAttemptedTokenExtendDate"
    .parameter "shouldAutoPublish"
    .parameter "pendingAuthorizationRequest"

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 258
    iput-object p1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 259
    iput-object p2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 260
    iput-object p3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 261
    iput-object p4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 262
    iput-object p6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 263
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    .line 264
    iput-object v3, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 265
    iput-object v3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    .line 267
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct/range {p0 .. p6}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V
    .locals 4
    .parameter "applicationId"
    .parameter "state"
    .parameter "tokenInfo"
    .parameter "lastAttemptedTokenExtendDate"
    .parameter "shouldAutoPublish"
    .parameter "pendingAuthorizationRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/SessionState;",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/Date;",
            "Z",
            "Lcom/facebook/Session$AuthorizationRequest;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, requestedPermissions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 276
    iput-object p1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 277
    iput-object p2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 278
    iput-object p3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 279
    iput-object p4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 280
    iput-object p6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 281
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    .line 282
    iput-object v3, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 283
    iput-object v3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    .line 285
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;Lcom/facebook/Session;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-direct/range {p0 .. p7}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$11(Lcom/facebook/Session;ILcom/facebook/AuthorizationClient$Result;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1341
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method static synthetic access$12(Lcom/facebook/Session;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcom/facebook/Session;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1600
    invoke-static {p0, p1}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2()Landroid/content/Context;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/Session;)Lcom/facebook/Session$TokenRefreshRequest;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    return-void
.end method

.method static synthetic access$5(Lcom/facebook/Session;Lcom/facebook/Session$AutoPublishAsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    return-void
.end method

.method static synthetic access$6(Lcom/facebook/Session;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7(Lcom/facebook/Session;)Lcom/facebook/AccessToken;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method static synthetic access$8(Lcom/facebook/Session;Lcom/facebook/AccessToken;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    return-void
.end method

.method static synthetic access$9(Lcom/facebook/Session;)Lcom/facebook/SessionState;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    return-object v0
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1803
    if-nez p0, :cond_1

    .line 1804
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1806
    :goto_0
    return v0

    .line 1804
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1806
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private autoPublishAsync()V
    .locals 4

    .prologue
    .line 1867
    const/4 v1, 0x0

    .line 1868
    .local v1, asyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
    monitor-enter p0

    .line 1869
    :try_start_0
    iget-object v3, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/facebook/Settings;->getShouldAutoPublishInstall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 1874
    .local v0, applicationId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1875
    new-instance v2, Lcom/facebook/Session$AutoPublishAsyncTask;

    sget-object v3, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-direct {v2, p0, v0, v3}, Lcom/facebook/Session$AutoPublishAsyncTask;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    .end local v1           #asyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
    .local v2, asyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
    move-object v1, v2

    .line 1868
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v2           #asyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
    .restart local v1       #asyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    if-eqz v1, :cond_1

    .line 1881
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/facebook/Session$AutoPublishAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1883
    :cond_1
    return-void

    .line 1868
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private finishAuthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 2
    .parameter "newToken"
    .parameter "exception"

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1516
    .local v0, oldState:Lcom/facebook/SessionState;
    if-eqz p1, :cond_1

    .line 1517
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1518
    invoke-direct {p0, p1}, Lcom/facebook/Session;->saveTokenToCache(Lcom/facebook/AccessToken;)V

    .line 1520
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1524
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1525
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1526
    return-void

    .line 1521
    :cond_1
    if-eqz p2, :cond_0

    .line 1522
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    goto :goto_0
.end method

.method private finishReauthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 2
    .parameter "newToken"
    .parameter "exception"

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1531
    .local v0, oldState:Lcom/facebook/SessionState;
    if-eqz p1, :cond_0

    .line 1532
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1533
    invoke-direct {p0, p1}, Lcom/facebook/Session;->saveTokenToCache(Lcom/facebook/AccessToken;)V

    .line 1535
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1538
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1539
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1540
    return-void
.end method

.method public static final getActiveSession()Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 968
    sget-object v1, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 969
    :try_start_0
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    monitor-exit v1

    return-object v0

    .line 968
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAppEventsLogger()Lcom/facebook/AppEventsLogger;
    .locals 3

    .prologue
    .line 1647
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1648
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    if-nez v0, :cond_0

    .line 1649
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    monitor-exit v1

    return-object v0

    .line 1647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLoginActivityIntent(Lcom/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;
    .locals 5
    .parameter "request"

    .prologue
    .line 1453
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1454
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/facebook/LoginActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1455
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1458
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    move-result-object v0

    .line 1459
    .local v0, authClientRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    invoke-static {v0}, Lcom/facebook/LoginActivity;->populateIntentExtras(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;

    move-result-object v1

    .line 1460
    .local v1, extras:Landroid/os/Bundle;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1462
    return-object v2
.end method

.method static getStaticContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1167
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V
    .locals 4
    .parameter "resultCode"
    .parameter "result"

    .prologue
    .line 1342
    const/4 v1, 0x0

    .line 1343
    .local v1, newToken:Lcom/facebook/AccessToken;
    const/4 v0, 0x0

    .line 1344
    .local v0, exception:Ljava/lang/Exception;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 1345
    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    sget-object v3, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;

    if-ne v2, v3, :cond_1

    .line 1346
    iget-object v1, p2, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    .line 1354
    :cond_0
    :goto_0
    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    iget-object v3, p2, Lcom/facebook/AuthorizationClient$Result;->loggingExtras:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 1356
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    .line 1357
    invoke-virtual {p0, v1, v0}, Lcom/facebook/Session;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    .line 1358
    return-void

    .line 1348
    :cond_1
    new-instance v0, Lcom/facebook/FacebookAuthorizationException;

    .end local v0           #exception:Ljava/lang/Exception;
    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    .line 1350
    .restart local v0       #exception:Ljava/lang/Exception;
    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    .line 1351
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    .end local v0           #exception:Ljava/lang/Exception;
    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    .restart local v0       #exception:Ljava/lang/Exception;
    goto :goto_0
.end method

.method static handlePermissionResponse(Lcom/facebook/Response;)Lcom/facebook/Session$PermissionsPair;
    .locals 13
    .parameter "response"

    .prologue
    const/4 v10, 0x0

    .line 683
    invoke-virtual {p0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-object v10

    .line 687
    :cond_1
    const-class v11, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {p0, v11}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v8

    check-cast v8, Lcom/facebook/model/GraphMultiResult;

    .line 688
    .local v8, result:Lcom/facebook/model/GraphMultiResult;
    if-eqz v8, :cond_0

    .line 692
    invoke-interface {v8}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 693
    .local v0, data:Lcom/facebook/model/GraphObjectList;,"Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v11

    if-eqz v11, :cond_0

    .line 696
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 697
    .local v4, grantedPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 700
    .local v1, declinedPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/model/GraphObject;

    .line 701
    .local v3, firstObject:Lcom/facebook/model/GraphObject;
    const-string v10, "permission"

    invoke-interface {v3, v10}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 702
    invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 726
    :cond_3
    new-instance v10, Lcom/facebook/Session$PermissionsPair;

    invoke-direct {v10, v4, v1}, Lcom/facebook/Session$PermissionsPair;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 702
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/model/GraphObject;

    .line 703
    .local v5, graphObject:Lcom/facebook/model/GraphObject;
    const-string v11, "permission"

    invoke-interface {v5, v11}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 704
    .local v6, permission:Ljava/lang/String;
    const-string v11, "installed"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 707
    const-string v11, "status"

    invoke-interface {v5, v11}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 708
    .local v9, status:Ljava/lang/String;
    const-string v11, "granted"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 709
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 710
    :cond_5
    const-string v11, "declined"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 711
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 715
    .end local v5           #graphObject:Lcom/facebook/model/GraphObject;
    .end local v6           #permission:Ljava/lang/String;
    .end local v9           #status:Ljava/lang/String;
    :cond_6
    invoke-interface {v3}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v7

    .line 716
    .local v7, permissionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 717
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v12, "installed"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 720
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_7

    .line 721
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static initializeStaticContext(Landroid/content/Context;)V
    .locals 2
    .parameter "currentContext"

    .prologue
    .line 1171
    if-eqz p0, :cond_0

    sget-object v1, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1172
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1173
    .local v0, applicationContext:Landroid/content/Context;
    if-eqz v0, :cond_1

    .end local v0           #applicationContext:Landroid/content/Context;
    :goto_0
    sput-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    .line 1175
    :cond_0
    return-void

    .restart local v0       #applicationContext:Landroid/content/Context;
    :cond_1
    move-object v0, p0

    .line 1173
    goto :goto_0
.end method

.method public static isPublishPermission(Ljava/lang/String;)Z
    .locals 1
    .parameter "permission"

    .prologue
    .line 1334
    if-eqz p0, :cond_1

    .line 1335
    const-string v0, "publish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    const-string v0, "manage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    sget-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
    .locals 7
    .parameter "result"
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AuthorizationClient$Result$Code;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1385
    .local p2, resultExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1386
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-nez v4, :cond_1

    .line 1388
    const-string v4, ""

    invoke-static {v4}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1389
    const-string v4, "2_result"

    .line 1390
    sget-object v5, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v5}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v5

    .line 1389
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v4, "5_error_message"

    .line 1392
    const-string v5, "Unexpected call to logAuthorizationComplete with null pendingAuthorizationRequest."

    .line 1391
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    :cond_0
    :goto_0
    const-string v4, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1424
    invoke-direct {p0}, Lcom/facebook/Session;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    move-result-object v3

    .line 1425
    .local v3, logger:Lcom/facebook/AppEventsLogger;
    const-string v4, "fb_mobile_login_complete"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1426
    return-void

    .line 1394
    .end local v3           #logger:Lcom/facebook/AppEventsLogger;
    :cond_1
    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v4}, Lcom/facebook/Session$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1395
    if-eqz p1, :cond_2

    .line 1396
    const-string v4, "2_result"

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1399
    const-string v4, "5_error_message"

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    :cond_3
    const/4 v2, 0x0

    .line 1404
    .local v2, jsonObject:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$2(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1405
    new-instance v2, Lorg/json/JSONObject;

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$2(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1407
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_4
    if-eqz p2, :cond_6

    .line 1408
    if-nez v2, :cond_5

    .line 1409
    new-instance v2, Lorg/json/JSONObject;

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1412
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_5
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_7

    .line 1418
    :cond_6
    :goto_2
    if-eqz v2, :cond_0

    .line 1419
    const-string v4, "6_extras"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1412
    :cond_7
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1413
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1415
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private logAuthorizationStart()V
    .locals 6

    .prologue
    .line 1361
    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v3}, Lcom/facebook/Session$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1362
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1366
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1367
    .local v1, extras:Lorg/json/JSONObject;
    const-string v3, "login_behavior"

    .line 1368
    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$4(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionLoginBehavior;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1367
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1369
    const-string v3, "request_code"

    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->requestCode:I
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$5(Lcom/facebook/Session$AuthorizationRequest;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1370
    const-string v3, "is_legacy"

    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$3(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1371
    const-string v3, "permissions"

    .line 1372
    const-string v4, ","

    iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;
    invoke-static {v5}, Lcom/facebook/Session$AuthorizationRequest;->access$6(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 1371
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1373
    const-string v3, "default_audience"

    .line 1374
    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$7(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionDefaultAudience;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/SessionDefaultAudience;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1373
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1375
    const-string v3, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    .end local v1           #extras:Lorg/json/JSONObject;
    :goto_0
    invoke-direct {p0}, Lcom/facebook/Session;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    move-result-object v2

    .line 1380
    .local v2, logger:Lcom/facebook/AppEventsLogger;
    const-string v3, "fb_mobile_login_start"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1381
    return-void

    .line 1376
    .end local v2           #logger:Lcom/facebook/AppEventsLogger;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .locals 7
    .parameter "openRequest"
    .parameter "authType"

    .prologue
    .line 1221
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 1222
    invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1225
    iget-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1226
    :try_start_0
    iget-object v2, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v2, :cond_1

    .line 1227
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    .line 1228
    const-string v6, "Session: an attempt was made to open a session that has a pending request."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0, v2, v4, v5}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1229
    monitor-exit v3

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1233
    .local v1, oldState:Lcom/facebook/SessionState;
    invoke-static {}, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v4}, Lcom/facebook/SessionState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1254
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 1255
    const-string v4, "Session: an attempt was made to open an already opened session."

    .line 1254
    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1225
    .end local v1           #oldState:Lcom/facebook/SessionState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1235
    .restart local v1       #oldState:Lcom/facebook/SessionState;
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    .local v0, newState:Lcom/facebook/SessionState;
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1236
    if-nez p1, :cond_2

    .line 1237
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "openRequest cannot be null when opening a new Session"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1239
    :cond_2
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1257
    :goto_1
    if-eqz p1, :cond_3

    .line 1258
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getCallback()Lcom/facebook/Session$StatusCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 1260
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1225
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1263
    sget-object v2, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-ne v0, v2, :cond_0

    .line 1264
    invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V

    goto :goto_0

    .line 1242
    .end local v0           #newState:Lcom/facebook/SessionState;
    :pswitch_1
    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1243
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/facebook/internal/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1244
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1247
    :cond_4
    iget-object v2, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-nez v2, :cond_5

    .line 1248
    sget-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    .restart local v0       #newState:Lcom/facebook/SessionState;
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    goto :goto_1

    .line 1250
    .end local v0           #newState:Lcom/facebook/SessionState;
    :cond_5
    sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    .restart local v0       #newState:Lcom/facebook/SessionState;
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .parameter "activity"
    .parameter "allowLoginUI"
    .parameter "callback"

    .prologue
    .line 1044
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/app/Activity;ZLjava/util/List;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .parameter "activity"
    .parameter "allowLoginUI"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session$StatusCallback;",
            ")",
            "Lcom/facebook/Session;"
        }
    .end annotation

    .prologue
    .line 1069
    .line 1071
    .local p2, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    .line 1068
    invoke-static {p0, p1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .parameter "context"
    .parameter "fragment"
    .parameter "allowLoginUI"
    .parameter "callback"

    .prologue
    .line 1094
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLjava/util/List;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .parameter "context"
    .parameter "fragment"
    .parameter "allowLoginUI"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session$StatusCallback;",
            ")",
            "Lcom/facebook/Session;"
        }
    .end annotation

    .prologue
    .line 1120
    .line 1122
    .local p3, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, p4}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    .line 1119
    invoke-static {p0, p2, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method private static openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
    .locals 3
    .parameter "context"
    .parameter "allowLoginUI"
    .parameter "openRequest"

    .prologue
    .line 1157
    new-instance v1, Lcom/facebook/Session$Builder;

    invoke-direct {v1, p0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    .line 1158
    .local v0, session:Lcom/facebook/Session;
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 1159
    :cond_0
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 1160
    invoke-virtual {v0, p2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 1163
    .end local v0           #session:Lcom/facebook/Session;
    :goto_0
    return-object v0

    .restart local v0       #session:Lcom/facebook/Session;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;
    .locals 2
    .parameter "context"

    .prologue
    .line 1022
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSessionWithAccessToken(Landroid/content/Context;Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 3
    .parameter "context"
    .parameter "accessToken"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 1148
    new-instance v0, Lcom/facebook/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    .line 1150
    .local v0, session:Lcom/facebook/Session;
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 1151
    invoke-virtual {v0, p1, p2}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    .line 1153
    return-object v0
.end method

.method static postActiveSessionAction(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 1595
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1597
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1598
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 894
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .locals 3
    .parameter "newPermissionsRequest"
    .parameter "authType"

    .prologue
    .line 1269
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 1270
    invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1272
    if-eqz p1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1274
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v0, :cond_0

    .line 1275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1276
    const-string v2, "Session: an attempt was made to request new permissions for a session that has a pending request."

    .line 1275
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1278
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1279
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1273
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1289
    invoke-virtual {p0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/Session$NewPermissionsRequest;->setValidateSameFbidAsToken(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p1}, Lcom/facebook/Session$NewPermissionsRequest;->getCallback()Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 1291
    invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1293
    :cond_1
    return-void

    .line 1280
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1282
    const-string v2, "Session: an attempt was made to request new permissions for a session that has been closed."

    .line 1281
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1284
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1285
    const-string v2, "Session: an attempt was made to request new permissions for a session that is not currently open."

    .line 1284
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1445
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1446
    .local v0, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_0

    .line 1449
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;
    .locals 7
    .parameter "context"
    .parameter "cachingStrategy"
    .parameter "callback"
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 933
    if-nez p3, :cond_0

    move-object v3, v4

    .line 958
    :goto_0
    return-object v3

    .line 936
    :cond_0
    const-string v5, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 937
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 938
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 940
    .local v2, is:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/Session;

    .line 941
    .local v3, session:Lcom/facebook/Session;
    invoke-static {p0}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 942
    if-eqz p1, :cond_3

    .line 943
    iput-object p1, v3, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 947
    :goto_1
    if-eqz p2, :cond_1

    .line 948
    invoke-virtual {v3, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 950
    :cond_1
    const-string v5, "com.facebook.sdk.Session.authBundleKey"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v3, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 952
    .end local v3           #session:Lcom/facebook/Session;
    :catch_0
    move-exception v1

    .line 953
    .local v1, e:Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    const-string v6, "Unable to restore session"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .end local v2           #is:Ljava/io/ByteArrayInputStream;
    :cond_2
    :goto_2
    move-object v3, v4

    .line 958
    goto :goto_0

    .line 945
    .restart local v2       #is:Ljava/io/ByteArrayInputStream;
    .restart local v3       #session:Lcom/facebook/Session;
    :cond_3
    :try_start_1
    new-instance v5, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-direct {v5, p0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    iput-object v5, v3, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 954
    .end local v3           #session:Lcom/facebook/Session;
    :catch_1
    move-exception v1

    .line 955
    .local v1, e:Ljava/io/IOException;
    sget-object v5, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    const-string v6, "Unable to restore session."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "handler"
    .parameter "runnable"

    .prologue
    .line 1601
    if-eqz p0, :cond_0

    .line 1602
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1606
    :goto_0
    return-void

    .line 1604
    :cond_0
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V
    .locals 4
    .parameter "session"
    .parameter "bundle"

    .prologue
    .line 905
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const-string v2, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 906
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 908
    .local v1, outputStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    const-string v2, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 913
    const-string v2, "com.facebook.sdk.Session.authBundleKey"

    iget-object v3, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 915
    .end local v1           #outputStream:Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-void

    .line 909
    .restart local v1       #outputStream:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 910
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Unable to save session."

    invoke-direct {v2, v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private saveTokenToCache(Lcom/facebook/AccessToken;)V
    .locals 2
    .parameter "newToken"

    .prologue
    .line 1543
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 1546
    :cond_0
    return-void
.end method

.method public static final setActiveSession(Lcom/facebook/Session;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 989
    sget-object v2, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 990
    :try_start_0
    sget-object v1, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    if-eq p0, v1, :cond_2

    .line 991
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    .line 993
    .local v0, oldSession:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 997
    :cond_0
    sput-object p0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    .line 999
    if-eqz v0, :cond_1

    .line 1000
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 1003
    :cond_1
    if-eqz p0, :cond_2

    .line 1004
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1007
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 989
    .end local v0           #oldSession:Lcom/facebook/Session;
    :cond_2
    monitor-exit v2

    .line 1012
    return-void

    .line 989
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tryLegacyAuth(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 1466
    new-instance v0, Lcom/facebook/AuthorizationClient;

    invoke-direct {v0}, Lcom/facebook/AuthorizationClient;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    .line 1467
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    new-instance v1, Lcom/facebook/Session$3;

    invoke-direct {v1, p0}, Lcom/facebook/Session$3;-><init>(Lcom/facebook/Session;)V

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V

    .line 1479
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/content/Context;)V

    .line 1480
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    .line 1481
    return-void
.end method

.method private tryLoginActivity(Lcom/facebook/Session$AuthorizationRequest;)Z
    .locals 5
    .parameter "request"

    .prologue
    const/4 v2, 0x0

    .line 1429
    invoke-direct {p0, p1}, Lcom/facebook/Session;->getLoginActivityIntent(Lcom/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;

    move-result-object v1

    .line 1431
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1441
    :goto_0
    return v2

    .line 1436
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getStartActivityDelegate()Lcom/facebook/Session$StartActivityDelegate;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I

    move-result v4

    invoke-interface {v3, v1, v4}, Lcom/facebook/Session$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    const/4 v2, 0x1

    goto :goto_0

    .line 1437
    :catch_0
    move-exception v0

    .line 1438
    .local v0, e:Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method private validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 6
    .parameter "request"

    .prologue
    .line 1296
    if-eqz p1, :cond_0

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->access$3(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1297
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1298
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1299
    invoke-direct {p0, v0}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1300
    new-instance v1, Lcom/facebook/FacebookException;

    .line 1301
    const-string v2, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1302
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/facebook/LoginActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1300
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1305
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .locals 7
    .parameter "request"
    .parameter "authType"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1308
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1309
    :cond_0
    sget-object v1, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v1, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1310
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot request publish or manage authorization with no permissions."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1314
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1331
    :cond_3
    return-void

    .line 1314
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1315
    .local v0, permission:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/Session;->isPublishPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1316
    sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1317
    new-instance v1, Lcom/facebook/FacebookException;

    .line 1319
    const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    new-array v3, v6, [Ljava/lang/Object;

    .line 1320
    aput-object v0, v3, v5

    .line 1318
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1317
    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1323
    :cond_5
    sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1324
    sget-object v2, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    .line 1326
    const-string v3, "Should not pass a read permission (%s) to a request for publish or manage authorization"

    new-array v4, v6, [Ljava/lang/Object;

    .line 1327
    aput-object v0, v4, v5

    .line 1325
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1324
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 888
    new-instance v0, Lcom/facebook/Session$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 889
    iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 888
    invoke-direct/range {v0 .. v6}, Lcom/facebook/Session$SerializationProxyV1;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V

    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 839
    iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v1

    .line 840
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_0
    monitor-exit v1

    .line 844
    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method authorize(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 6
    .parameter "request"

    .prologue
    .line 1178
    const/4 v2, 0x0

    .line 1180
    .local v2, started:Z
    iget-object v3, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/facebook/Session$AuthorizationRequest;->setApplicationId(Ljava/lang/String;)V

    .line 1182
    invoke-direct {p0}, Lcom/facebook/Session;->autoPublishAsync()V

    .line 1184
    invoke-direct {p0}, Lcom/facebook/Session;->logAuthorizationStart()V

    .line 1186
    invoke-direct {p0, p1}, Lcom/facebook/Session;->tryLoginActivity(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v2

    .line 1188
    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$2(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "try_login_activity"

    .line 1189
    if-eqz v2, :cond_2

    const-string v3, "1"

    .line 1188
    :goto_0
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    if-nez v2, :cond_0

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->access$3(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1192
    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$2(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "try_legacy"

    .line 1193
    const-string v5, "1"

    .line 1192
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    invoke-direct {p0, p1}, Lcom/facebook/Session;->tryLegacyAuth(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1196
    const/4 v2, 0x1

    .line 1199
    :cond_0
    if-nez v2, :cond_1

    .line 1200
    iget-object v4, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 1201
    :try_start_0
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1203
    .local v1, oldState:Lcom/facebook/SessionState;
    invoke-static {}, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v3

    iget-object v5, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v5}, Lcom/facebook/SessionState;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 1209
    sget-object v3, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    iput-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1211
    new-instance v0, Lcom/facebook/FacebookException;

    .line 1212
    const-string v3, "Log in attempt failed: LoginActivity could not be started, and not legacy request"

    .line 1211
    invoke-direct {v0, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v0, exception:Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v0}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 1214
    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {p0, v1, v3, v0}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1200
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    .end local v0           #exception:Ljava/lang/Exception;
    .end local v1           #oldState:Lcom/facebook/SessionState;
    :cond_1
    :goto_1
    return-void

    .line 1189
    :cond_2
    const-string v3, "0"

    goto :goto_0

    .line 1206
    .restart local v1       #oldState:Lcom/facebook/SessionState;
    :pswitch_0
    :try_start_1
    monitor-exit v4

    goto :goto_1

    .line 1200
    .end local v1           #oldState:Lcom/facebook/SessionState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1203
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 5

    .prologue
    .line 795
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 798
    .local v0, oldState:Lcom/facebook/SessionState;
    invoke-static {}, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 795
    :goto_0
    monitor-exit v2

    .line 818
    return-void

    .line 801
    :pswitch_0
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 802
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    new-instance v3, Lcom/facebook/FacebookException;

    .line 803
    const-string v4, "Log in attempt aborted."

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    goto :goto_0

    .line 795
    .end local v0           #oldState:Lcom/facebook/SessionState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 809
    .restart local v0       #oldState:Lcom/facebook/SessionState;
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 810
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final closeAndClearTokenInformation()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    invoke-virtual {v0}, Lcom/facebook/TokenCachingStrategy;->clear()V

    .line 828
    :cond_0
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    .line 829
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->clearCaches(Landroid/content/Context;)V

    .line 830
    invoke-virtual {p0}, Lcom/facebook/Session;->close()V

    .line 831
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "otherObj"

    .prologue
    const/4 v1, 0x0

    .line 1791
    instance-of v2, p1, Lcom/facebook/Session;

    if-nez v2, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1794
    check-cast v0, Lcom/facebook/Session;

    .line 1796
    .local v0, other:Lcom/facebook/Session;
    iget-object v2, v0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1797
    iget-object v2, v0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1798
    iget-object v2, v0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1799
    invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1796
    const/4 v1, 0x1

    goto :goto_0
.end method

.method extendAccessToken()V
    .locals 4

    .prologue
    .line 1615
    const/4 v0, 0x0

    .line 1616
    .local v0, newTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    iget-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1617
    :try_start_0
    iget-object v2, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    if-nez v2, :cond_0

    .line 1618
    new-instance v1, Lcom/facebook/Session$TokenRefreshRequest;

    invoke-direct {v1, p0}, Lcom/facebook/Session$TokenRefreshRequest;-><init>(Lcom/facebook/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    .end local v0           #newTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    .local v1, newTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    :try_start_1
    iput-object v1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 1616
    .end local v1           #newTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    .restart local v0       #newTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1623
    if-eqz v0, :cond_1

    .line 1624
    invoke-virtual {v0}, Lcom/facebook/Session$TokenRefreshRequest;->bind()V

    .line 1626
    :cond_1
    return-void

    .line 1616
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v0           #newTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    .restart local v1       #newTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #newTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    .restart local v0       #newTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    goto :goto_0
.end method

.method extendAccessTokenIfNeeded()V
    .locals 1

    .prologue
    .line 1609
    invoke-virtual {p0}, Lcom/facebook/Session;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    invoke-virtual {p0}, Lcom/facebook/Session;->extendAccessToken()V

    .line 1612
    :cond_0
    return-void
.end method

.method extendTokenCompleted(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 865
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 868
    .local v0, oldState:Lcom/facebook/SessionState;
    invoke-static {}, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 877
    sget-object v1, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refreshToken ignored in state "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    monitor-exit v2

    .line 885
    :goto_0
    return-void

    .line 870
    :pswitch_0
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 871
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 880
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-static {v1, p1}, Lcom/facebook/AccessToken;->createFromRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 881
    iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 865
    :cond_0
    monitor-exit v2

    goto :goto_0

    .end local v0           #oldState:Lcom/facebook/SessionState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 868
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 4
    .parameter "newToken"
    .parameter "exception"

    .prologue
    .line 1485
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    const/4 p1, 0x0

    .line 1487
    new-instance p2, Lcom/facebook/FacebookException;

    .end local p2
    const-string v0, "Invalid access token."

    invoke-direct {p2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 1491
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1492
    :try_start_0
    invoke-static {}, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2}, Lcom/facebook/SessionState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1491
    :goto_0
    monitor-exit v1

    .line 1512
    return-void

    .line 1495
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->finishAuthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1501
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->finishReauthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1508
    :pswitch_2
    sget-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected call to finishAuthOrReauth in state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorizationBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 352
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    monitor-exit v1

    return-object v0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getDeclinedPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getExpirationDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 418
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLastAttemptedTokenExtendDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getState()Lcom/facebook/SessionState;
    .locals 2

    .prologue
    .line 381
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    monitor-exit v1

    return-object v0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTokenInfo()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1786
    const/4 v0, 0x0

    return v0
.end method

.method public final isClosed()Z
    .locals 2

    .prologue
    .line 369
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isOpened()Z
    .locals 2

    .prologue
    .line 363
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPermissionGranted(Ljava/lang/String;)Z
    .locals 2
    .parameter "permission"

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 452
    .local v0, grantedPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 455
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 7
    .parameter "currentActivity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 750
    const-string v4, "currentActivity"

    invoke-static {p1, v4}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 754
    iget-object v4, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 755
    :try_start_0
    iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v5}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I

    move-result v5

    if-eq p2, v5, :cond_1

    .line 756
    :cond_0
    monitor-exit v4

    const/4 v3, 0x0

    .line 787
    :goto_0
    return v3

    .line 754
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    const/4 v1, 0x0

    .line 761
    .local v1, exception:Ljava/lang/Exception;
    sget-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 763
    .local v0, code:Lcom/facebook/AuthorizationClient$Result$Code;
    if-eqz p4, :cond_3

    .line 765
    const-string v4, "com.facebook.LoginActivity:Result"

    .line 764
    invoke-virtual {p4, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/facebook/AuthorizationClient$Result;

    .line 766
    .local v2, result:Lcom/facebook/AuthorizationClient$Result;
    if-eqz v2, :cond_2

    .line 768
    invoke-direct {p0, p3, v2}, Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V

    goto :goto_0

    .line 754
    .end local v0           #code:Lcom/facebook/AuthorizationClient$Result$Code;
    .end local v1           #exception:Ljava/lang/Exception;
    .end local v2           #result:Lcom/facebook/AuthorizationClient$Result;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 770
    .restart local v0       #code:Lcom/facebook/AuthorizationClient$Result$Code;
    .restart local v1       #exception:Ljava/lang/Exception;
    .restart local v2       #result:Lcom/facebook/AuthorizationClient$Result;
    :cond_2
    iget-object v4, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    if-eqz v4, :cond_4

    .line 772
    iget-object v4, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v4, p2, p3, p4}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 775
    .end local v2           #result:Lcom/facebook/AuthorizationClient$Result;
    :cond_3
    if-nez p3, :cond_4

    .line 776
    new-instance v1, Lcom/facebook/FacebookOperationCanceledException;

    .end local v1           #exception:Ljava/lang/Exception;
    const-string v4, "User canceled operation."

    invoke-direct {v1, v4}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 777
    .restart local v1       #exception:Ljava/lang/Exception;
    sget-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 780
    :cond_4
    if-nez v1, :cond_5

    .line 781
    new-instance v1, Lcom/facebook/FacebookException;

    .end local v1           #exception:Ljava/lang/Exception;
    const-string v4, "Unexpected call to Session.onActivityResult"

    invoke-direct {v1, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 784
    .restart local v1       #exception:Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0, v0, v6, v1}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 785
    invoke-virtual {p0, v6, v1}, Lcom/facebook/Session;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V
    .locals 4
    .parameter "accessToken"
    .parameter "callback"

    .prologue
    .line 553
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v1, :cond_0

    .line 555
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 556
    const-string v3, "Session: an attempt was made to open a session that has a pending request."

    .line 555
    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 559
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 561
    const-string v3, "Session: an attempt was made to open a previously-closed session."

    .line 560
    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    sget-object v3, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    sget-object v3, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-eq v1, v3, :cond_2

    .line 563
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 564
    const-string v3, "Session: an attempt was made to open an already opened session."

    .line 563
    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :cond_2
    if-eqz p2, :cond_3

    .line 568
    invoke-virtual {p0, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 571
    :cond_3
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 573
    iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v1, :cond_4

    .line 574
    iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 577
    :cond_4
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 578
    .local v0, oldState:Lcom/facebook/SessionState;
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 579
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 553
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    invoke-direct {p0}, Lcom/facebook/Session;->autoPublishAsync()V

    .line 583
    return-void
.end method

.method public final openForPublish(Lcom/facebook/Session$OpenRequest;)V
    .locals 1
    .parameter "openRequest"

    .prologue
    .line 533
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 534
    return-void
.end method

.method public final openForRead(Lcom/facebook/Session$OpenRequest;)V
    .locals 1
    .parameter "openRequest"

    .prologue
    .line 498
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 499
    return-void
.end method

.method postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3
    .parameter "oldState"
    .parameter "newState"
    .parameter "exception"

    .prologue
    .line 1552
    if-ne p1, p2, :cond_1

    .line 1553
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    if-eq p1, v1, :cond_1

    .line 1554
    if-nez p3, :cond_1

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1558
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1559
    invoke-static {}, Lcom/facebook/AccessToken;->createEmptyToken()Lcom/facebook/AccessToken;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1565
    :cond_2
    new-instance v0, Lcom/facebook/Session$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/Session$4;-><init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1581
    .local v0, runCallbacks:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1583
    sget-object v1, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    if-ne p0, v1, :cond_0

    .line 1584
    invoke-virtual {p1}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1585
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1586
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    goto :goto_0

    .line 1588
    :cond_3
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final refreshPermissions()V
    .locals 2

    .prologue
    .line 636
    new-instance v0, Lcom/facebook/Request;

    const-string v1, "me/permissions"

    invoke-direct {v0, p0, v1}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;)V

    .line 637
    .local v0, request:Lcom/facebook/Request;
    new-instance v1, Lcom/facebook/Session$2;

    invoke-direct {v1, p0}, Lcom/facebook/Session$2;-><init>(Lcom/facebook/Session;)V

    invoke-virtual {v0, v1}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 651
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 652
    return-void
.end method

.method public final removeCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 852
    iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v1

    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 852
    monitor-exit v1

    .line 855
    return-void

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    .locals 1
    .parameter "newPermissionsRequest"

    .prologue
    .line 622
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 623
    return-void
.end method

.method public final requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    .locals 1
    .parameter "newPermissionsRequest"

    .prologue
    .line 602
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 603
    return-void
.end method

.method setCurrentTokenRefreshRequest(Lcom/facebook/Session$TokenRefreshRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 1673
    return-void
.end method

.method setLastAttemptedTokenExtendDate(Ljava/util/Date;)V
    .locals 0
    .parameter "lastAttemptedTokenExtendDate"

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 1669
    return-void
.end method

.method setTokenInfo(Lcom/facebook/AccessToken;)V
    .locals 0
    .parameter "tokenInfo"

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1661
    return-void
.end method

.method shouldExtendAccessToken()Z
    .locals 6

    .prologue
    .line 1629
    iget-object v2, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    if-eqz v2, :cond_1

    .line 1630
    const/4 v1, 0x0

    .line 1643
    :cond_0
    :goto_0
    return v1

    .line 1633
    :cond_1
    const/4 v1, 0x0

    .line 1635
    .local v1, result:Z
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1637
    .local v0, now:Ljava/util/Date;
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessTokenSource;->canExtendToken()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1638
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1639
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1640
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 860
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 861
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    return-object v0

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    goto :goto_0

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    goto :goto_1
.end method
