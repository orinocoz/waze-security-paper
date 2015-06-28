.class Lcom/waze/mywaze/MyWazeNativeManager$76;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->setFacebookToken(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$accessExpires:J

.field private final synthetic val$accessToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$76;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$76;->val$accessToken:Ljava/lang/String;

    iput-wide p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$76;->val$accessExpires:J

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$76;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$76;->val$accessToken:Ljava/lang/String;

    iget-wide v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$76;->val$accessExpires:J

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->setFacebookTokenNTV(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/mywaze/MyWazeNativeManager;->access$75(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;J)V

    .line 1246
    return-void
.end method
