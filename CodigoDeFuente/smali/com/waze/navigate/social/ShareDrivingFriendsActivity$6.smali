.class Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;
.super Ljava/lang/Object;
.source "ShareDrivingFriendsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;)Lcom/waze/navigate/social/ShareDrivingFriendsActivity;
    .locals 1
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/EndDriveData;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 271
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #setter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mEndDriveData:Lcom/waze/navigate/social/EndDriveData;
    invoke-static {v6, p1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$8(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Lcom/waze/navigate/social/EndDriveData;)V

    .line 272
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mEndDriveData:Lcom/waze/navigate/social/EndDriveData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$9(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/navigate/social/EndDriveData;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 273
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    iget-object v8, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mEndDriveData:Lcom/waze/navigate/social/EndDriveData;
    invoke-static {v8}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$9(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/navigate/social/EndDriveData;

    move-result-object v8

    iget-object v8, v8, Lcom/waze/navigate/social/EndDriveData;->shareOwner:Ljava/lang/String;

    iput-object v8, v6, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mShareOwner:Ljava/lang/String;

    .line 276
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$10(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_FROM_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v10, [Ljava/lang/Object;

    .line 277
    iget-object v9, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    iget-object v9, v9, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mShareOwner:Ljava/lang/String;

    invoke-static {v9}, Lcom/waze/share/ShareUtility;->getShortened(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 276
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$6(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/view/title/TitleBar;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/waze/view/title/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;
    invoke-static {v8}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$10(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v8

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_IM_ON_THE_WAY_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 282
    iget-object v8, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mEndDriveData:Lcom/waze/navigate/social/EndDriveData;
    invoke-static {v8}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$9(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/navigate/social/EndDriveData;

    move-result-object v8

    iget-object v8, v8, Lcom/waze/navigate/social/EndDriveData;->address:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 281
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, subtitle:Ljava/lang/String;
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    const v8, 0x7f09069c

    invoke-virtual {v6, v8}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$5(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    .line 286
    .local v5, vto:Landroid/view/ViewTreeObserver;
    new-instance v6, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6$1;

    invoke-direct {v6, p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6$1;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 296
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->nm:Lcom/waze/NativeManager;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$10(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_REPLY_TO_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v10, [Ljava/lang/Object;

    .line 297
    iget-object v9, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    iget-object v9, v9, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mShareOwner:Ljava/lang/String;

    invoke-static {v9}, Lcom/waze/share/ShareUtility;->getFirstName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 296
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, replay:Ljava/lang/String;
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    const v8, 0x7f0906a1

    invoke-virtual {v6, v8}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/settings/SettingsTitleText;

    .line 299
    invoke-virtual {v6, v2}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 301
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mEndDriveData:Lcom/waze/navigate/social/EndDriveData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$9(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/navigate/social/EndDriveData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/navigate/social/EndDriveData;->Others:[Lcom/waze/user/FriendUserData;

    array-length v6, v6

    if-lez v6, :cond_5

    .line 302
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    iget-object v6, v6, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mShareOwner:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    iget-object v6, v6, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mShareOwner:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 303
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mEndDriveData:Lcom/waze/navigate/social/EndDriveData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$9(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/navigate/social/EndDriveData;

    move-result-object v6

    iget-object v8, v6, Lcom/waze/navigate/social/EndDriveData;->Others:[Lcom/waze/user/FriendUserData;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-lt v6, v9, :cond_6

    .line 310
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;

    move-result-object v6

    if-nez v6, :cond_1

    .line 311
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    iget-object v8, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mEndDriveData:Lcom/waze/navigate/social/EndDriveData;
    invoke-static {v8}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$9(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/navigate/social/EndDriveData;

    move-result-object v8

    iget-object v8, v8, Lcom/waze/navigate/social/EndDriveData;->Others:[Lcom/waze/user/FriendUserData;

    aget-object v7, v8, v7

    #setter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6, v7}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$12(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Lcom/waze/user/FriendUserData;)V

    .line 314
    :cond_1
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    const v7, 0x7f09069f

    invoke-virtual {v6, v7}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 315
    iget-object v7, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v7}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;

    move-result-object v7

    iget-object v7, v7, Lcom/waze/user/FriendUserData;->arrivedShareText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .local v0, bob:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 319
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_2
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;

    move-result-object v6

    iget-boolean v6, v6, Lcom/waze/user/FriendUserData;->mShowETA:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/user/FriendUserData;->arrivedTime:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 322
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/user/FriendUserData;->arrivedTime:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 323
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 324
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_3
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/user/FriendUserData;->arrivedText:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$13(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/user/FriendUserData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/user/FriendUserData;->arrivedTime:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_4
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    const v7, 0x7f0906a0

    invoke-virtual {v6, v7}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .end local v0           #bob:Ljava/lang/StringBuilder;
    .end local v2           #replay:Ljava/lang/String;
    .end local v3           #subtitle:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #vto:Landroid/view/ViewTreeObserver;
    :cond_5
    return-void

    .line 303
    .restart local v2       #replay:Ljava/lang/String;
    .restart local v3       #subtitle:Ljava/lang/String;
    .restart local v4       #title:Ljava/lang/String;
    .restart local v5       #vto:Landroid/view/ViewTreeObserver;
    :cond_6
    aget-object v1, v8, v6

    .line 304
    .local v1, fud:Lcom/waze/user/FriendUserData;
    iget-object v10, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    iget-object v10, v10, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mShareOwner:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 305
    iget-object v6, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #setter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mSharedFriends:Lcom/waze/user/FriendUserData;
    invoke-static {v6, v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$12(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Lcom/waze/user/FriendUserData;)V

    goto/16 :goto_1

    .line 303
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method
