.class Lcom/waze/settings/AccountAndLoginActivity$3;
.super Ljava/lang/Object;
.source "AccountAndLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/AccountAndLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/AccountAndLoginActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/AccountAndLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/AccountAndLoginActivity$3;->this$0:Lcom/waze/settings/AccountAndLoginActivity;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 127
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/AccountAndLoginActivity$3;->this$0:Lcom/waze/settings/AccountAndLoginActivity;

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;)V

    .line 128
    return-void
.end method
