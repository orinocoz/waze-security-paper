.class public final Lcom/waze/FreeMapAppActivity;
.super Landroid/app/Activity;
.source "FreeMapAppActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/waze/FreeMapAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Add"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    .local v0, bToCreateAcc:Z
    invoke-virtual {p0}, Lcom/waze/FreeMapAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "QuestionID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, sQuestionID:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/waze/FreeMapAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "PushClicked"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, sClicked:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 41
    invoke-static {}, Lcom/waze/phone/AddressBook;->CreateAccount()V

    .line 50
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/waze/MainActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/waze/FreeMapAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 55
    const-string v4, "QuestionID"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 60
    const-string v4, "PushClicked"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    :cond_2
    invoke-virtual {p0, v1}, Lcom/waze/FreeMapAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/waze/FreeMapAppActivity;->finish()V

    .line 65
    return-void

    .line 45
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x1

    sput-boolean v4, Lcom/waze/NativeManager;->bToCreateAcc:Z

    goto :goto_0
.end method
