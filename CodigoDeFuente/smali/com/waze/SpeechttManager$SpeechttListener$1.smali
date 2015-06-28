.class Lcom/waze/SpeechttManager$SpeechttListener$1;
.super Ljava/lang/Object;
.source "SpeechttManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/SpeechttManager$SpeechttListener;->onEvent(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/SpeechttManager$SpeechttListener;

.field private final synthetic val$eventType_:I


# direct methods
.method constructor <init>(Lcom/waze/SpeechttManager$SpeechttListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/SpeechttManager$SpeechttListener$1;->this$1:Lcom/waze/SpeechttManager$SpeechttListener;

    iput p2, p0, Lcom/waze/SpeechttManager$SpeechttListener$1;->val$eventType_:I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Speech to text event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/waze/SpeechttManager$SpeechttListener$1;->val$eventType_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 156
    return-void
.end method
