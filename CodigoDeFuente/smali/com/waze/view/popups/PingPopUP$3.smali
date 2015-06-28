.class Lcom/waze/view/popups/PingPopUP$3;
.super Ljava/lang/Object;
.source "PingPopUP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/PingPopUP;->setButtonActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/PingPopUP;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/PingPopUP;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/PingPopUP$3;->this$0:Lcom/waze/view/popups/PingPopUP;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/waze/view/popups/PingPopUP$3;->this$0:Lcom/waze/view/popups/PingPopUP;

    #calls: Lcom/waze/view/popups/PingPopUP;->onReply()V
    invoke-static {v0}, Lcom/waze/view/popups/PingPopUP;->access$1(Lcom/waze/view/popups/PingPopUP;)V

    .line 72
    return-void
.end method
