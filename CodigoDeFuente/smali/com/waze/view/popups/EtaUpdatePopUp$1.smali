.class Lcom/waze/view/popups/EtaUpdatePopUp$1;
.super Ljava/lang/Object;
.source "EtaUpdatePopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/EtaUpdatePopUp;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/EtaUpdatePopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/EtaUpdatePopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/EtaUpdatePopUp$1;->this$0:Lcom/waze/view/popups/EtaUpdatePopUp;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/waze/view/popups/EtaUpdatePopUp$1;->this$0:Lcom/waze/view/popups/EtaUpdatePopUp;

    #calls: Lcom/waze/view/popups/EtaUpdatePopUp;->onClose()V
    invoke-static {v0}, Lcom/waze/view/popups/EtaUpdatePopUp;->access$0(Lcom/waze/view/popups/EtaUpdatePopUp;)V

    .line 109
    return-void
.end method
