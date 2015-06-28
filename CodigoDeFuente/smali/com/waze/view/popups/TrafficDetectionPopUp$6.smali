.class Lcom/waze/view/popups/TrafficDetectionPopUp$6;
.super Ljava/lang/Object;
.source "TrafficDetectionPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/TrafficDetectionPopUp;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/TrafficDetectionPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/TrafficDetectionPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/TrafficDetectionPopUp$6;->this$0:Lcom/waze/view/popups/TrafficDetectionPopUp;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/waze/view/popups/TrafficDetectionPopUp$6;->this$0:Lcom/waze/view/popups/TrafficDetectionPopUp;

    #calls: Lcom/waze/view/popups/TrafficDetectionPopUp;->onNo()V
    invoke-static {v0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->access$2(Lcom/waze/view/popups/TrafficDetectionPopUp;)V

    .line 177
    return-void
.end method
