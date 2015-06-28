.class Lcom/waze/view/web/SimpleWebActivity$3;
.super Ljava/lang/Object;
.source "SimpleWebActivity.java"

# interfaces
.implements Lcom/waze/WzWebView$WebViewPageProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/web/SimpleWebActivity;


# direct methods
.method constructor <init>(Lcom/waze/view/web/SimpleWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/web/SimpleWebActivity$3;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebViewPageFinished()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity$3;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    #getter for: Lcom/waze/view/web/SimpleWebActivity;->mWebViewLoadAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/web/SimpleWebActivity;->access$1(Lcom/waze/view/web/SimpleWebActivity;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->stop()V

    .line 62
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity$3;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    #getter for: Lcom/waze/view/web/SimpleWebActivity;->mWebViewLoadAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/web/SimpleWebActivity;->access$1(Lcom/waze/view/web/SimpleWebActivity;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity$3;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    #getter for: Lcom/waze/view/web/SimpleWebActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;
    invoke-static {v0}, Lcom/waze/view/web/SimpleWebActivity;->access$0(Lcom/waze/view/web/SimpleWebActivity;)Lcom/waze/view/title/TitleBar;

    move-result-object v0

    const v1, 0x7f090740

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void
.end method

.method public onWebViewPageStarted()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity$3;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    #getter for: Lcom/waze/view/web/SimpleWebActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;
    invoke-static {v0}, Lcom/waze/view/web/SimpleWebActivity;->access$0(Lcom/waze/view/web/SimpleWebActivity;)Lcom/waze/view/title/TitleBar;

    move-result-object v0

    const v1, 0x7f090740

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity$3;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    #getter for: Lcom/waze/view/web/SimpleWebActivity;->mWebViewLoadAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/web/SimpleWebActivity;->access$1(Lcom/waze/view/web/SimpleWebActivity;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity$3;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    #getter for: Lcom/waze/view/web/SimpleWebActivity;->mWebViewLoadAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/web/SimpleWebActivity;->access$1(Lcom/waze/view/web/SimpleWebActivity;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->start()V

    .line 57
    return-void
.end method
