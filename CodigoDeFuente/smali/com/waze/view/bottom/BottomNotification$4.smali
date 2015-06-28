.class Lcom/waze/view/bottom/BottomNotification$4;
.super Ljava/lang/Object;
.source "BottomNotification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/bottom/BottomNotification;->setListener(Lcom/waze/view/bottom/BottomNotificationOnClickIntent;)V
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
    iput-object p1, p0, Lcom/waze/view/bottom/BottomNotification$4;->this$0:Lcom/waze/view/bottom/BottomNotification;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 121
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/bottom/BottomNotification$4;->this$0:Lcom/waze/view/bottom/BottomNotification;

    #getter for: Lcom/waze/view/bottom/BottomNotification;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/waze/view/bottom/BottomNotification;->access$2(Lcom/waze/view/bottom/BottomNotification;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->launchMyWaze(Landroid/content/Context;)V

    .line 122
    return-void
.end method
