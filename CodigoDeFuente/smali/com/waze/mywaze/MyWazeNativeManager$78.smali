.class Lcom/waze/mywaze/MyWazeNativeManager$78;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->ImportFacebook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$78;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 1260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$78;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->ImportFacebookNTV()V
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$77(Lcom/waze/mywaze/MyWazeNativeManager;)V

    .line 1264
    return-void
.end method
