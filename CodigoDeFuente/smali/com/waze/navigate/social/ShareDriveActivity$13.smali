.class Lcom/waze/navigate/social/ShareDriveActivity$13;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 395
    const-string v1, "SHARE_MORE_OPTIONS"

    const-string v2, "TYPE"

    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    iget v0, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mType:I

    if-nez v0, :cond_0

    .line 396
    const-string v0, "DRIVE"

    .line 395
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->GetLastShareURL()Ljava/lang/String;

    move-result-object v10

    .line 401
    .local v10, sURL:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    iget v0, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$18(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isFollowActiveNTV()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v10, :cond_1

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    invoke-static {v0, v10, v7}, Lcom/waze/share/ShareUtility;->BuildShareURL(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;)V

    .line 420
    :goto_1
    return-void

    .line 397
    .end local v10           #sURL:Ljava/lang/String;
    :cond_0
    const-string v0, "LOCATION"

    goto :goto_0

    .line 403
    .restart local v10       #sURL:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    iget v0, v0, Lcom/waze/navigate/social/ShareDriveActivity;->mType:I

    if-nez v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$18(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/main/navigate/LocationData;->locationName:Ljava/lang/String;

    const-string v2, "ShareDrive"

    iget-object v3, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v3}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v3

    iget v3, v3, Lcom/waze/main/navigate/LocationData;->locationX:I

    .line 405
    iget-object v4, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v4}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v4

    iget v4, v4, Lcom/waze/main/navigate/LocationData;->locationY:I

    iget-object v5, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v5}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v5

    iget-object v5, v5, Lcom/waze/main/navigate/LocationData;->mStreet:Ljava/lang/String;

    iget-object v6, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/main/navigate/LocationData;->mCity:Ljava/lang/String;

    iget-object v8, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocation:Lcom/waze/main/navigate/LocationData;
    invoke-static {v8}, Lcom/waze/navigate/social/ShareDriveActivity;->access$1(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/main/navigate/LocationData;

    move-result-object v8

    iget-object v8, v8, Lcom/waze/main/navigate/LocationData;->mVenueId:Ljava/lang/String;

    .line 404
    invoke-virtual/range {v0 .. v8}, Lcom/waze/NativeManager;->CreateMeeting(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 407
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v9, i:Landroid/content/Intent;
    const-string v0, "text/plain"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v0, "android.intent.extra.SUBJECT"

    const-string v1, ""

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v0, "android.intent.extra.TEXT"

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    iget-object v1, v1, Lcom/waze/navigate/social/ShareDriveActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v0, "exit_on_sent"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 415
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$13;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$18(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SHARE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0xfa0

    .line 414
    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/social/ShareDriveActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method
