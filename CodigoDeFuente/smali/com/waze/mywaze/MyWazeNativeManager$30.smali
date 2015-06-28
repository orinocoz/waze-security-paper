.class Lcom/waze/mywaze/MyWazeNativeManager$30;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->updateTwitter(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$update:Z

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$30;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$30;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$30;->val$password:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/waze/mywaze/MyWazeNativeManager$30;->val$update:Z

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 727
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$30;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$30;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$30;->val$password:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$30;->val$update:Z

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->updateTwitterNTV(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/mywaze/MyWazeNativeManager;->access$45(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 728
    return-void
.end method
