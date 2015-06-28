.class Lcom/waze/view/popups/ThumbsUpPopUP$1;
.super Ljava/lang/Object;
.source "ThumbsUpPopUP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/ThumbsUpPopUP;->onReply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/ThumbsUpPopUP;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/ThumbsUpPopUP;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/ThumbsUpPopUP$1;->this$0:Lcom/waze/view/popups/ThumbsUpPopUP;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-static {}, Lcom/waze/view/popups/ThumbsUpPopUP;->access$0()Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    move-result-object v1

    iget v1, v1, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mAlertID:I

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->sendCommentNTV(I)V

    .line 58
    return-void
.end method
