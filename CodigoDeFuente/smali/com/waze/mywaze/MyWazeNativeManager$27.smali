.class Lcom/waze/mywaze/MyWazeNativeManager$27;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/profile/RegisterActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$email:Ljava/lang/String;

.field private final synthetic val$nickname:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$updates:Z

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->val$nickname:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->val$email:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->val$updates:Z

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 675
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->val$nickname:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->val$email:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/waze/mywaze/MyWazeNativeManager$27;->val$updates:Z

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->registerUserNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager;->access$42(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 676
    return-void
.end method
