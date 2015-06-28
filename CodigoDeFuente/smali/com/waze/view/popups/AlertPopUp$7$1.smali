.class Lcom/waze/view/popups/AlertPopUp$7$1;
.super Ljava/lang/Object;
.source "AlertPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/AlertPopUp$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/view/popups/AlertPopUp$7;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/AlertPopUp$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/AlertPopUp$7$1;->this$1:Lcom/waze/view/popups/AlertPopUp$7;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 487
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/popups/AlertPopUp$7$1;->this$1:Lcom/waze/view/popups/AlertPopUp$7;

    #getter for: Lcom/waze/view/popups/AlertPopUp$7;->this$0:Lcom/waze/view/popups/AlertPopUp;
    invoke-static {v1}, Lcom/waze/view/popups/AlertPopUp$7;->access$0(Lcom/waze/view/popups/AlertPopUp$7;)Lcom/waze/view/popups/AlertPopUp;

    move-result-object v1

    #getter for: Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;
    invoke-static {v1}, Lcom/waze/view/popups/AlertPopUp;->access$1(Lcom/waze/view/popups/AlertPopUp;)Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v1

    iget v1, v1, Lcom/waze/rtalerts/RTAlertsAlertData;->mID:I

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->sendThumbsUpNTV(I)V

    .line 488
    return-void
.end method
