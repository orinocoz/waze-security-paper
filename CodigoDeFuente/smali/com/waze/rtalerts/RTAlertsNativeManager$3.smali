.class Lcom/waze/rtalerts/RTAlertsNativeManager$3;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "RTAlertsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->getAlertsListData(Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mData:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler$Data;

.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

.field private final synthetic val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$3;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput-object p2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$3;->val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;

    .line 125
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    .line 126
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler$Data;

    invoke-direct {v0}, Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler$Data;-><init>()V

    iput-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$3;->mData:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler$Data;

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$3;->val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;

    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$3;->mData:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler$Data;

    invoke-interface {v0, v1}, Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;->handler(Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler$Data;)V

    .line 135
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$3;->mData:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler$Data;

    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$3;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    #calls: Lcom/waze/rtalerts/RTAlertsNativeManager;->GetRTAlertsListNTV()[Lcom/waze/rtalerts/RTAlertsAlertData;
    invoke-static {v1}, Lcom/waze/rtalerts/RTAlertsNativeManager;->access$2(Lcom/waze/rtalerts/RTAlertsNativeManager;)[Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler$Data;->mAlertsData:[Lcom/waze/rtalerts/RTAlertsAlertData;

    .line 130
    return-void
.end method
