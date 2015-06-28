.class Lcom/waze/SpeechttManagerBase$1;
.super Ljava/lang/Object;
.source "SpeechttManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/SpeechttManagerBase;->Start(Lcom/waze/SpeechttManagerBase$Callback;JI[B[BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/SpeechttManagerBase;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/waze/SpeechttManagerBase;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/SpeechttManagerBase$1;->this$0:Lcom/waze/SpeechttManagerBase;

    iput-object p2, p0, Lcom/waze/SpeechttManagerBase$1;->val$intent:Landroid/content/Intent;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 69
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 70
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/waze/SpeechttManagerBase$1;->val$intent:Landroid/content/Intent;

    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 78
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "Error. Speech to text service is not available"

    invoke-static {v2, v1}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    const-string v2, "Error"

    const-string v3, "Speech to text service is not available"

    const-string v4, "Ok"

    new-instance v5, Lcom/waze/SpeechttManagerBase$OnOkMsgNoService;

    iget-object v6, p0, Lcom/waze/SpeechttManagerBase$1;->this$0:Lcom/waze/SpeechttManagerBase;

    invoke-direct {v5, v6}, Lcom/waze/SpeechttManagerBase$OnOkMsgNoService;-><init>(Lcom/waze/SpeechttManagerBase;)V

    invoke-static {v2, v3, v4, v5}, Lcom/waze/MsgBox;->ShowOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 84
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string v2, "Cannot start speech recognizer. Main activity is not available"

    invoke-static {v2}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
