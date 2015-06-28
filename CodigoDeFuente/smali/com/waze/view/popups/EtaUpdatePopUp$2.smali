.class Lcom/waze/view/popups/EtaUpdatePopUp$2;
.super Ljava/lang/Object;
.source "EtaUpdatePopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/EtaUpdatePopUp;->show(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    iput-object p1, p0, Lcom/waze/view/popups/EtaUpdatePopUp$2;->this$0:Lcom/waze/view/popups/EtaUpdatePopUp;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const v1, 0x7f090296

    .line 132
    iget-object v0, p0, Lcom/waze/view/popups/EtaUpdatePopUp$2;->this$0:Lcom/waze/view/popups/EtaUpdatePopUp;

    invoke-virtual {v0, v1}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 133
    iget-object v0, p0, Lcom/waze/view/popups/EtaUpdatePopUp$2;->this$0:Lcom/waze/view/popups/EtaUpdatePopUp;

    invoke-virtual {v0, v1}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 134
    return-void
.end method
