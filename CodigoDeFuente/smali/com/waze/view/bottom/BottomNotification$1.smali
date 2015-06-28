.class Lcom/waze/view/bottom/BottomNotification$1;
.super Ljava/lang/Object;
.source "BottomNotification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/bottom/BottomNotification;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/bottom/BottomNotification;


# direct methods
.method constructor <init>(Lcom/waze/view/bottom/BottomNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/bottom/BottomNotification$1;->this$0:Lcom/waze/view/bottom/BottomNotification;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$1;->this$0:Lcom/waze/view/bottom/BottomNotification;

    #getter for: Lcom/waze/view/bottom/BottomNotification;->mListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/waze/view/bottom/BottomNotification;->access$0(Lcom/waze/view/bottom/BottomNotification;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$1;->this$0:Lcom/waze/view/bottom/BottomNotification;

    #getter for: Lcom/waze/view/bottom/BottomNotification;->mListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/waze/view/bottom/BottomNotification;->access$0(Lcom/waze/view/bottom/BottomNotification;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$1;->this$0:Lcom/waze/view/bottom/BottomNotification;

    #calls: Lcom/waze/view/bottom/BottomNotification;->close()V
    invoke-static {v0}, Lcom/waze/view/bottom/BottomNotification;->access$1(Lcom/waze/view/bottom/BottomNotification;)V

    .line 75
    return-void
.end method
