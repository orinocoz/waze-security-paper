.class Lcom/waze/profile/LaterActivity$2;
.super Ljava/lang/Object;
.source "LaterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/LaterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/LaterActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/LaterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/LaterActivity$2;->this$0:Lcom/waze/profile/LaterActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 54
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 55
    const-string v1, "START_DONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/NativeManager;->logAnalytics(Ljava/lang/String;ZZ)V

    .line 56
    iget-object v0, p0, Lcom/waze/profile/LaterActivity$2;->this$0:Lcom/waze/profile/LaterActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/waze/profile/LaterActivity;->setResult(I)V

    .line 57
    iget-object v0, p0, Lcom/waze/profile/LaterActivity$2;->this$0:Lcom/waze/profile/LaterActivity;

    invoke-virtual {v0}, Lcom/waze/profile/LaterActivity;->finish()V

    .line 58
    return-void
.end method
