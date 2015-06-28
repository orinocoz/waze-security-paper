.class Lcom/waze/rtalerts/RTAlertsNativeManager$5;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "RTAlertsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->getAlertsCount(Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCountHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCount:I

.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

.field private final synthetic val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCountHandler;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCountHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$5;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput-object p2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$5;->val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCountHandler;

    .line 185
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$5;->val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCountHandler;

    iget v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$5;->mCount:I

    invoke-interface {v0, v1}, Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCountHandler;->handler(I)V

    .line 195
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$5;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    #calls: Lcom/waze/rtalerts/RTAlertsNativeManager;->GetRTAlertsCountNTV()I
    invoke-static {v0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->access$4(Lcom/waze/rtalerts/RTAlertsNativeManager;)I

    move-result v0

    iput v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$5;->mCount:I

    .line 190
    return-void
.end method
