.class Lcom/waze/rtalerts/RTAlertsNativeManager$4;
.super Ljava/lang/Object;
.source "RTAlertsNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->showAlertPopUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

.field private final synthetic val$alertId:I


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$4;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput p2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$4;->val$alertId:I

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$4;->val$alertId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$4;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iget v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$4;->val$alertId:I

    #calls: Lcom/waze/rtalerts/RTAlertsNativeManager;->ShowPopUpByIdNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/rtalerts/RTAlertsNativeManager;->access$3(Lcom/waze/rtalerts/RTAlertsNativeManager;I)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v0, "Invalid alertId was supplied - cannot show PopUp"

    invoke-static {v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;)V

    goto :goto_0
.end method
