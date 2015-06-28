.class Lcom/waze/push/Alerter$2;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "Alerter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/push/Alerter;->onAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$analyticsInfoValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/push/Alerter$2;->val$analyticsInfoValue:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 3

    .prologue
    .line 132
    const-string v0, "PUSH_MESSAGE_RECEIVED"

    const-string v1, "VAUE"

    iget-object v2, p0, Lcom/waze/push/Alerter$2;->val$analyticsInfoValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method
