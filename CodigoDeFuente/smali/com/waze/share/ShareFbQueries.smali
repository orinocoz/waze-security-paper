.class public final Lcom/waze/share/ShareFbQueries;
.super Ljava/lang/Object;
.source "ShareFbQueries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/share/ShareFbQueries$FriendsRequestListener;,
        Lcom/waze/share/ShareFbQueries$IFriendsListCallback;,
        Lcom/waze/share/ShareFbQueries$ILocationsListCallback;,
        Lcom/waze/share/ShareFbQueries$IPostCallback;,
        Lcom/waze/share/ShareFbQueries$LocationRequestListener;,
        Lcom/waze/share/ShareFbQueries$PostDialogListener;,
        Lcom/waze/share/ShareFbQueries$PostRequestListener;
    }
.end annotation


# static fields
.field public static final FB_FRIENDS_COMPARE_NAME:I = 0x0

.field public static final FB_POST_DLG_URL:Ljava/lang/String; = "http://www.waze.com"

.field public static final FB_QUERY_RESULT_ERROR_GENERAL:I = 0x10000001

.field public static final FB_QUERY_RESULT_ERROR_INVALID_RESPONSE:I = 0x10000004

.field public static final FB_QUERY_RESULT_ERROR_NO_RESULT:I = 0x10000002

.field public static final FB_QUERY_RESULT_OK:I = 0x0

.field public static final LOCATION_QUERY_RADIUS_METERS:I = 0x1388

.field public static final LOG_TAG:Ljava/lang/String; = "Facebook queries"

.field private static mInstance:Lcom/waze/share/ShareFbQueries;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/share/ShareFbQueries;->mInstance:Lcom/waze/share/ShareFbQueries;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Runner(Lcom/facebook/android/Facebook;)Lcom/facebook/android/AsyncFacebookRunner;
    .locals 1
    .parameter "fb"

    .prologue
    .line 48
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    invoke-direct {v0, p0}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    return-object v0
.end method

.method static synthetic access$0(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-static {p0, p1}, Lcom/waze/share/ShareFbQueries;->parseFriendsListData(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/json/JSONObject;Lcom/waze/location/Position;Z)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-static {p0, p1, p2}, Lcom/waze/share/ShareFbQueries;->parseLocationsListData(Lorg/json/JSONObject;Lcom/waze/location/Position;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-static {p0, p1}, Lcom/waze/share/ShareFbQueries;->getFriendsQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendsList(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;ILcom/waze/share/ShareFbQueries$IFriendsListCallback;Z)V
    .locals 7
    .parameter "context"
    .parameter "pattern"
    .parameter "limit"
    .parameter "cb"
    .parameter "showProgress"

    .prologue
    .line 64
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v3

    .line 66
    .local v3, fbw:Lcom/waze/social/facebook/FacebookWrapper;
    new-instance v0, Lcom/waze/share/ShareFbQueries$1;

    move v1, p4

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/waze/share/ShareFbQueries$1;-><init>(ZLcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper;Ljava/lang/String;ILcom/waze/share/ShareFbQueries$IFriendsListCallback;)V

    .line 83
    .local v0, authListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    const/4 v1, 0x0

    invoke-virtual {v3, p0, v0, v1}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    .line 84
    return-void
.end method

.method private static getFriendsQuery(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "pattern"
    .parameter "limit"

    .prologue
    .line 268
    const-string v0, "select name, current_location, uid, pic from user where uid in (select uid2 from friend where uid1=me())"

    .line 271
    .local v0, query:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " and strpos( lower(name),\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " order by name limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v1, "Facebook queries"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Friends query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-object v0
.end method

.method public static getInstance()Lcom/waze/share/ShareFbQueries;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/waze/share/ShareFbQueries;->mInstance:Lcom/waze/share/ShareFbQueries;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/waze/share/ShareFbQueries;

    invoke-direct {v0}, Lcom/waze/share/ShareFbQueries;-><init>()V

    sput-object v0, Lcom/waze/share/ShareFbQueries;->mInstance:Lcom/waze/share/ShareFbQueries;

    .line 43
    :cond_0
    sget-object v0, Lcom/waze/share/ShareFbQueries;->mInstance:Lcom/waze/share/ShareFbQueries;

    return-object v0
.end method

.method public static getLocationsList(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;ILcom/waze/location/Position;Lcom/waze/share/ShareFbQueries$ILocationsListCallback;Z)V
    .locals 7
    .parameter "context"
    .parameter "pattern"
    .parameter "limit"
    .parameter "pos"
    .parameter "cb"
    .parameter "showProgress"

    .prologue
    .line 90
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v6

    .line 92
    .local v6, fbw:Lcom/waze/social/facebook/FacebookWrapper;
    new-instance v0, Lcom/waze/share/ShareFbQueries$2;

    move-object v1, p1

    move-object v2, p3

    move v3, p5

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/share/ShareFbQueries$2;-><init>(Ljava/lang/String;Lcom/waze/location/Position;ZLcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbQueries$ILocationsListCallback;)V

    .line 116
    .local v0, authListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    const/4 v1, 0x0

    invoke-virtual {v6, p0, v0, v1}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    .line 117
    return-void
.end method

.method private static parseFriendsListData(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;
    .locals 8
    .parameter "apiResponse"
    .parameter "isFql"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/share/ShareFbFriend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v2, friendsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbFriend;>;"
    const-string v5, "data"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 293
    .local v4, jsonArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 309
    .end local v2           #friendsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbFriend;>;"
    .end local v3           #i:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    :goto_1
    return-object v2

    .line 295
    .restart local v2       #friendsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbFriend;>;"
    .restart local v3       #i:I
    .restart local v4       #jsonArray:Lorg/json/JSONArray;
    :cond_0
    new-instance v1, Lcom/waze/share/ShareFbFriend;

    invoke-direct {v1}, Lcom/waze/share/ShareFbFriend;-><init>()V

    .line 296
    .local v1, friend:Lcom/waze/share/ShareFbFriend;
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "uid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/waze/share/ShareFbFriend;->id:J

    .line 297
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/waze/share/ShareFbFriend;->name:Ljava/lang/String;

    .line 298
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "pic"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/waze/share/ShareFbFriend;->imageUrl:Ljava/lang/String;

    .line 299
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    const-string v5, "Facebook queries"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Friend # "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/waze/share/ShareFbFriend;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .end local v1           #friend:Lcom/waze/share/ShareFbFriend;
    .end local v2           #friendsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbFriend;>;"
    .end local v3           #i:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 307
    .local v0, ex:Lorg/json/JSONException;
    const-string v5, "Facebook queries"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got JSON exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/waze/Logger;->e_(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 309
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static parseLocationsListData(Lorg/json/JSONObject;Lcom/waze/location/Position;Z)Ljava/util/ArrayList;
    .locals 16
    .parameter "apiResponse"
    .parameter "center"
    .parameter "isFql"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/waze/location/Position;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/share/ShareFbLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v15, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbLocation;>;"
    const-string v1, "data"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 325
    .local v13, jsonArray:Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_0

    .line 370
    .end local v12           #i:I
    .end local v13           #jsonArray:Lorg/json/JSONArray;
    .end local v15           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbLocation;>;"
    :goto_1
    return-object v15

    .line 327
    .restart local v12       #i:I
    .restart local v13       #jsonArray:Lorg/json/JSONArray;
    .restart local v15       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbLocation;>;"
    :cond_0
    new-instance v10, Lcom/waze/share/ShareFbLocation;

    invoke-direct {v10}, Lcom/waze/share/ShareFbLocation;-><init>()V

    .line 328
    .local v10, entry:Lcom/waze/share/ShareFbLocation;
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/waze/share/ShareFbLocation;->id:Ljava/lang/String;

    .line 329
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/waze/share/ShareFbLocation;->name:Ljava/lang/String;

    .line 330
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 331
    .local v14, jsonObjLocation:Lorg/json/JSONObject;
    const-string v1, ""

    iput-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    .line 332
    const-string v1, "street"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "street"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    .line 334
    :cond_1
    const-string v1, "location"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 336
    iget-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 337
    iget-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    .line 338
    :cond_2
    iget-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "location"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    .line 340
    :cond_3
    const-string v1, "state"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 342
    iget-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 343
    iget-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    .line 344
    :cond_4
    iget-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/waze/share/ShareFbLocation;->address:Ljava/lang/String;

    .line 347
    :cond_5
    const-string v1, "latitude"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v10, Lcom/waze/share/ShareFbLocation;->latitude:D

    .line 348
    const-string v1, "longitude"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v10, Lcom/waze/share/ShareFbLocation;->longitude:D

    .line 350
    const/4 v1, 0x1

    new-array v9, v1, [F

    .line 351
    .local v9, res:[F
    iget-wide v1, v10, Lcom/waze/share/ShareFbLocation;->latitude:D

    iget-wide v3, v10, Lcom/waze/share/ShareFbLocation;->longitude:D

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/waze/location/Position;->latitude:D

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/waze/location/Position;->longitude:D

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 353
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/share/ShareNativeManager;->isMetricUnits()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 354
    const/4 v1, 0x0

    aget v1, v9, v1

    const v2, 0x3a83126f

    mul-float/2addr v1, v2

    iput v1, v10, Lcom/waze/share/ShareFbLocation;->distance:F

    .line 358
    :goto_2
    iget v1, v10, Lcom/waze/share/ShareFbLocation;->distance:F

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iput v1, v10, Lcom/waze/share/ShareFbLocation;->distance:F

    .line 360
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v1, "Facebook queries"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Place # "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/waze/share/ShareFbLocation;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 356
    :cond_6
    const/4 v1, 0x0

    aget v1, v9, v1

    const v2, 0x3a22e380

    mul-float/2addr v1, v2

    iput v1, v10, Lcom/waze/share/ShareFbLocation;->distance:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 366
    .end local v9           #res:[F
    .end local v10           #entry:Lcom/waze/share/ShareFbLocation;
    .end local v12           #i:I
    .end local v13           #jsonArray:Lorg/json/JSONArray;
    .end local v14           #jsonObjLocation:Lorg/json/JSONObject;
    .end local v15           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbLocation;>;"
    :catch_0
    move-exception v11

    .line 368
    .local v11, ex:Lorg/json/JSONException;
    const-string v1, "Facebook queries"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got JSON exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->e_(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 370
    const/4 v15, 0x0

    goto/16 :goto_1
.end method

.method public static postAction(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbLocation;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;Z)V
    .locals 9
    .parameter "context"
    .parameter "destination"
    .parameter "end_time"
    .parameter "tags"
    .parameter "message"
    .parameter "cb"
    .parameter "showProgress"

    .prologue
    .line 223
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v8

    .line 224
    .local v8, fbw:Lcom/waze/social/facebook/FacebookWrapper;
    new-instance v6, Lcom/waze/ifs/ui/ProgressBarDialog;

    invoke-direct {v6, p0}, Lcom/waze/ifs/ui/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    .line 225
    .local v6, progress:Lcom/waze/ifs/ui/ProgressBarDialog;
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/share/ShareNativeManager;->getShareUserPrerfixUrl()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, serverUrl:Ljava/lang/String;
    new-instance v0, Lcom/waze/share/ShareFbQueries$5;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/waze/share/ShareFbQueries$5;-><init>(Lcom/waze/share/ShareFbLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$IPostCallback;)V

    .line 258
    .local v0, authListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    if-eqz p6, :cond_0

    .line 259
    invoke-virtual {v6}, Lcom/waze/ifs/ui/ProgressBarDialog;->show()V

    .line 262
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v8, p0, v0, v1}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    .line 263
    return-void
.end method

.method public static postDialogShow(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 576
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v1, params:Landroid/os/Bundle;
    const-string v2, "link"

    const-string v3, "http://www.waze.com"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v2, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    .line 580
    .local v0, feedDialog:Lcom/facebook/widget/WebDialog;
    new-instance v2, Lcom/waze/share/ShareFbQueries$PostDialogListener;

    invoke-direct {v2}, Lcom/waze/share/ShareFbQueries$PostDialogListener;-><init>()V

    invoke-virtual {v0, v2}, Lcom/facebook/widget/WebDialog;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)V

    .line 581
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 582
    return-void
.end method

.method public static postEventFeed(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbLocation;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "destination"
    .parameter "link"
    .parameter "tags"
    .parameter "message"
    .parameter "cb"
    .parameter "showProgress"
    .parameter "eventId"
    .parameter "desc"
    .parameter "picture"

    .prologue
    .line 174
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v10

    .line 175
    .local v10, fbw:Lcom/waze/social/facebook/FacebookWrapper;
    new-instance v8, Lcom/waze/ifs/ui/ProgressBarDialog;

    invoke-direct {v8, p0}, Lcom/waze/ifs/ui/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    .line 176
    .local v8, progress:Lcom/waze/ifs/ui/ProgressBarDialog;
    new-instance v0, Lcom/waze/share/ShareFbQueries$4;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p7

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/waze/share/ShareFbQueries$4;-><init>(Lcom/waze/share/ShareFbLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$IPostCallback;)V

    .line 212
    .local v0, authListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    if-eqz p6, :cond_0

    .line 213
    invoke-virtual {v8}, Lcom/waze/ifs/ui/ProgressBarDialog;->show()V

    .line 216
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v10, p0, v0, v1}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    .line 217
    return-void
.end method

.method public static postFeed(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbLocation;[Ljava/lang/String;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;Z)V
    .locals 7
    .parameter "context"
    .parameter "destination"
    .parameter "tags"
    .parameter "message"
    .parameter "cb"
    .parameter "showProgress"

    .prologue
    .line 121
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v6

    .line 122
    .local v6, fbw:Lcom/waze/social/facebook/FacebookWrapper;
    new-instance v3, Lcom/waze/ifs/ui/ProgressBarDialog;

    invoke-direct {v3, p0}, Lcom/waze/ifs/ui/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    .line 124
    .local v3, progress:Lcom/waze/ifs/ui/ProgressBarDialog;
    new-instance v0, Lcom/waze/share/ShareFbQueries$3;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/share/ShareFbQueries$3;-><init>(Lcom/waze/share/ShareFbLocation;[Ljava/lang/String;Lcom/waze/ifs/ui/ProgressBarDialog;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;)V

    .line 165
    .local v0, authListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    if-eqz p5, :cond_0

    .line 166
    invoke-virtual {v3}, Lcom/waze/ifs/ui/ProgressBarDialog;->show()V

    .line 169
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v6, p0, v0, v1}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    .line 170
    return-void
.end method

.method public static tagsList([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "tags"

    .prologue
    .line 529
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 530
    :cond_0
    const/4 v2, 0x0

    .line 540
    :goto_0
    return-object v2

    .line 532
    :cond_1
    const/4 v0, 0x0

    .line 533
    .local v0, i:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v1, sb:Ljava/lang/StringBuilder;
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 540
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 536
    :cond_2
    if-lez v0, :cond_3

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_3
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
