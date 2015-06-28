.class Lcom/waze/view/popups/BeepPopUp$1;
.super Ljava/lang/Object;
.source "BeepPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/BeepPopUp;->onReply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/BeepPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/BeepPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/BeepPopUp$1;->this$0:Lcom/waze/view/popups/BeepPopUp;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "BEEP_BACK"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/popups/BeepPopUp$1;->this$0:Lcom/waze/view/popups/BeepPopUp;

    #getter for: Lcom/waze/view/popups/BeepPopUp;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;
    invoke-static {v1}, Lcom/waze/view/popups/BeepPopUp;->access$0(Lcom/waze/view/popups/BeepPopUp;)Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    move-result-object v1

    iget v1, v1, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mAlertID:I

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->sendBeepBackNTV(I)V

    .line 57
    return-void
.end method
