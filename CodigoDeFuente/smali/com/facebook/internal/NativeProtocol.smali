.class public final Lcom/facebook/internal/NativeProtocol;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;,
        Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;,
        Lcom/facebook/internal/NativeProtocol$NativeAppInfo;,
        Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;
    }
.end annotation


# static fields
.field public static final ACTION_FEED_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.FEED_DIALOG"

.field public static final ACTION_FEED_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.FEED_DIALOG"

.field public static final ACTION_LIKE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.LIKE_DIALOG"

.field public static final ACTION_LIKE_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.LIKE_DIALOG"

.field public static final ACTION_MESSAGE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.MESSAGE_DIALOG"

.field public static final ACTION_MESSAGE_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.MESSAGE_DIALOG"

.field public static final ACTION_OGACTIONPUBLISH_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

.field public static final ACTION_OGACTIONPUBLISH_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.OGACTIONPUBLISH_DIALOG"

.field public static final ACTION_OGMESSAGEPUBLISH_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

.field public static final ACTION_OGMESSAGEPUBLISH_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.OGMESSAGEPUBLISH_DIALOG"

.field public static final AUDIENCE_EVERYONE:Ljava/lang/String; = "everyone"

.field public static final AUDIENCE_FRIENDS:Ljava/lang/String; = "friends"

.field public static final AUDIENCE_ME:Ljava/lang/String; = "only_me"

.field public static final BRIDGE_ARG_ACTION_ID_STRING:Ljava/lang/String; = "action_id"

.field public static final BRIDGE_ARG_APP_NAME_STRING:Ljava/lang/String; = "app_name"

.field public static final BRIDGE_ARG_ERROR_BUNDLE:Ljava/lang/String; = "error"

.field public static final BRIDGE_ARG_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final BRIDGE_ARG_ERROR_DESCRIPTION:Ljava/lang/String; = "error_description"

.field public static final BRIDGE_ARG_ERROR_JSON:Ljava/lang/String; = "error_json"

.field public static final BRIDGE_ARG_ERROR_SUBCODE:Ljava/lang/String; = "error_subcode"

.field public static final BRIDGE_ARG_ERROR_TYPE:Ljava/lang/String; = "error_type"

.field private static final CONTENT_SCHEME:Ljava/lang/String; = "content://"

.field public static final DIALOG_REQUEST_CODE:I = 0xfacf

.field public static final ERROR_APPLICATION_ERROR:Ljava/lang/String; = "ApplicationError"

.field public static final ERROR_NETWORK_ERROR:Ljava/lang/String; = "NetworkError"

.field public static final ERROR_PERMISSION_DENIED:Ljava/lang/String; = "PermissionDenied"

.field public static final ERROR_PROTOCOL_ERROR:Ljava/lang/String; = "ProtocolError"

.field public static final ERROR_SERVICE_DISABLED:Ljava/lang/String; = "ServiceDisabled"

.field public static final ERROR_UNKNOWN_ERROR:Ljava/lang/String; = "UnknownError"

.field public static final ERROR_USER_CANCELED:Ljava/lang/String; = "UserCanceled"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "com.facebook.platform.extra.ACCESS_TOKEN"

.field public static final EXTRA_ACTION:Ljava/lang/String; = "com.facebook.platform.extra.ACTION"

.field public static final EXTRA_ACTION_TYPE:Ljava/lang/String; = "com.facebook.platform.extra.ACTION_TYPE"

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_ID"

.field public static final EXTRA_APPLICATION_NAME:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_NAME"

.field public static final EXTRA_DATA_FAILURES_FATAL:Ljava/lang/String; = "com.facebook.platform.extra.DATA_FAILURES_FATAL"

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "com.facebook.platform.extra.DESCRIPTION"

.field public static final EXTRA_EXPIRES_SECONDS_SINCE_EPOCH:Ljava/lang/String; = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

.field public static final EXTRA_FRIEND_TAGS:Ljava/lang/String; = "com.facebook.platform.extra.FRIENDS"

.field public static final EXTRA_GET_INSTALL_DATA_PACKAGE:Ljava/lang/String; = "com.facebook.platform.extra.INSTALLDATA_PACKAGE"

.field public static final EXTRA_IMAGE:Ljava/lang/String; = "com.facebook.platform.extra.IMAGE"

.field public static final EXTRA_LIKE_COUNT_STRING_WITHOUT_LIKE:Ljava/lang/String; = "com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"

.field public static final EXTRA_LIKE_COUNT_STRING_WITH_LIKE:Ljava/lang/String; = "com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"

.field public static final EXTRA_LINK:Ljava/lang/String; = "com.facebook.platform.extra.LINK"

.field public static final EXTRA_OBJECT_ID:Ljava/lang/String; = "com.facebook.platform.extra.OBJECT_ID"

.field public static final EXTRA_OBJECT_IS_LIKED:Ljava/lang/String; = "com.facebook.platform.extra.OBJECT_IS_LIKED"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PERMISSIONS"

.field public static final EXTRA_PHOTOS:Ljava/lang/String; = "com.facebook.platform.extra.PHOTOS"

.field public static final EXTRA_PLACE_TAG:Ljava/lang/String; = "com.facebook.platform.extra.PLACE"

.field public static final EXTRA_PREVIEW_PROPERTY_NAME:Ljava/lang/String; = "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME"

.field public static final EXTRA_PROTOCOL_ACTION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_ACTION"

.field public static final EXTRA_PROTOCOL_BRIDGE_ARGS:Ljava/lang/String; = "com.facebook.platform.protocol.BRIDGE_ARGS"

.field public static final EXTRA_PROTOCOL_CALL_ID:Ljava/lang/String; = "com.facebook.platform.protocol.CALL_ID"

.field public static final EXTRA_PROTOCOL_METHOD_ARGS:Ljava/lang/String; = "com.facebook.platform.protocol.METHOD_ARGS"

.field public static final EXTRA_PROTOCOL_METHOD_RESULTS:Ljava/lang/String; = "com.facebook.platform.protocol.RESULT_ARGS"

.field public static final EXTRA_PROTOCOL_VERSION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_VERSION"

.field static final EXTRA_PROTOCOL_VERSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PROTOCOL_VERSIONS"

.field public static final EXTRA_REF:Ljava/lang/String; = "com.facebook.platform.extra.REF"

.field public static final EXTRA_SOCIAL_SENTENCE_WITHOUT_LIKE:Ljava/lang/String; = "com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"

.field public static final EXTRA_SOCIAL_SENTENCE_WITH_LIKE:Ljava/lang/String; = "com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"

.field public static final EXTRA_SUBTITLE:Ljava/lang/String; = "com.facebook.platform.extra.SUBTITLE"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "com.facebook.platform.extra.TITLE"

.field public static final EXTRA_UNLIKE_TOKEN:Ljava/lang/String; = "com.facebook.platform.extra.UNLIKE_TOKEN"

.field private static final FACEBOOK_APP_INFO:Lcom/facebook/internal/NativeProtocol$NativeAppInfo; = null

.field private static final FACEBOOK_PROXY_AUTH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.ProxyAuth"

.field public static final FACEBOOK_PROXY_AUTH_APP_ID_KEY:Ljava/lang/String; = "client_id"

.field public static final FACEBOOK_PROXY_AUTH_E2E_KEY:Ljava/lang/String; = "e2e"

.field public static final FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY:Ljava/lang/String; = "scope"

.field private static final FACEBOOK_TOKEN_REFRESH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.platform.TokenRefreshService"

.field public static final IMAGE_URL_KEY:Ljava/lang/String; = "url"

.field public static final IMAGE_USER_GENERATED_KEY:Ljava/lang/String; = "user_generated"

.field static final INTENT_ACTION_PLATFORM_ACTIVITY:Ljava/lang/String; = "com.facebook.platform.PLATFORM_ACTIVITY"

.field static final INTENT_ACTION_PLATFORM_SERVICE:Ljava/lang/String; = "com.facebook.platform.PLATFORM_SERVICE"

.field private static final KNOWN_PROTOCOL_VERSIONS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_GET_ACCESS_TOKEN_REPLY:I = 0x10001

.field public static final MESSAGE_GET_ACCESS_TOKEN_REQUEST:I = 0x10000

.field public static final MESSAGE_GET_INSTALL_DATA_REPLY:I = 0x10005

.field public static final MESSAGE_GET_INSTALL_DATA_REQUEST:I = 0x10004

.field public static final MESSAGE_GET_LIKE_STATUS_REPLY:I = 0x10007

.field public static final MESSAGE_GET_LIKE_STATUS_REQUEST:I = 0x10006

.field static final MESSAGE_GET_PROTOCOL_VERSIONS_REPLY:I = 0x10003

.field static final MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST:I = 0x10002

.field public static final METHOD_ARGS_ACTION:Ljava/lang/String; = "ACTION"

.field public static final METHOD_ARGS_ACTION_TYPE:Ljava/lang/String; = "ACTION_TYPE"

.field public static final METHOD_ARGS_DATA_FAILURES_FATAL:Ljava/lang/String; = "DATA_FAILURES_FATAL"

.field public static final METHOD_ARGS_DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field public static final METHOD_ARGS_FRIEND_TAGS:Ljava/lang/String; = "FRIENDS"

.field public static final METHOD_ARGS_IMAGE:Ljava/lang/String; = "IMAGE"

.field public static final METHOD_ARGS_LINK:Ljava/lang/String; = "LINK"

.field public static final METHOD_ARGS_OBJECT_ID:Ljava/lang/String; = "object_id"

.field public static final METHOD_ARGS_PHOTOS:Ljava/lang/String; = "PHOTOS"

.field public static final METHOD_ARGS_PLACE_TAG:Ljava/lang/String; = "PLACE"

.field public static final METHOD_ARGS_PREVIEW_PROPERTY_NAME:Ljava/lang/String; = "PREVIEW_PROPERTY_NAME"

.field public static final METHOD_ARGS_REF:Ljava/lang/String; = "REF"

.field public static final METHOD_ARGS_SUBTITLE:Ljava/lang/String; = "SUBTITLE"

.field public static final METHOD_ARGS_TITLE:Ljava/lang/String; = "TITLE"

.field public static final METHOD_ARGS_VIDEO:Ljava/lang/String; = "VIDEO"

.field public static final NO_PROTOCOL_AVAILABLE:I = -0x1

.field public static final OPEN_GRAPH_CREATE_OBJECT_KEY:Ljava/lang/String; = "fbsdk:create_object"

.field private static final PLATFORM_PROVIDER_VERSIONS:Ljava/lang/String; = ".provider.PlatformProvider/versions"

.field private static final PLATFORM_PROVIDER_VERSION_COLUMN:Ljava/lang/String; = "version"

.field public static final PROTOCOL_VERSION_20121101:I = 0x133060d

.field public static final PROTOCOL_VERSION_20130502:I = 0x1332ac6

.field public static final PROTOCOL_VERSION_20130618:I = 0x1332b3a

.field public static final PROTOCOL_VERSION_20131107:I = 0x1332d23

.field public static final PROTOCOL_VERSION_20140204:I = 0x13350ac

.field public static final PROTOCOL_VERSION_20140324:I = 0x1335124

.field public static final PROTOCOL_VERSION_20140701:I = 0x133529d

.field public static final PROTOCOL_VERSION_20141001:I = 0x13353c9

.field public static final PROTOCOL_VERSION_20141028:I = 0x13353e4

.field public static final PROTOCOL_VERSION_20141107:I = 0x1335433

.field public static final PROTOCOL_VERSION_20141218:I = 0x13354a2

.field public static final RESULT_ARGS_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH:Ljava/lang/String; = "expires_seconds_since_epoch"

.field public static final RESULT_ARGS_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final STATUS_ERROR_CODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_CODE"

.field public static final STATUS_ERROR_DESCRIPTION:Ljava/lang/String; = "com.facebook.platform.status.ERROR_DESCRIPTION"

.field public static final STATUS_ERROR_JSON:Ljava/lang/String; = "com.facebook.platform.status.ERROR_JSON"

.field public static final STATUS_ERROR_SUBCODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_SUBCODE"

.field public static final STATUS_ERROR_TYPE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_TYPE"

.field private static actionToAppInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static facebookAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;)V

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->FACEBOOK_APP_INFO:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 325
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->buildFacebookAppList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    .line 326
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->buildActionToAppInfoMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    .line 444
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 446
    const v2, 0x13354a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 447
    const v2, 0x1335433

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 448
    const v2, 0x13353e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 449
    const v2, 0x13353c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 450
    const v2, 0x133529d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 451
    const v2, 0x1335124

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 452
    const v2, 0x13350ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 453
    const v2, 0x1332d23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 454
    const v2, 0x1332b3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 455
    const v2, 0x1332ac6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 456
    const v2, 0x133060d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 445
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    .line 457
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildActionToAppInfoMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 341
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v1, messengerAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    new-instance v2, Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v2, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v2, "com.facebook.platform.action.request.FEED_DIALOG"

    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v2, "com.facebook.platform.action.request.LIKE_DIALOG"

    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v2, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v2, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-object v0
.end method

.method private static buildFacebookAppList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->FACEBOOK_APP_INFO:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v1, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    return-object v0
.end method

.method private static buildPlatformProviderVersionURI(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/net/Uri;
    .locals 2
    .parameter "appInfo"

    .prologue
    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider.PlatformProvider/versions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static computeLatestAvailableVersionFromVersionSpec(Ljava/util/TreeSet;I[I)I
    .locals 6
    .parameter
    .parameter "latestSdkVersion"
    .parameter "versionSpec"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;I[I)I"
        }
    .end annotation

    .prologue
    .local p0, allAvailableFacebookAppVersions:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    .line 699
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .line 700
    .local v3, versionSpecIndex:I
    invoke-virtual {p0}, Ljava/util/TreeSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 701
    .local v1, fbAppVersionsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    .line 703
    .local v2, latestFacebookAppVersion:I
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 733
    :cond_1
    :goto_0
    return v5

    .line 704
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 707
    .local v0, fbAppVersion:I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 710
    :goto_1
    if-ltz v3, :cond_3

    aget v4, p2, v3

    if-gt v4, v0, :cond_4

    .line 714
    :cond_3
    if-ltz v3, :cond_1

    .line 723
    aget v4, p2, v3

    if-ne v4, v0, :cond_0

    .line 726
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_5

    .line 727
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    move v5, v4

    .line 725
    goto :goto_0

    .line 711
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    move v4, v5

    .line 728
    goto :goto_2
.end method

.method public static createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "callId"
    .parameter "action"
    .parameter "version"
    .parameter "applicationName"
    .parameter "extras"

    .prologue
    .line 491
    const-string v4, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-static {p0, v4, p2}, Lcom/facebook/internal/NativeProtocol;->findActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 492
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 493
    const/4 v2, 0x0

    .line 518
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 496
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, applicationId:Ljava/lang/String;
    const-string v4, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 499
    const-string v5, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 500
    const-string v5, "com.facebook.platform.extra.APPLICATION_ID"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 504
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 505
    .local v1, bridgeArguments:Landroid/os/Bundle;
    const-string v4, "action_id"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v4, "app_name"

    invoke-virtual {v1, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v4, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 509
    if-nez p5, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 510
    .local v3, methodArguments:Landroid/os/Bundle;
    :goto_1
    const-string v4, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .end local v3           #methodArguments:Landroid/os/Bundle;
    :cond_1
    move-object v3, p5

    .line 509
    goto :goto_1

    .line 513
    .end local v1           #bridgeArguments:Landroid/os/Bundle;
    :cond_2
    const-string v4, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string v4, "com.facebook.platform.extra.APPLICATION_NAME"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {v2, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createPlatformServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .parameter "context"

    .prologue
    .line 522
    sget-object v2, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 531
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 522
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 523
    .local v0, appInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 525
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 526
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 527
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static createProxyAuthIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/facebook/SessionDefaultAudience;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "applicationId"
    .parameter
    .parameter "e2e"
    .parameter "isRerequest"
    .parameter "defaultAudience"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/SessionDefaultAudience;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 390
    .local p2, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 422
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 390
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 391
    .local v0, appInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 392
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 393
    const-string v4, "client_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 395
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 396
    const-string v3, "scope"

    const-string v4, ","

    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    :cond_2
    invoke-static {p3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 399
    const-string v3, "e2e"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    :cond_3
    const-string v3, "response_type"

    const-string v4, "token"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v3, "return_scopes"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v3, "default_audience"

    invoke-virtual {p5}, Lcom/facebook/SessionDefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-static {}, Lcom/facebook/Settings;->getPlatformCompatibilityEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 408
    const-string v3, "legacy_override"

    const-string v4, "v2.2"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    if-eqz p4, :cond_4

    .line 412
    const-string v3, "auth_type"

    const-string v4, "rerequest"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    :cond_4
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .parameter "context"

    .prologue
    .line 426
    sget-object v2, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 436
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 426
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 427
    .local v0, appInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 428
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.facebook.katana.platform.TokenRefreshService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 430
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private static findActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "activityAction"
    .parameter "internalAction"

    .prologue
    .line 460
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 461
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    if-nez v2, :cond_1

    .line 462
    const/4 v1, 0x0

    .line 477
    :cond_0
    :goto_0
    return-object v1

    .line 465
    :cond_1
    const/4 v1, 0x0

    .line 466
    .local v1, intent:Landroid/content/Intent;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 467
    .local v0, appInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 468
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 469
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 470
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 471
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method private static getAllAvailableProtocolVersionsForAppInfo(Landroid/content/Context;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;
    .locals 9
    .parameter "context"
    .parameter "appInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 665
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 667
    .local v6, allAvailableVersions:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 669
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "version"

    aput-object v4, v2, v3

    .line 670
    .local v2, projection:[Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/internal/NativeProtocol;->buildPlatformProviderVersionURI(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 671
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 673
    .local v7, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 674
    if-eqz v7, :cond_0

    .line 675
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 681
    :cond_0
    if-eqz v7, :cond_1

    .line 682
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_1
    return-object v6

    .line 676
    :cond_2
    :try_start_1
    const-string v3, "version"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 677
    .local v8, version:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 680
    .end local v8           #version:I
    :catchall_0
    move-exception v3

    .line 681
    if-eqz v7, :cond_3

    .line 682
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 684
    :cond_3
    throw v3
.end method

.method public static getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2
    .parameter "intent"

    .prologue
    .line 564
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 565
    .local v0, version:I
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    const/4 v1, 0x0

    .line 569
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;
    .locals 5
    .parameter "intent"

    .prologue
    .line 539
    if-nez p0, :cond_1

    .line 540
    const/4 v1, 0x0

    .line 560
    :cond_0
    :goto_0
    return-object v1

    .line 542
    :cond_1
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v3

    .line 543
    .local v3, version:I
    const/4 v2, 0x0

    .line 544
    .local v2, callIdString:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 545
    const-string v4, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 546
    .local v0, bridgeArgs:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 547
    const-string v4, "action_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 553
    .end local v0           #bridgeArgs:Landroid/os/Bundle;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 554
    .local v1, callId:Ljava/util/UUID;
    if-eqz v2, :cond_0

    .line 556
    :try_start_0
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 550
    .end local v1           #callId:Ljava/util/UUID;
    :cond_3
    const-string v4, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 557
    .restart local v1       #callId:Ljava/util/UUID;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getErrorDataFromResultIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2
    .parameter "resultIntent"

    .prologue
    .line 592
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    const/4 v1, 0x0

    .line 601
    :goto_0
    return-object v1

    .line 596
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 597
    .local v0, bridgeArgs:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 598
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public static getExceptionFromErrorData(Landroid/os/Bundle;)Ljava/lang/Exception;
    .locals 3
    .parameter "errorData"

    .prologue
    .line 605
    if-nez p0, :cond_0

    .line 606
    const/4 v2, 0x0

    .line 624
    :goto_0
    return-object v2

    .line 609
    :cond_0
    const-string v2, "error_type"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, type:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 611
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    :cond_1
    const-string v2, "error_description"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, description:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 616
    const-string v2, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "UserCanceled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 620
    new-instance v2, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_3
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLatestAvailableProtocolVersionForAction(Landroid/content/Context;Ljava/lang/String;[I)I
    .locals 2
    .parameter "context"
    .parameter "action"
    .parameter "versionSpec"

    .prologue
    .line 633
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 634
    .local v0, appInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    invoke-static {p0, v0, p2}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfoList(Landroid/content/Context;Ljava/util/List;[I)I

    move-result v1

    return v1
.end method

.method private static getLatestAvailableProtocolVersionForAppInfo(Landroid/content/Context;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;[I)I
    .locals 2
    .parameter "context"
    .parameter "appInfo"
    .parameter "versionSpec"

    .prologue
    .line 658
    invoke-static {p0, p1}, Lcom/facebook/internal/NativeProtocol;->getAllAvailableProtocolVersionsForAppInfo(Landroid/content/Context;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;

    move-result-object v0

    .line 659
    .local v0, fbAppVersions:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/facebook/internal/NativeProtocol;->computeLatestAvailableVersionFromVersionSpec(Ljava/util/TreeSet;I[I)I

    move-result v1

    return v1
.end method

.method private static getLatestAvailableProtocolVersionForAppInfoList(Landroid/content/Context;Ljava/util/List;[I)I
    .locals 5
    .parameter "context"
    .parameter
    .parameter "versionSpec"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p1, appInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    const/4 v2, -0x1

    .line 639
    if-nez p1, :cond_0

    move v1, v2

    .line 651
    :goto_0
    return v1

    .line 644
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 651
    goto :goto_0

    .line 644
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 645
    .local v0, appInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    invoke-static {p0, v0, p2}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfo(Landroid/content/Context;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;[I)I

    move-result v1

    .line 646
    .local v1, protocolVersion:I
    if-eq v1, v2, :cond_1

    goto :goto_0
.end method

.method public static getLatestAvailableProtocolVersionForService(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "minimumVersion"

    .prologue
    .line 629
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfoList(Landroid/content/Context;Ljava/util/List;[I)I

    move-result v0

    return v0
.end method

.method public static final getLatestKnownVersion()I
    .locals 2

    .prologue
    .line 440
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getProtocolVersionFromIntent(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 535
    const-string v0, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSuccessResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 3
    .parameter "resultIntent"

    .prologue
    .line 573
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v1

    .line 574
    .local v1, version:I
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 575
    .local v0, extras:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 579
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_1
    const-string v2, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public static isErrorResult(Landroid/content/Intent;)Z
    .locals 2
    .parameter "resultIntent"

    .prologue
    .line 583
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 584
    .local v0, bridgeArgs:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 585
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 587
    :goto_0
    return v1

    :cond_0
    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isVersionCompatibleWithBucketedIntent(I)Z
    .locals 2
    .parameter "version"

    .prologue
    .line 481
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x133529d

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "appInfo"

    .prologue
    const/4 v1, 0x0

    .line 355
    if-nez p1, :cond_1

    move-object p1, v1

    .line 368
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 359
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 360
    .local v0, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_2

    move-object p1, v1

    .line 361
    goto :goto_0

    .line 364
    :cond_2
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p1, v1

    .line 365
    goto :goto_0
.end method

.method static validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "appInfo"

    .prologue
    const/4 v1, 0x0

    .line 372
    if-nez p1, :cond_1

    move-object p1, v1

    .line 385
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 376
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 377
    .local v0, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_2

    move-object p1, v1

    .line 378
    goto :goto_0

    .line 381
    :cond_2
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p1, v1

    .line 382
    goto :goto_0
.end method
