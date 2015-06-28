.class Lcom/waze/view/popups/AlertPopUp$6;
.super Ljava/lang/Object;
.source "AlertPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/AlertPopUp;->show(Lcom/waze/rtalerts/RTAlertsAlertData;IILjava/lang/String;)V
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
    iput-object p1, p0, Lcom/waze/view/popups/AlertPopUp$6;->this$0:Lcom/waze/view/popups/AlertPopUp;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 418
    iget-object v1, p0, Lcom/waze/view/popups/AlertPopUp$6;->this$0:Lcom/waze/view/popups/AlertPopUp;

    #getter for: Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;
    invoke-static {v1}, Lcom/waze/view/popups/AlertPopUp;->access$1(Lcom/waze/view/popups/AlertPopUp;)Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v1

    iget v1, v1, Lcom/waze/rtalerts/RTAlertsAlertData;->mNumComments:I

    if-lez v1, :cond_0

    .line 420
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/view/popups/AlertPopUp$6;->this$0:Lcom/waze/view/popups/AlertPopUp;

    #getter for: Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;
    invoke-static {v2}, Lcom/waze/view/popups/AlertPopUp;->access$1(Lcom/waze/view/popups/AlertPopUp;)Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/rtalerts/RTAlertsComments;->show(Landroid/app/Activity;Lcom/waze/rtalerts/RTAlertsAlertData;)V

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v0

    .line 425
    .local v0, mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/view/popups/AlertPopUp$6;->this$0:Lcom/waze/view/popups/AlertPopUp;

    #getter for: Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;
    invoke-static {v2}, Lcom/waze/view/popups/AlertPopUp;->access$1(Lcom/waze/view/popups/AlertPopUp;)Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v2

    iget v2, v2, Lcom/waze/rtalerts/RTAlertsAlertData;->mID:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/rtalerts/RTAlertsNativeManager;->postCommentValidate(Landroid/app/Activity;I)V

    goto :goto_0
.end method
