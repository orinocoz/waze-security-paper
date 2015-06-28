.class Lcom/waze/profile/NameYourWazerPopup$4$1;
.super Ljava/util/TimerTask;
.source "NameYourWazerPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/NameYourWazerPopup$4;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/profile/NameYourWazerPopup$4;


# direct methods
.method constructor <init>(Lcom/waze/profile/NameYourWazerPopup$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/NameYourWazerPopup$4$1;->this$1:Lcom/waze/profile/NameYourWazerPopup$4;

    .line 150
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/NameYourWazerPopup$4$1;)Lcom/waze/profile/NameYourWazerPopup$4;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4$1;->this$1:Lcom/waze/profile/NameYourWazerPopup$4;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/waze/profile/NameYourWazerPopup$4$1$1;

    invoke-direct {v1, p0}, Lcom/waze/profile/NameYourWazerPopup$4$1$1;-><init>(Lcom/waze/profile/NameYourWazerPopup$4$1;)V

    invoke-virtual {v0, v1}, Lcom/waze/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method
