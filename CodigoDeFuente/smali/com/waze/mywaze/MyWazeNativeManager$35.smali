.class Lcom/waze/mywaze/MyWazeNativeManager$35;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriends([ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$ids:[I

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;[ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$35;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$35;->val$ids:[I

    iput-object p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$35;->val$message:Ljava/lang/String;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 777
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$35;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$35;->val$ids:[I

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$35;->val$message:Ljava/lang/String;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriendsNTV([ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager;->access$50(Lcom/waze/mywaze/MyWazeNativeManager;[ILjava/lang/String;)V

    .line 778
    return-void
.end method
