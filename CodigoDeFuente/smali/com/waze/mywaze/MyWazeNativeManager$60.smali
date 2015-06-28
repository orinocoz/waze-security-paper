.class Lcom/waze/mywaze/MyWazeNativeManager$60;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->facebook_show_conflicting_users(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$last_seen:Ljava/lang/String;

.field private final synthetic val$points:I

.field private final synthetic val$rank:I

.field private final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->val$points:I

    iput p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->val$rank:I

    iput-object p4, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->val$userName:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->val$last_seen:Ljava/lang/String;

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #getter for: Lcom/waze/mywaze/MyWazeNativeManager;->mConflictingDataUser:Lcom/waze/mywaze/MyWazeData;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$66(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/MyWazeData;

    move-result-object v0

    iget v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->val$points:I

    iput v1, v0, Lcom/waze/mywaze/MyWazeData;->mPts:I

    .line 1086
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #getter for: Lcom/waze/mywaze/MyWazeNativeManager;->mConflictingDataUser:Lcom/waze/mywaze/MyWazeData;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$66(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/MyWazeData;

    move-result-object v0

    iget v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->val$rank:I

    iput v1, v0, Lcom/waze/mywaze/MyWazeData;->mRank:I

    .line 1088
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #getter for: Lcom/waze/mywaze/MyWazeNativeManager;->mConflictingDataUser:Lcom/waze/mywaze/MyWazeData;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$66(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/MyWazeData;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->val$userName:Ljava/lang/String;

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    .line 1089
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #getter for: Lcom/waze/mywaze/MyWazeNativeManager;->mConflictingDataUser:Lcom/waze/mywaze/MyWazeData;
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$66(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/MyWazeData;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$60;->val$last_seen:Ljava/lang/String;

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mLastSeen:Ljava/lang/String;

    .line 1091
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1093
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->openConflictingActivity()V

    .line 1095
    :cond_0
    return-void
.end method
