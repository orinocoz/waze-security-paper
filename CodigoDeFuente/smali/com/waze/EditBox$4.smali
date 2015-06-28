.class Lcom/waze/EditBox$4;
.super Ljava/lang/Object;
.source "EditBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$speechTTCb:Lcom/waze/SpeechttManagerBase$Callback;


# direct methods
.method constructor <init>(Lcom/waze/EditBox;Lcom/waze/SpeechttManagerBase$Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/EditBox$4;->this$0:Lcom/waze/EditBox;

    iput-object p2, p0, Lcom/waze/EditBox$4;->val$speechTTCb:Lcom/waze/SpeechttManagerBase$Callback;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "aView"

    .prologue
    const/4 v5, 0x0

    .line 339
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v8

    .line 340
    .local v8, nativeMgr:Lcom/waze/NativeManager;
    invoke-virtual {v8}, Lcom/waze/NativeManager;->getSpeechttManager()Lcom/waze/SpeechttManagerBase;

    move-result-object v0

    .line 341
    .local v0, speechTTManager:Lcom/waze/SpeechttManagerBase;
    iget-object v1, p0, Lcom/waze/EditBox$4;->this$0:Lcom/waze/EditBox;

    invoke-virtual {v1}, Lcom/waze/EditBox;->HideSoftInput()V

    .line 342
    iget-object v1, p0, Lcom/waze/EditBox$4;->val$speechTTCb:Lcom/waze/SpeechttManagerBase$Callback;

    iget-object v2, p0, Lcom/waze/EditBox$4;->val$speechTTCb:Lcom/waze/SpeechttManagerBase$Callback;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x0

    const/4 v4, 0x5

    const/4 v7, 0x0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/waze/SpeechttManagerBase;->Start(Lcom/waze/SpeechttManagerBase$Callback;JI[B[BI)V

    .line 343
    return-void
.end method
