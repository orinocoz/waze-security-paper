.class Lcom/waze/view/popups/PingPopUP$1;
.super Ljava/lang/Object;
.source "PingPopUP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/PingPopUP;->onReply()V
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
    iput-object p1, p0, Lcom/waze/view/popups/PingPopUP$1;->this$0:Lcom/waze/view/popups/PingPopUP;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/popups/PingPopUP$1;->this$0:Lcom/waze/view/popups/PingPopUP;

    #getter for: Lcom/waze/view/popups/PingPopUP;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;
    invoke-static {v1}, Lcom/waze/view/popups/PingPopUP;->access$0(Lcom/waze/view/popups/PingPopUP;)Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v1

    iget v1, v1, Lcom/waze/rtalerts/RTAlertsAlertData;->mID:I

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->sendCommentNTV(I)V

    .line 52
    return-void
.end method
