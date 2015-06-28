.class Lcom/waze/navigate/social/MyShareDriveActivity$5;
.super Ljava/lang/Object;
.source "MyShareDriveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyShareDriveActivity;->addFriend(Lcom/waze/user/PersonBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

.field private final synthetic val$fud:Lcom/waze/user/FriendUserData;

.field private final synthetic val$p:Lcom/waze/user/PersonBase;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyShareDriveActivity;Lcom/waze/user/PersonBase;Lcom/waze/user/FriendUserData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$5;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    iput-object p2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$5;->val$p:Lcom/waze/user/PersonBase;

    iput-object p3, p0, Lcom/waze/navigate/social/MyShareDriveActivity$5;->val$fud:Lcom/waze/user/FriendUserData;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 244
    iget-object v5, p0, Lcom/waze/navigate/social/MyShareDriveActivity$5;->val$p:Lcom/waze/user/PersonBase;

    invoke-virtual {v5}, Lcom/waze/user/PersonBase;->getID()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 246
    new-array v0, v7, [I

    iget-object v5, p0, Lcom/waze/navigate/social/MyShareDriveActivity$5;->val$p:Lcom/waze/user/PersonBase;

    invoke-virtual {v5}, Lcom/waze/user/PersonBase;->getID()I

    move-result v5

    aput v5, v0, v8

    .line 249
    .local v0, ids:[I
    iget-object v5, p0, Lcom/waze/navigate/social/MyShareDriveActivity$5;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;
    invoke-static {v5}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$11(Lcom/waze/navigate/social/MyShareDriveActivity;)Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_PS_ADDED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/waze/navigate/social/MyShareDriveActivity$5;->val$p:Lcom/waze/user/PersonBase;

    invoke-virtual {v7}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriends([ILjava/lang/String;)V

    .line 271
    .end local v0           #ids:[I
    .end local v4           #reply:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v5, p0, Lcom/waze/navigate/social/MyShareDriveActivity$5;->val$fud:Lcom/waze/user/FriendUserData;

    iget v5, v5, Lcom/waze/user/FriendUserData;->mContactID:I

    if-ltz v5, :cond_0

    .line 257
    iget-object v5, p0, Lcom/waze/navigate/social/MyShareDriveActivity$5;->val$fud:Lcom/waze/user/FriendUserData;

    iget v5, v5, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v5}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v3

    .line 259
    .local v3, per:Lcom/waze/autocomplete/Person;
    if-eqz v3, :cond_0

    .line 261
    new-array v2, v7, [I

    .line 262
    .local v2, invitedIds:[I
    new-array v1, v7, [Ljava/lang/String;

    .line 263
    .local v1, invitePhones:[Ljava/lang/String;
    invoke-virtual {v3}, Lcom/waze/autocomplete/Person;->getID()I

    move-result v5

    aput v5, v2, v8

    .line 264
    invoke-virtual {v3}, Lcom/waze/autocomplete/Person;->getPhone()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 266
    iget-object v5, p0, Lcom/waze/navigate/social/MyShareDriveActivity$5;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;
    invoke-static {v5}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$11(Lcom/waze/navigate/social/MyShareDriveActivity;)Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_PS_INVITED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/waze/autocomplete/Person;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .restart local v4       #reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v4}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialInviteFriends([I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
