.class Lcom/waze/LayoutManager$19;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->RefreshBar(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    .line 1240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/LayoutManager$19;)Lcom/waze/LayoutManager;
    .locals 1
    .parameter

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    return-object v0
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/EndDriveData;)V
    .locals 11
    .parameter "data"

    .prologue
    const v10, 0x7f090397

    const/4 v9, 0x1

    const/16 v8, 0x8

    const v7, 0x7f09038d

    const/4 v6, 0x0

    .line 1247
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 1248
    .local v2, orientation:I
    if-ne v2, v9, :cond_2

    .line 1250
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/waze/LayoutManager;->access$9(Lcom/waze/LayoutManager;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const v5, 0x7f090395

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1260
    .local v1, endDriveFriendsLayout:Landroid/widget/RelativeLayout;
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1261
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1263
    iget-object v4, p1, Lcom/waze/navigate/social/EndDriveData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v4, v4

    if-nez v4, :cond_0

    .line 1264
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #setter for: Lcom/waze/LayoutManager;->nMaxETA:I
    invoke-static {v4, v6}, Lcom/waze/LayoutManager;->access$26(Lcom/waze/LayoutManager;I)V

    .line 1267
    :cond_0
    iget-object v4, p1, Lcom/waze/navigate/social/EndDriveData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v4, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 1268
    :cond_1
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/waze/LayoutManager;->access$9(Lcom/waze/LayoutManager;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1269
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1270
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/waze/LayoutManager;->access$9(Lcom/waze/LayoutManager;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #setter for: Lcom/waze/LayoutManager;->bIsFriendsBarShown:Z
    invoke-static {v4, v6}, Lcom/waze/LayoutManager;->access$27(Lcom/waze/LayoutManager;Z)V

    .line 1327
    :goto_1
    return-void

    .line 1253
    .end local v1           #endDriveFriendsLayout:Landroid/widget/RelativeLayout;
    :cond_2
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/waze/LayoutManager;->access$9(Lcom/waze/LayoutManager;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const v5, 0x7f09039d

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1252
    .restart local v1       #endDriveFriendsLayout:Landroid/widget/RelativeLayout;
    goto :goto_0

    .line 1273
    :cond_3
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->bIsFriendsBarShown:Z
    invoke-static {v4}, Lcom/waze/LayoutManager;->access$28(Lcom/waze/LayoutManager;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1274
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #setter for: Lcom/waze/LayoutManager;->bIsFriendsBarShown:Z
    invoke-static {v4, v9}, Lcom/waze/LayoutManager;->access$27(Lcom/waze/LayoutManager;Z)V

    .line 1275
    const-string v4, "FRIENDS_DRIVING_BAR_SHOWN"

    invoke-static {v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 1279
    :cond_4
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/navigate/DriveToNativeManager;->isDayMode()Z

    move-result v0

    .line 1281
    .local v0, bIsDay:Z
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #setter for: Lcom/waze/LayoutManager;->bIsWaitingFriendsShown:Z
    invoke-static {v4, v6}, Lcom/waze/LayoutManager;->access$29(Lcom/waze/LayoutManager;Z)V

    .line 1282
    if-eqz v0, :cond_7

    .line 1283
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/waze/LayoutManager;->access$9(Lcom/waze/LayoutManager;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1284
    const v5, 0x7f020177

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1289
    :goto_2
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/waze/LayoutManager;->access$9(Lcom/waze/LayoutManager;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1291
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/waze/LayoutManager;->access$9(Lcom/waze/LayoutManager;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1293
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->nMaxETA:I
    invoke-static {v4}, Lcom/waze/LayoutManager;->access$30(Lcom/waze/LayoutManager;)I

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p1, Lcom/waze/navigate/social/EndDriveData;->maxEtaSeconds:I

    iget-object v5, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->nMaxETA:I
    invoke-static {v5}, Lcom/waze/LayoutManager;->access$30(Lcom/waze/LayoutManager;)I

    move-result v5

    if-le v4, v5, :cond_6

    .line 1294
    :cond_5
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    iget v5, p1, Lcom/waze/navigate/social/EndDriveData;->maxEtaSeconds:I

    #setter for: Lcom/waze/LayoutManager;->nMaxETA:I
    invoke-static {v4, v5}, Lcom/waze/LayoutManager;->access$26(Lcom/waze/LayoutManager;I)V

    .line 1297
    :cond_6
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 1298
    .local v3, vto:Landroid/view/ViewTreeObserver;
    new-instance v4, Lcom/waze/LayoutManager$19$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/waze/LayoutManager$19$1;-><init>(Lcom/waze/LayoutManager$19;Landroid/widget/RelativeLayout;Lcom/waze/navigate/social/EndDriveData;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_1

    .line 1286
    .end local v3           #vto:Landroid/view/ViewTreeObserver;
    :cond_7
    iget-object v4, p0, Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/waze/LayoutManager;->access$9(Lcom/waze/LayoutManager;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1287
    const v5, 0x7f020178

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
