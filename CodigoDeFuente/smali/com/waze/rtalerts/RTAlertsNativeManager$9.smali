.class Lcom/waze/rtalerts/RTAlertsNativeManager$9;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "RTAlertsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->postCommentValidate(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mValidated:Z

.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

.field private final synthetic val$alertId:I

.field private final synthetic val$context4Result:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;ILandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$9;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput p2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$9;->val$alertId:I

    iput-object p3, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$9;->val$context4Result:Landroid/app/Activity;

    .line 273
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$9;->mValidated:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$9;->val$context4Result:Landroid/app/Activity;

    iget v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$9;->val$alertId:I

    invoke-static {v0, v1}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->start(Landroid/app/Activity;I)V

    .line 284
    :cond_0
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$9;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iget v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$9;->val$alertId:I

    #calls: Lcom/waze/rtalerts/RTAlertsNativeManager;->PostCommentValidateNTV(I)Z
    invoke-static {v0, v1}, Lcom/waze/rtalerts/RTAlertsNativeManager;->access$7(Lcom/waze/rtalerts/RTAlertsNativeManager;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$9;->mValidated:Z

    .line 278
    return-void
.end method
