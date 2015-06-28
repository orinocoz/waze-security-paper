.class Lcom/waze/rtalerts/RTAlertsNativeManager$6;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "RTAlertsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->getMapProblems(Lcom/waze/rtalerts/RTAlertsNativeManager$MapProblemsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field problems:[Lcom/waze/rtalerts/MapProblem;

.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

.field private final synthetic val$listener:Lcom/waze/rtalerts/RTAlertsNativeManager$MapProblemsListener;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Lcom/waze/rtalerts/RTAlertsNativeManager$MapProblemsListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$6;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput-object p2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$6;->val$listener:Lcom/waze/rtalerts/RTAlertsNativeManager$MapProblemsListener;

    .line 202
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$6;->val$listener:Lcom/waze/rtalerts/RTAlertsNativeManager$MapProblemsListener;

    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$6;->problems:[Lcom/waze/rtalerts/MapProblem;

    invoke-interface {v0, v1}, Lcom/waze/rtalerts/RTAlertsNativeManager$MapProblemsListener;->onComplete([Lcom/waze/rtalerts/MapProblem;)V

    .line 212
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$6;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    #calls: Lcom/waze/rtalerts/RTAlertsNativeManager;->getMapProblemsNTV()[Lcom/waze/rtalerts/MapProblem;
    invoke-static {v0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->access$5(Lcom/waze/rtalerts/RTAlertsNativeManager;)[Lcom/waze/rtalerts/MapProblem;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$6;->problems:[Lcom/waze/rtalerts/MapProblem;

    .line 207
    return-void
.end method
