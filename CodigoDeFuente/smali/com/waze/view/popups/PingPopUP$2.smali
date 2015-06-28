.class Lcom/waze/view/popups/PingPopUP$2;
.super Ljava/lang/Object;
.source "PingPopUP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/PingPopUP;->onFlag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/PingPopUP;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/PingPopUP;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/PingPopUP$2;->this$0:Lcom/waze/view/popups/PingPopUP;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/popups/PingPopUP$2;->this$0:Lcom/waze/view/popups/PingPopUP;

    #getter for: Lcom/waze/view/popups/PingPopUP;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;
    invoke-static {v1}, Lcom/waze/view/popups/PingPopUP;->access$0(Lcom/waze/view/popups/PingPopUP;)Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v1

    iget v1, v1, Lcom/waze/rtalerts/RTAlertsAlertData;->mID:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->ReportAbusNTV(II)V

    .line 63
    return-void
.end method
