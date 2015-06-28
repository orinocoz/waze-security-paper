.class Lcom/waze/view/popups/BeepPopUp$2;
.super Ljava/lang/Object;
.source "BeepPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/BeepPopUp;->setButtonActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/BeepPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/BeepPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/BeepPopUp$2;->this$0:Lcom/waze/view/popups/BeepPopUp;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/waze/view/popups/BeepPopUp$2;->this$0:Lcom/waze/view/popups/BeepPopUp;

    #calls: Lcom/waze/view/popups/BeepPopUp;->onReply()V
    invoke-static {v0}, Lcom/waze/view/popups/BeepPopUp;->access$1(Lcom/waze/view/popups/BeepPopUp;)V

    .line 66
    return-void
.end method
