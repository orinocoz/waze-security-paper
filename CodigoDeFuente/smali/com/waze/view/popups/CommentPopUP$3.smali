.class Lcom/waze/view/popups/CommentPopUP$3;
.super Ljava/lang/Object;
.source "CommentPopUP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/CommentPopUP;->setButtonActions()V
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
    iput-object p1, p0, Lcom/waze/view/popups/CommentPopUP$3;->this$0:Lcom/waze/view/popups/CommentPopUP;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/waze/view/popups/CommentPopUP$3;->this$0:Lcom/waze/view/popups/CommentPopUP;

    #calls: Lcom/waze/view/popups/CommentPopUP;->onReply()V
    invoke-static {v0}, Lcom/waze/view/popups/CommentPopUP;->access$1(Lcom/waze/view/popups/CommentPopUP;)V

    .line 70
    return-void
.end method
