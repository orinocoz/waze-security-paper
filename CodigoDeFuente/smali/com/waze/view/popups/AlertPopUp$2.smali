.class Lcom/waze/view/popups/AlertPopUp$2;
.super Ljava/lang/Object;
.source "AlertPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/AlertPopUp;->onImagePresses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/AlertPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/AlertPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/AlertPopUp$2;->this$0:Lcom/waze/view/popups/AlertPopUp;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/popups/AlertPopUp$2;->this$0:Lcom/waze/view/popups/AlertPopUp;

    #getter for: Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;
    invoke-static {v1}, Lcom/waze/view/popups/AlertPopUp;->access$1(Lcom/waze/view/popups/AlertPopUp;)Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v1

    iget v1, v1, Lcom/waze/rtalerts/RTAlertsAlertData;->mID:I

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->DownloadAlertVoiceNTV(I)V

    .line 182
    return-void
.end method
