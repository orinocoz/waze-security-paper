.class Lcom/waze/view/popups/AlertPopUp$5;
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
    iput-object p1, p0, Lcom/waze/view/popups/AlertPopUp$5;->this$0:Lcom/waze/view/popups/AlertPopUp;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/AlertPopUp$5;)Lcom/waze/view/popups/AlertPopUp;
    .locals 1
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/waze/view/popups/AlertPopUp$5;->this$0:Lcom/waze/view/popups/AlertPopUp;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/waze/view/popups/AlertPopUp$5;->this$0:Lcom/waze/view/popups/AlertPopUp;

    #getter for: Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;
    invoke-static {v0}, Lcom/waze/view/popups/AlertPopUp;->access$1(Lcom/waze/view/popups/AlertPopUp;)Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v0

    iget v1, v0, Lcom/waze/rtalerts/RTAlertsAlertData;->mNumThumbsUp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/waze/rtalerts/RTAlertsAlertData;->mNumThumbsUp:I

    .line 405
    iget-object v0, p0, Lcom/waze/view/popups/AlertPopUp$5;->this$0:Lcom/waze/view/popups/AlertPopUp;

    iget-object v1, p0, Lcom/waze/view/popups/AlertPopUp$5;->this$0:Lcom/waze/view/popups/AlertPopUp;

    #getter for: Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;
    invoke-static {v1}, Lcom/waze/view/popups/AlertPopUp;->access$1(Lcom/waze/view/popups/AlertPopUp;)Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v1

    iget v1, v1, Lcom/waze/rtalerts/RTAlertsAlertData;->mNumThumbsUp:I

    const/4 v2, 0x0

    #calls: Lcom/waze/view/popups/AlertPopUp;->setThumbsUpButton(IZ)V
    invoke-static {v0, v1, v2}, Lcom/waze/view/popups/AlertPopUp;->access$2(Lcom/waze/view/popups/AlertPopUp;IZ)V

    .line 406
    new-instance v0, Lcom/waze/view/popups/AlertPopUp$5$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/AlertPopUp$5$1;-><init>(Lcom/waze/view/popups/AlertPopUp$5;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 412
    return-void
.end method
