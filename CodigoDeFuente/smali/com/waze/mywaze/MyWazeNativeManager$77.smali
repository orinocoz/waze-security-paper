.class Lcom/waze/mywaze/MyWazeNativeManager$77;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->setSignIn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$accessToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$77;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$77;->val$accessToken:Ljava/lang/String;

    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$77;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$77;->val$accessToken:Ljava/lang/String;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->setFacebookSignInNTV(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$76(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;)V

    .line 1255
    return-void
.end method
