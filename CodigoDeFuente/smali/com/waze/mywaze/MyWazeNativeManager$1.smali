.class Lcom/waze/mywaze/MyWazeNativeManager$1;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->getProfileSettings(Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field profile:Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;

.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$cb:Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;

    .line 136
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "WAZE"

    const-string v1, "ProfileSettings - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->val$cb:Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->profile:Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;

    invoke-interface {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;->onProfile(Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;)V

    .line 153
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "WAZE"

    const-string v1, "ProfileSettings - event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;

    invoke-direct {v0}, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;-><init>()V

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->profile:Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;

    .line 142
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->profile:Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getUserNameNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$0(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->userName:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->profile:Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getPasswordNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$1(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->password:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->profile:Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getNickNameNTV()Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$2(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->nickName:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->profile:Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getAllowPingsNTV()Z
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->access$3(Lcom/waze/mywaze/MyWazeNativeManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->allowPings:Z

    .line 146
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->profile:Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$1;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->randomUser:Z

    .line 147
    return-void
.end method
