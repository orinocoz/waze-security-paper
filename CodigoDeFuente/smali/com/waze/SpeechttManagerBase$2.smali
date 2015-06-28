.class Lcom/waze/SpeechttManagerBase$2;
.super Ljava/lang/Object;
.source "SpeechttManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/SpeechttManagerBase;->Stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/SpeechttManagerBase;


# direct methods
.method constructor <init>(Lcom/waze/SpeechttManagerBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/SpeechttManagerBase$2;->this$0:Lcom/waze/SpeechttManagerBase;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 114
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 116
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v1, "Cannot stop speech recognizer. Main activity is not available"

    invoke-static {v1}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
