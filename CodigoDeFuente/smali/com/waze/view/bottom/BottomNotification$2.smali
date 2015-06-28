.class Lcom/waze/view/bottom/BottomNotification$2;
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
    iput-object p1, p0, Lcom/waze/view/bottom/BottomNotification$2;->this$0:Lcom/waze/view/bottom/BottomNotification;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/view/bottom/BottomNotification$2;->this$0:Lcom/waze/view/bottom/BottomNotification;

    invoke-virtual {v1}, Lcom/waze/view/bottom/BottomNotification;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waze/rtalerts/RTAlertsMenu;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    const v2, 0x8005

    invoke-virtual {v1, v0, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    :cond_0
    return-void
.end method
