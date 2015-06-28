.class public final Lcom/waze/share/ShareConstants;
.super Ljava/lang/Object;
.source "ShareConstants.java"


# static fields
.field public static final CFG_ARRAY_FB_FEATURE_ENABLED_ID:I = 0x0

.field public static final CFG_ARRAY_FB_USER_SHARE_PREFIX_ID:I = 0x3

.field public static final CFG_ARRAY_FOURSQUARE_FEATURE_ENABLED_ID:I = 0x2

.field public static final CFG_ARRAY_TWITTER_FEATURE_ENABLED_ID:I = 0x1

.field public static final CFG_ITEM_SHARE_FB_FEATURE_ENABLED:Lcom/waze/ConfigItem; = null

.field public static final CFG_ITEM_SHARE_FB_USER_SHARE_PREFIX:Lcom/waze/ConfigItem; = null

.field public static final CFG_ITEM_SHARE_FOURSQUARE_FEATURE_ENABLED:Lcom/waze/ConfigItem; = null

.field public static final CFG_ITEM_SHARE_TWITTER_FEATURE_ENABLED:Lcom/waze/ConfigItem; = null

.field public static final CFG_NO:Ljava/lang/String; = "no"

.field public static final CFG_SHARE_FB_CATEGORY:Ljava/lang/String; = "Facebook"

.field public static final CFG_SHARE_FB_FEATURE_ENABLED:Ljava/lang/String; = "Feature enabled"

.field public static final CFG_SHARE_FB_USER_SHARE_PREFIX:Ljava/lang/String; = "Sharing Url Prefix"

.field public static final CFG_SHARE_FOURSQUARE_CATEGORY:Ljava/lang/String; = "Foursquare"

.field public static final CFG_SHARE_FOURSQUARE_FEATURE_ENABLED:Ljava/lang/String; = "Feauture enabled"

.field public static final CFG_SHARE_TWITTER_CATEGORY:Ljava/lang/String; = "Twitter"

.field public static final CFG_SHARE_TWITTER_FEATURE_ENABLED:Ljava/lang/String; = "Feature enabled"

.field public static final CFG_YES:Ljava/lang/String; = "yes"

.field public static final SHARE_EXTRA_ID_FRIENDS_LIST:Ljava/lang/String; = "Friends list"

.field public static final SHARE_EXTRA_ID_LIKE_URL:Ljava/lang/String; = "LikeUrl"

.field public static final SHARE_EXTRA_ID_LOCATION_ID:Ljava/lang/String; = "Position id"

.field public static final SHARE_FB_LIKE_APP_URL_PREFIX:Ljava/lang/String; = "fb://"

.field public static final SHARE_RC_FB_LOCATION_ACTIVITY_RESULT:I = 0x3

.field public static final SHARE_RC_FB_WITH_ACTIVITY_CLOSED:I = 0x2

.field public static final SHARE_RC_FB_WITH_ACTIVITY_RESULT:I = 0x1

.field public static final SHARE_RQC_FB_LOCATION_ACTIVITY:I = 0x3

.field public static final SHARE_RQC_FB_MAIN_ACTIVITY:I = 0x1

.field public static final SHARE_RQC_FB_WITH_ACTIVITY:I = 0x2

.field public static final SHARE_SOCIAL_NETS_ITEM_FB:Ljava/lang/String; = "Post to facebook"

.field public static final SHARE_SOCIAL_NETS_ITEM_FSQ:Ljava/lang/String; = "Check in on Foursquare"

.field public static final SHARE_SOCIAL_NETS_ITEM_TWITTER:Ljava/lang/String; = "Tweet"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/waze/ConfigItem;

    const-string v1, "Facebook"

    const-string v2, "Feature enabled"

    const-string v3, "yes"

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sput-object v0, Lcom/waze/share/ShareConstants;->CFG_ITEM_SHARE_FB_FEATURE_ENABLED:Lcom/waze/ConfigItem;

    .line 51
    new-instance v0, Lcom/waze/ConfigItem;

    const-string v1, "Twitter"

    const-string v2, "Feature enabled"

    const-string v3, "yes"

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sput-object v0, Lcom/waze/share/ShareConstants;->CFG_ITEM_SHARE_TWITTER_FEATURE_ENABLED:Lcom/waze/ConfigItem;

    .line 53
    new-instance v0, Lcom/waze/ConfigItem;

    const-string v1, "Foursquare"

    .line 54
    const-string v2, "Feauture enabled"

    const-string v3, "yes"

    .line 53
    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/waze/share/ShareConstants;->CFG_ITEM_SHARE_FOURSQUARE_FEATURE_ENABLED:Lcom/waze/ConfigItem;

    .line 57
    new-instance v0, Lcom/waze/ConfigItem;

    const-string v1, "Facebook"

    const-string v2, "Sharing Url Prefix"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sput-object v0, Lcom/waze/share/ShareConstants;->CFG_ITEM_SHARE_FB_USER_SHARE_PREFIX:Lcom/waze/ConfigItem;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
