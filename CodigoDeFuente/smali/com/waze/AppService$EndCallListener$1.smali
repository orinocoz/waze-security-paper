.class Lcom/waze/AppService$EndCallListener$1;
.super Ljava/lang/Object;
.source "AppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/AppService$EndCallListener;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/AppService$EndCallListener;


# direct methods
.method constructor <init>(Lcom/waze/AppService$EndCallListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/AppService$EndCallListener$1;->this$1:Lcom/waze/AppService$EndCallListener;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waze/FreeMapAppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/waze/AppService$EndCallListener$1;->this$1:Lcom/waze/AppService$EndCallListener;

    #getter for: Lcom/waze/AppService$EndCallListener;->this$0:Lcom/waze/AppService;
    invoke-static {v1}, Lcom/waze/AppService$EndCallListener;->access$1(Lcom/waze/AppService$EndCallListener;)Lcom/waze/AppService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/AppService;->startActivity(Landroid/content/Intent;)V

    .line 202
    return-void
.end method
