.class Lcom/waze/rtalerts/RTAlertsNativeManager$11;
.super Ljava/lang/Object;
.source "RTAlertsNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->reportMapIssue(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

.field private final synthetic val$desc:Ljava/lang/String;

.field private final synthetic val$problemIndex:I


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$11;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput-object p2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$11;->val$desc:Ljava/lang/String;

    iput p3, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$11;->val$problemIndex:I

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$11;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$11;->val$desc:Ljava/lang/String;

    iget v2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$11;->val$problemIndex:I

    #calls: Lcom/waze/rtalerts/RTAlertsNativeManager;->reportMapIssueNTV(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/waze/rtalerts/RTAlertsNativeManager;->access$9(Lcom/waze/rtalerts/RTAlertsNativeManager;Ljava/lang/String;I)V

    .line 305
    return-void
.end method
