.class Lcom/waze/view/popups/ThumbsUpPopUP$2;
.super Ljava/lang/Object;
.source "ThumbsUpPopUP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/ThumbsUpPopUP;->setButtonActions()V
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
    iput-object p1, p0, Lcom/waze/view/popups/ThumbsUpPopUP$2;->this$0:Lcom/waze/view/popups/ThumbsUpPopUP;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/waze/view/popups/ThumbsUpPopUP$2;->this$0:Lcom/waze/view/popups/ThumbsUpPopUP;

    #calls: Lcom/waze/view/popups/ThumbsUpPopUP;->onReply()V
    invoke-static {v0}, Lcom/waze/view/popups/ThumbsUpPopUP;->access$1(Lcom/waze/view/popups/ThumbsUpPopUP;)V

    .line 68
    return-void
.end method
