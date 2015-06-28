.class Lcom/waze/rtalerts/RTAlertsList$2;
.super Ljava/lang/Object;
.source "RTAlertsList.java"

# interfaces
.implements Lcom/waze/view/tabs/TabBar$IOnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsList;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsList$2;->this$0:Lcom/waze/rtalerts/RTAlertsList;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsList$2;->this$0:Lcom/waze/rtalerts/RTAlertsList;

    #setter for: Lcom/waze/rtalerts/RTAlertsList;->mSelectedTab:I
    invoke-static {v0, p1}, Lcom/waze/rtalerts/RTAlertsList;->access$2(Lcom/waze/rtalerts/RTAlertsList;I)V

    .line 79
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsList$2;->this$0:Lcom/waze/rtalerts/RTAlertsList;

    invoke-static {}, Lcom/waze/rtalerts/RTAlertsList;->access$3()[Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v1

    #calls: Lcom/waze/rtalerts/RTAlertsList;->updateList([Lcom/waze/rtalerts/RTAlertsAlertData;)V
    invoke-static {v0, v1}, Lcom/waze/rtalerts/RTAlertsList;->access$4(Lcom/waze/rtalerts/RTAlertsList;[Lcom/waze/rtalerts/RTAlertsAlertData;)V

    .line 80
    return-void
.end method
