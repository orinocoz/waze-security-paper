.class final Lcom/waze/NativeSoundManager$WazeAudioPlayer$CompletionListener;
.super Ljava/lang/Object;
.source "NativeSoundManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeSoundManager$WazeAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompletionListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/NativeSoundManager$WazeAudioPlayer;


# direct methods
.method private constructor <init>(Lcom/waze/NativeSoundManager$WazeAudioPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer$CompletionListener;->this$1:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/NativeSoundManager$WazeAudioPlayer;Lcom/waze/NativeSoundManager$WazeAudioPlayer$CompletionListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/waze/NativeSoundManager$WazeAudioPlayer$CompletionListener;-><init>(Lcom/waze/NativeSoundManager$WazeAudioPlayer;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "aMP"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer$CompletionListener;->this$1:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    #calls: Lcom/waze/NativeSoundManager$WazeAudioPlayer;->finalizePlay(Landroid/media/MediaPlayer;)V
    invoke-static {v0, p1}, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->access$0(Lcom/waze/NativeSoundManager$WazeAudioPlayer;Landroid/media/MediaPlayer;)V

    .line 628
    return-void
.end method
