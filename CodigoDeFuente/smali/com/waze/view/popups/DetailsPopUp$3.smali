.class Lcom/waze/view/popups/DetailsPopUp$3;
.super Ljava/lang/Object;
.source "DetailsPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/DetailsPopUp;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/DetailsPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/DetailsPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/DetailsPopUp$3;->this$0:Lcom/waze/view/popups/DetailsPopUp;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/waze/view/popups/DetailsPopUp$3;->this$0:Lcom/waze/view/popups/DetailsPopUp;

    #calls: Lcom/waze/view/popups/DetailsPopUp;->onMoreAction()V
    invoke-static {v0}, Lcom/waze/view/popups/DetailsPopUp;->access$0(Lcom/waze/view/popups/DetailsPopUp;)V

    .line 90
    return-void
.end method
