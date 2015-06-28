.class Lcom/waze/mywaze/MyWazeNativeManager$6;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeDataForVerification(Lcom/waze/ifs/ui/ActivityBase;)V
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
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->val$mywaze:Lcom/waze/ifs/ui/ActivityBase;

    .line 280
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 295
    const-string v0, "WAZE"

    const-string v1, "getFacebookSettings - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->val$mywaze:Lcom/waze/ifs/ui/ActivityBase;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->Data:Lcom/waze/mywaze/MyWazeData;

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/ActivityBase;->SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V

    .line 297
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "WAZE"

    const-string v1, "getFacebookSettings - event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Lcom/waze/mywaze/MyWazeData;

    invoke-direct {v0}, Lcom/waze/mywaze/MyWazeData;-><init>()V

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->Data:Lcom/waze/mywaze/MyWazeData;

    .line 286
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getSocialRankNTV()I

    move-result v1

    iput v1, v0, Lcom/waze/mywaze/MyWazeData;->mRank:I

    .line 287
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getSocialPointsNTV()I

    move-result v1

    iput v1, v0, Lcom/waze/mywaze/MyWazeData;->mPts:I

    .line 288
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getSocialUserNameNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$14(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getSocialJoinedStrNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$15(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mJoinedStr:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->Data:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$6;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getSocialMoodNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$11(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mMood:Ljava/lang/String;

    .line 291
    return-void
.end method
