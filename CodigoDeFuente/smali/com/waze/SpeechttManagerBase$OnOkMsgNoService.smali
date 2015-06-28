.class public Lcom/waze/SpeechttManagerBase$OnOkMsgNoService;
.super Ljava/lang/Object;
.source "SpeechttManagerBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/SpeechttManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnOkMsgNoService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/SpeechttManagerBase;


# direct methods
.method protected constructor <init>(Lcom/waze/SpeechttManagerBase;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/waze/SpeechttManagerBase$OnOkMsgNoService;->this$0:Lcom/waze/SpeechttManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 314
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 315
    iget-object v0, p0, Lcom/waze/SpeechttManagerBase$OnOkMsgNoService;->this$0:Lcom/waze/SpeechttManagerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/SpeechttManagerBase;->ResultsHandler(Ljava/util/ArrayList;)V

    .line 316
    return-void
.end method
