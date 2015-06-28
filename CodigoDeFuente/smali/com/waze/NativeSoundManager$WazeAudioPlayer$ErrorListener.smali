.class final Lcom/waze/NativeSoundManager$WazeAudioPlayer$ErrorListener;
.super Ljava/lang/Object;
.source "NativeSoundManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeSoundManager$WazeAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ErrorListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/NativeSoundManager$WazeAudioPlayer;


# direct methods
.method private constructor <init>(Lcom/waze/NativeSoundManager$WazeAudioPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer$ErrorListener;->this$1:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/NativeSoundManager$WazeAudioPlayer;Lcom/waze/NativeSoundManager$WazeAudioPlayer$ErrorListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/waze/NativeSoundManager$WazeAudioPlayer$ErrorListener;-><init>(Lcom/waze/NativeSoundManager$WazeAudioPlayer;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "aMP"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer$ErrorListener;->this$1:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    #calls: Lcom/waze/NativeSoundManager$WazeAudioPlayer;->finalizePlay(Landroid/media/MediaPlayer;)V
    invoke-static {v0, p1}, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->access$0(Lcom/waze/NativeSoundManager$WazeAudioPlayer;Landroid/media/MediaPlayer;)V

    .line 635
    const/4 v0, 0x1

    return v0
.end method
