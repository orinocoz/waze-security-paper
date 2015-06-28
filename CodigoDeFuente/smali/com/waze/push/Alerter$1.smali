.class Lcom/waze/push/Alerter$1;
.super Ljava/lang/Object;
.source "Alerter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/push/Alerter;
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
    iput-object p1, p0, Lcom/waze/push/Alerter$1;->this$0:Lcom/waze/push/Alerter;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/waze/push/Alerter;->instance()Lcom/waze/push/Alerter;

    move-result-object v0

    .line 144
    .local v0, alerter:Lcom/waze/push/Alerter;
    #calls: Lcom/waze/push/Alerter;->showPickUpMessage()V
    invoke-static {v0}, Lcom/waze/push/Alerter;->access$0(Lcom/waze/push/Alerter;)V

    .line 145
    return-void
.end method
