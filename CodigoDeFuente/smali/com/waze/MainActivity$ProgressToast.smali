.class final Lcom/waze/MainActivity$ProgressToast;
.super Lcom/waze/ToastThread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProgressToast"
.end annotation


# instance fields
.field private mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

.field final synthetic this$0:Lcom/waze/MainActivity;


# direct methods
.method public constructor <init>(Lcom/waze/MainActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/waze/MainActivity$ProgressToast;->this$0:Lcom/waze/MainActivity;

    .line 892
    const-string v0, "Progress Toast"

    invoke-direct {p0, v0}, Lcom/waze/ToastThread;-><init>(Ljava/lang/String;)V

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/MainActivity$ProgressToast;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    .line 893
    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 0

    .prologue
    .line 915
    invoke-super {p0}, Lcom/waze/ToastThread;->cancel()V

    .line 916
    return-void
.end method

.method public show()Landroid/widget/Toast;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 900
    iget-object v0, p0, Lcom/waze/MainActivity$ProgressToast;->this$0:Lcom/waze/MainActivity;

    .line 901
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 902
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f0300bc

    .line 903
    const v4, 0x7f090559

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 902
    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 904
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f09055a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/map/ProgressAnimation;

    iput-object v4, p0, Lcom/waze/MainActivity$ProgressToast;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    .line 905
    iget-object v4, p0, Lcom/waze/MainActivity$ProgressToast;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    invoke-virtual {v4}, Lcom/waze/view/map/ProgressAnimation;->start()V

    .line 906
    new-instance v3, Landroid/widget/Toast;

    invoke-direct {v3, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 907
    .local v3, toast:Landroid/widget/Toast;
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 908
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 909
    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 910
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 911
    return-object v3
.end method

.method public stopToast()V
    .locals 2

    .prologue
    .line 919
    const-string v0, "WAZE"

    const-string v1, "Cancelling progress toast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Lcom/waze/MainActivity$ProgressToast;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/waze/MainActivity$ProgressToast;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->stop()V

    .line 922
    :cond_0
    invoke-super {p0}, Lcom/waze/ToastThread;->stopToast()V

    .line 923
    return-void
.end method
