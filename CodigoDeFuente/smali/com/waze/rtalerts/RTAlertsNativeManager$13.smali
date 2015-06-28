.class Lcom/waze/rtalerts/RTAlertsNativeManager$13;
.super Ljava/lang/Object;
.source "RTAlertsNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->onFbImageDownload(II[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

.field private final synthetic val$alertId:I

.field private final synthetic val$commentId:I

.field private final synthetic val$height:I

.field private final synthetic val$imageCopy:[B

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;II[BII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput p2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;->val$alertId:I

    iput p3, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;->val$commentId:I

    iput-object p4, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;->val$imageCopy:[B

    iput p5, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;->val$width:I

    iput p6, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;->val$height:I

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 330
    iget v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;->val$alertId:I

    iget v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;->val$commentId:I

    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;->val$imageCopy:[B

    iget v3, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;->val$width:I

    iget v4, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;->val$height:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/rtalerts/RTAlertsComments;->updateFbImage(II[BII)V

    .line 331
    return-void
.end method
