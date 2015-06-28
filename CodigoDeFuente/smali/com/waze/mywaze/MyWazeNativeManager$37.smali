.class Lcom/waze/mywaze/MyWazeNativeManager$37;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialInviteFriends([I[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$ids:[I

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$phones:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;[I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$37;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$37;->val$ids:[I

    iput-object p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$37;->val$phones:[Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/mywaze/MyWazeNativeManager$37;->val$message:Ljava/lang/String;

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 795
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$37;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$37;->val$ids:[I

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$37;->val$phones:[Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$37;->val$message:Ljava/lang/String;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialInviteFriendsNTV([I[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/mywaze/MyWazeNativeManager;->access$52(Lcom/waze/mywaze/MyWazeNativeManager;[I[Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    return-void
.end method
