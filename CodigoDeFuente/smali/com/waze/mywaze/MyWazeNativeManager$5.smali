.class Lcom/waze/mywaze/MyWazeNativeManager$5;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field Data:Lcom/waze/mywaze/MyWazeData;

.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$mywaze:Lcom/waze/ifs/ui/ActivityBase;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->val$mywaze:Lcom/waze/ifs/ui/ActivityBase;

    .line 245
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "WAZE"

    const-string v1, "getFacebookSettings - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->val$mywaze:Lcom/waze/ifs/ui/ActivityBase;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/ActivityBase;->SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V

    .line 273
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "WAZE"

    const-string v1, "getFacebookSettings - event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Lcom/waze/mywaze/MyWazeData;

    invoke-direct {v0}, Lcom/waze/mywaze/MyWazeData;-><init>()V

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    .line 251
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookLoggedInNTV()Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeData;->mFaceBookLoggedIn:Z

    .line 252
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeData;->mContactsLoggedIn:Z

    .line 253
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getUserImageUrlNTV()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mImageUrl:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getRankNTV()I

    move-result v1

    iput v1, v0, Lcom/waze/mywaze/MyWazeData;->mRank:I

    .line 255
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getPointsNTV()I

    move-result v1

    iput v1, v0, Lcom/waze/mywaze/MyWazeData;->mPts:I

    .line 256
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getUserNameNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$0(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getNickNameNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$2(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mNickName:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getFaceBookNickNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$6(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mFaceBookNickName:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getJoinedStrNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$7(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mJoinedStr:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsOnlineNTV()I
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$8(Lcom/waze/mywaze/MyWazeNativeManager;)I

    move-result v1

    iput v1, v0, Lcom/waze/mywaze/MyWazeData;->nFriendsOnline:I

    .line 261
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getFirstNameNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$9(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mFirstName:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getLastNameNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$10(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mLastName:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getSocialMoodNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$11(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mMood:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getPhoneNumberNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$12(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mPhoneNumber:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getPasswordNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$1(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mPassword:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$5;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getEmailNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$13(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mEmail:Ljava/lang/String;

    .line 267
    return-void
.end method
