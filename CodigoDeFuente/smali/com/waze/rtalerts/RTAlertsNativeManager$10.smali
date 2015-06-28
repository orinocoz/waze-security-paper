.class Lcom/waze/rtalerts/RTAlertsNativeManager$10;
.super Ljava/lang/Object;
.source "RTAlertsNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->postComment(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

.field private final synthetic val$alertId:I

.field private final synthetic val$comment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$10;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput p2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$10;->val$alertId:I

    iput-object p3, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$10;->val$comment:Ljava/lang/String;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$10;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iget v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$10;->val$alertId:I

    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$10;->val$comment:Ljava/lang/String;

    #calls: Lcom/waze/rtalerts/RTAlertsNativeManager;->PostCommentNTV(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/waze/rtalerts/RTAlertsNativeManager;->access$8(Lcom/waze/rtalerts/RTAlertsNativeManager;ILjava/lang/String;)V

    .line 295
    return-void
.end method
