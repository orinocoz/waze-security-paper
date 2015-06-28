.class Lcom/waze/push/Alerter$3;
.super Ljava/lang/Object;
.source "Alerter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/push/Alerter;->showPickUpMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/push/Alerter;


# direct methods
.method constructor <init>(Lcom/waze/push/Alerter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/push/Alerter$3;->this$0:Lcom/waze/push/Alerter;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 193
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 195
    .local v0, nm:Lcom/waze/NativeManager;
    if-ne p2, v2, :cond_0

    .line 197
    new-instance v1, Lcom/waze/push/Alerter$3$1;

    invoke-direct {v1, p0, v0}, Lcom/waze/push/Alerter$3$1;-><init>(Lcom/waze/push/Alerter$3;Lcom/waze/NativeManager;)V

    .line 204
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 210
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->SetPickUpLater(Z)V

    goto :goto_0
.end method
