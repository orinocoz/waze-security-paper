.class Lcom/waze/navigate/AddressPreviewActivity$17;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Lcom/waze/WzWebView$WebViewPageProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;

.field private final synthetic val$ad:Lcom/waze/navigate/AddressItem$AdvertiserData;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;Lcom/waze/navigate/AddressItem$AdvertiserData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$17;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    iput-object p2, p0, Lcom/waze/navigate/AddressPreviewActivity$17;->val$ad:Lcom/waze/navigate/AddressItem$AdvertiserData;

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebViewPageFinished()V
    .locals 17

    .prologue
    .line 966
    const/4 v7, 0x0

    .local v7, lon:I
    const/4 v3, 0x0

    .line 967
    .local v3, lat:I
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v13

    invoke-virtual {v13}, Lcom/waze/NativeLocListener;->getLastLocation()Landroid/location/Location;

    move-result-object v4

    .line 968
    .local v4, loc:Landroid/location/Location;
    if-eqz v4, :cond_0

    .line 969
    invoke-static {v4}, Lcom/waze/NativeLocListener;->GetNativeLocation(Landroid/location/Location;)Lcom/waze/NativeLocListener$NativeLocation;

    move-result-object v8

    .line 970
    .local v8, nLoc:Lcom/waze/NativeLocListener$NativeLocation;
    iget v7, v8, Lcom/waze/NativeLocListener$NativeLocation;->mLongtitude:I

    .line 971
    iget v3, v8, Lcom/waze/NativeLocListener$NativeLocation;->mLatitude:I

    .line 973
    .end local v8           #nLoc:Lcom/waze/NativeLocListener$NativeLocation;
    :cond_0
    const-string v11, ""

    .line 974
    .local v11, source:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/navigate/AddressPreviewActivity$17;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAdsCtx:Lcom/waze/NativeManager$AdsActiveContext;
    invoke-static {v13}, Lcom/waze/navigate/AddressPreviewActivity;->access$24(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager$AdsActiveContext;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 975
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/navigate/AddressPreviewActivity$17;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAdsCtx:Lcom/waze/NativeManager$AdsActiveContext;
    invoke-static {v13}, Lcom/waze/navigate/AddressPreviewActivity;->access$24(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager$AdsActiveContext;

    move-result-object v13

    iget-object v11, v13, Lcom/waze/NativeManager$AdsActiveContext;->event_info:Ljava/lang/String;

    .line 977
    :cond_1
    new-instance v10, Lcom/waze/settings/SettingsNativeManager;

    invoke-direct {v10}, Lcom/waze/settings/SettingsNativeManager;-><init>()V

    .line 978
    .local v10, settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;
    new-instance v5, Ljava/util/Locale;

    invoke-virtual {v10}, Lcom/waze/settings/SettingsNativeManager;->getLanguagesLocaleNTV()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 979
    .local v5, locale:Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    .line 981
    .local v6, localeStr:Ljava/lang/String;
    const-string v9, ""

    .line 983
    .local v9, params:Ljava/lang/String;
    const/4 v1, 0x0

    .line 984
    .local v1, jsonParams:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    .end local v1           #jsonParams:Lorg/json/JSONObject;
    .local v2, jsonParams:Lorg/json/JSONObject;
    :try_start_1
    const-string v13, "sessionid"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/navigate/AddressPreviewActivity$17;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v14}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/waze/NativeManager;->getServerSessionId()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 986
    const-string v13, "cookie"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/navigate/AddressPreviewActivity$17;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v14}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/waze/NativeManager;->getServerCookie()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 987
    const-string v13, "venue_context"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/navigate/AddressPreviewActivity$17;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v14}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v14

    iget-object v14, v14, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v14, v14, Lcom/waze/reports/VenueData;->context:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 988
    const-string v13, "lon"

    invoke-virtual {v2, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 989
    const-string v13, "lat"

    invoke-virtual {v2, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 990
    const-string v13, "locale"

    invoke-virtual {v2, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 991
    const-string v13, "rtserver-id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/navigate/AddressPreviewActivity$17;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v14}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/waze/NativeManager;->getRTServerId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 992
    const-string v13, "source"

    invoke-virtual {v2, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 993
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 996
    .end local v2           #jsonParams:Lorg/json/JSONObject;
    :goto_0
    const-string v13, "W.setOffer(%s, %s)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/AddressPreviewActivity$17;->val$ad:Lcom/waze/navigate/AddressItem$AdvertiserData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/waze/navigate/AddressItem$AdvertiserData;->query:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 997
    .local v12, toRun:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/navigate/AddressPreviewActivity$17;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/navigate/AddressPreviewActivity$17;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;
    invoke-static {v14}, Lcom/waze/navigate/AddressPreviewActivity;->access$3(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/WzWebView;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->callJavaScript(Landroid/webkit/WebView;ILjava/lang/String;)V
    invoke-static {v13, v14, v15, v12}, Lcom/waze/navigate/AddressPreviewActivity;->access$25(Lcom/waze/navigate/AddressPreviewActivity;Landroid/webkit/WebView;ILjava/lang/String;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/navigate/AddressPreviewActivity$17;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mWebViewLoadAnimation:Landroid/widget/ProgressBar;
    invoke-static {v13}, Lcom/waze/navigate/AddressPreviewActivity;->access$13(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1000
    return-void

    .line 994
    .end local v12           #toRun:Ljava/lang/String;
    .restart local v1       #jsonParams:Lorg/json/JSONObject;
    :catch_0
    move-exception v13

    goto :goto_0

    .end local v1           #jsonParams:Lorg/json/JSONObject;
    .restart local v2       #jsonParams:Lorg/json/JSONObject;
    :catch_1
    move-exception v13

    move-object v1, v2

    .end local v2           #jsonParams:Lorg/json/JSONObject;
    .restart local v1       #jsonParams:Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public onWebViewPageStarted()V
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$17;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mWebViewLoadAnimation:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$13(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1005
    return-void
.end method
