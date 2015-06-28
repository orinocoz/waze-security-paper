.class Lcom/waze/view/navbar/TrafficBarView$1;
.super Ljava/lang/Object;
.source "TrafficBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/navbar/TrafficBarView;->appearifyTheTip(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/navbar/TrafficBarView;


# direct methods
.method constructor <init>(Lcom/waze/view/navbar/TrafficBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/navbar/TrafficBarView$1;->this$0:Lcom/waze/view/navbar/TrafficBarView;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView$1;->this$0:Lcom/waze/view/navbar/TrafficBarView;

    #calls: Lcom/waze/view/navbar/TrafficBarView;->disappearifyTheTip()V
    invoke-static {v0}, Lcom/waze/view/navbar/TrafficBarView;->access$0(Lcom/waze/view/navbar/TrafficBarView;)V

    .line 110
    return-void
.end method
