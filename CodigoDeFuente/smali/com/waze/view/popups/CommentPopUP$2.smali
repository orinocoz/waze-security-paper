.class Lcom/waze/view/popups/CommentPopUP$2;
.super Ljava/lang/Object;
.source "CommentPopUP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/CommentPopUP;->onFlag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/CommentPopUP;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/CommentPopUP;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/CommentPopUP$2;->this$0:Lcom/waze/view/popups/CommentPopUP;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/popups/CommentPopUP$2;->this$0:Lcom/waze/view/popups/CommentPopUP;

    #getter for: Lcom/waze/view/popups/CommentPopUP;->mCommentData:Lcom/waze/rtalerts/RTAlertsCommentData;
    invoke-static {v1}, Lcom/waze/view/popups/CommentPopUP;->access$0(Lcom/waze/view/popups/CommentPopUP;)Lcom/waze/rtalerts/RTAlertsCommentData;

    move-result-object v1

    iget v1, v1, Lcom/waze/rtalerts/RTAlertsCommentData;->mAlertID:I

    iget-object v2, p0, Lcom/waze/view/popups/CommentPopUP$2;->this$0:Lcom/waze/view/popups/CommentPopUP;

    #getter for: Lcom/waze/view/popups/CommentPopUP;->mCommentData:Lcom/waze/rtalerts/RTAlertsCommentData;
    invoke-static {v2}, Lcom/waze/view/popups/CommentPopUP;->access$0(Lcom/waze/view/popups/CommentPopUP;)Lcom/waze/rtalerts/RTAlertsCommentData;

    move-result-object v2

    iget v2, v2, Lcom/waze/rtalerts/RTAlertsCommentData;->mCommentID:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->ReportAbusNTV(II)V

    .line 61
    return-void
.end method
