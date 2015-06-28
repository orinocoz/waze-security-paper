.class Lcom/waze/NativeSoundManager$WazeAudioPlayer$1;
.super Ljava/lang/Object;
.source "NativeSoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeSoundManager$WazeAudioPlayer;->finalizePlay(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/NativeSoundManager$WazeAudioPlayer;


# direct methods
.method constructor <init>(Lcom/waze/NativeSoundManager$WazeAudioPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer$1;->this$1:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer$1;->this$1:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    #getter for: Lcom/waze/NativeSoundManager$WazeAudioPlayer;->this$0:Lcom/waze/NativeSoundManager;
    invoke-static {v0}, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->access$2(Lcom/waze/NativeSoundManager$WazeAudioPlayer;)Lcom/waze/NativeSoundManager;

    move-result-object v0

    #calls: Lcom/waze/NativeSoundManager;->PlayNext()V
    invoke-static {v0}, Lcom/waze/NativeSoundManager;->access$4(Lcom/waze/NativeSoundManager;)V

    .line 648
    return-void
.end method
