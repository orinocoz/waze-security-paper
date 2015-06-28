.class Lcom/waze/rtalerts/RTAlertsMenu$2;
.super Ljava/lang/Object;
.source "RTAlertsMenu.java"

# interfaces
.implements Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsMenu;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsMenu$2;->this$0:Lcom/waze/rtalerts/RTAlertsMenu;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler$Data;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 62
    iget-object v0, p1, Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler$Data;->mAlertsData:[Lcom/waze/rtalerts/RTAlertsAlertData;

    invoke-static {v0}, Lcom/waze/rtalerts/RTAlertsList;->updateListData([Lcom/waze/rtalerts/RTAlertsAlertData;)V

    .line 63
    return-void
.end method
