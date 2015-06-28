.class Lcom/waze/mywaze/MyWazeNativeManager$14;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->setNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$email:Ljava/lang/String;

.field private final synthetic val$first:Ljava/lang/String;

.field private final synthetic val$last:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->val$first:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->val$last:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->val$user:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->val$password:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->val$email:Ljava/lang/String;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 475
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->val$first:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->val$last:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->val$user:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->val$password:Ljava/lang/String;

    iget-object v5, p0, Lcom/waze/mywaze/MyWazeNativeManager$14;->val$email:Ljava/lang/String;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->setNamesNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager;->access$28(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void
.end method
