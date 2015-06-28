.class Lcom/waze/push/Alerter$3$1;
.super Ljava/lang/Object;
.source "Alerter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/push/Alerter$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/push/Alerter$3;

.field private final synthetic val$nm:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/push/Alerter$3;Lcom/waze/NativeManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/push/Alerter$3$1;->this$1:Lcom/waze/push/Alerter$3;

    iput-object p2, p0, Lcom/waze/push/Alerter$3$1;->val$nm:Lcom/waze/NativeManager;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/waze/push/Alerter$3$1;->val$nm:Lcom/waze/NativeManager;

    const-string v1, "waze://?a=pickup"

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;)Z

    .line 201
    iget-object v0, p0, Lcom/waze/push/Alerter$3$1;->val$nm:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->ClearNotifications()V

    .line 202
    return-void
.end method
