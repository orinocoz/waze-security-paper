.class Lcom/waze/view/popups/SharePopup$2;
.super Ljava/lang/Object;
.source "SharePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/SharePopup;->setButtonActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/SharePopup;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/SharePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/SharePopup$2;->this$0:Lcom/waze/view/popups/SharePopup;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/waze/view/popups/SharePopup$2;->this$0:Lcom/waze/view/popups/SharePopup;

    #calls: Lcom/waze/view/popups/SharePopup;->onReply()V
    invoke-static {v0}, Lcom/waze/view/popups/SharePopup;->access$1(Lcom/waze/view/popups/SharePopup;)V

    .line 82
    return-void
.end method
