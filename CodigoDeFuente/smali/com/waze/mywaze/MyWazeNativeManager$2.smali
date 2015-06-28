.class Lcom/waze/mywaze/MyWazeNativeManager$2;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->GetAllowPing(Lcom/waze/mywaze/social/SocialActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field AllowPing:Z

.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$cb:Lcom/waze/mywaze/social/SocialActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/social/SocialActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$2;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$2;->val$cb:Lcom/waze/mywaze/social/SocialActivity;

    .line 161
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "WAZE"

    const-string v1, "ProfileSettings - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$2;->val$cb:Lcom/waze/mywaze/social/SocialActivity;

    iget-boolean v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$2;->AllowPing:Z

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/social/SocialActivity;->SetAllowPing(Z)V

    .line 173
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "WAZE"

    const-string v1, "ProfileSettings - event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$2;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getAllowPingsNTV()Z
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$3(Lcom/waze/mywaze/MyWazeNativeManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$2;->AllowPing:Z

    .line 167
    return-void
.end method
