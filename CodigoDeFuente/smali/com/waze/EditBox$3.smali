.class Lcom/waze/EditBox$3;
.super Lcom/waze/SpeechttManagerBase$Callback;
.source "EditBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/EditBox;->PrepareSpeechTTHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/EditBox;


# direct methods
.method constructor <init>(Lcom/waze/EditBox;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/EditBox$3;->this$0:Lcom/waze/EditBox;

    .line 327
    invoke-direct {p0}, Lcom/waze/SpeechttManagerBase$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResults(JLjava/lang/String;I)V
    .locals 2
    .parameter "aCbContext"
    .parameter "aResult"
    .parameter "aStatus"

    .prologue
    .line 330
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/waze/EditBox$3;->this$0:Lcom/waze/EditBox;

    invoke-virtual {v0, p3}, Lcom/waze/EditBox;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/waze/EditBox$3;->this$0:Lcom/waze/EditBox;

    invoke-virtual {v0}, Lcom/waze/EditBox;->ShowSoftInput()V

    .line 335
    return-void

    .line 333
    :cond_0
    const-string v0, "WAZE"

    const-string v1, "Got error result from the speech to text manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
