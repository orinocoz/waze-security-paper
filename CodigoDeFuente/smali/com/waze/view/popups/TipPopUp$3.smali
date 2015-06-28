.class Lcom/waze/view/popups/TipPopUp$3;
.super Ljava/lang/Object;
.source "TipPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/TipPopUp;->show(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/TipPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/TipPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/TipPopUp$3;->this$0:Lcom/waze/view/popups/TipPopUp;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/waze/view/popups/TipPopUp$3;->this$0:Lcom/waze/view/popups/TipPopUp;

    #calls: Lcom/waze/view/popups/TipPopUp;->onClose()V
    invoke-static {v0}, Lcom/waze/view/popups/TipPopUp;->access$0(Lcom/waze/view/popups/TipPopUp;)V

    .line 158
    return-void
.end method
