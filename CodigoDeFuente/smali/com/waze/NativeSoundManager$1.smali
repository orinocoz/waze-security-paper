.class Lcom/waze/NativeSoundManager$1;
.super Ljava/lang/Object;
.source "NativeSoundManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeSoundManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeSoundManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeSoundManager$1;->this$0:Lcom/waze/NativeSoundManager;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 491
    and-int/lit8 v0, p1, -0x1

    if-lez v0, :cond_0

    .line 493
    const-string v0, "Sound_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio focus is lost. State: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void

    .line 495
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_1

    .line 497
    const-string v0, "Sound_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio focus is gained. State: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_1
    const-string v0, "Sound_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio focus unknown state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
