.class Lcom/waze/rtalerts/RTAlertsNativeManager$1;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "RTAlertsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->getAlertsCommentData(ILcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mData:[Lcom/waze/rtalerts/RTAlertsCommentData;

.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

.field private final synthetic val$alertId:I

.field private final synthetic val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;ILcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$1;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput p2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$1;->val$alertId:I

    iput-object p3, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$1;->val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;

    .line 64
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$1;->val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;

    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$1;->mData:[Lcom/waze/rtalerts/RTAlertsCommentData;

    invoke-interface {v0, v1}, Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;->handler([Lcom/waze/rtalerts/RTAlertsCommentData;)V

    .line 75
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$1;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iget v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$1;->val$alertId:I

    #calls: Lcom/waze/rtalerts/RTAlertsNativeManager;->GetRTAlertsCommentNTV(I)[Lcom/waze/rtalerts/RTAlertsCommentData;
    invoke-static {v0, v1}, Lcom/waze/rtalerts/RTAlertsNativeManager;->access$0(Lcom/waze/rtalerts/RTAlertsNativeManager;I)[Lcom/waze/rtalerts/RTAlertsCommentData;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$1;->mData:[Lcom/waze/rtalerts/RTAlertsCommentData;

    .line 70
    return-void
.end method
