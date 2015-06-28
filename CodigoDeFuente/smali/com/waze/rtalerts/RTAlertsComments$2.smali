.class Lcom/waze/rtalerts/RTAlertsComments$2;
.super Ljava/lang/Object;
.source "RTAlertsComments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsComments;->setCommentsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsComments;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsComments;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsComments$2;->this$0:Lcom/waze/rtalerts/RTAlertsComments;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, data:Landroid/content/Intent;
    const-string v1, "PopUp alert id"

    sget-object v2, Lcom/waze/rtalerts/RTAlertsComments;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget v2, v2, Lcom/waze/rtalerts/RTAlertsAlertData;->mID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsComments$2;->this$0:Lcom/waze/rtalerts/RTAlertsComments;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v0}, Lcom/waze/rtalerts/RTAlertsComments;->setResult(ILandroid/content/Intent;)V

    .line 130
    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsComments$2;->this$0:Lcom/waze/rtalerts/RTAlertsComments;

    invoke-virtual {v1}, Lcom/waze/rtalerts/RTAlertsComments;->finish()V

    .line 131
    return-void
.end method
