.class public Lcom/waze/rtalerts/RTAlertsGroupActivity;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "RTAlertsGroupActivity.java"


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/waze/view/web/SimpleWebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 42
    invoke-virtual {p0, p2}, Lcom/waze/rtalerts/RTAlertsGroupActivity;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsGroupActivity;->finish()V

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 19
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 21
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/rtalerts/RTAlertsGroupActivity;->mUrl:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsGroupActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/waze/rtalerts/RTAlertsGroupActivity;->onUrl(Ljava/lang/String;)V

    .line 26
    :cond_0
    const v1, 0x7f07019b

    invoke-virtual {p0, v1}, Lcom/waze/rtalerts/RTAlertsGroupActivity;->setTitleText(I)V

    .line 28
    return-void
.end method

.method public onUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsGroupActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/waze/rtalerts/RTAlertsGroupActivity;->loadUrl(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onWebViewSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 33
    return-void
.end method
