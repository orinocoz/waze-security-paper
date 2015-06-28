.class Lcom/waze/profile/NameYourWazerPopup$4;
.super Ljava/lang/Object;
.source "NameYourWazerPopup.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/NameYourWazerPopup;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/NameYourWazerPopup;

.field private timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/waze/profile/NameYourWazerPopup;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/NameYourWazerPopup$4;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/profile/NameYourWazerPopup$4;)Lcom/waze/profile/NameYourWazerPopup;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const v3, 0x7f09044e

    .line 145
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    invoke-virtual {v0, v3}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    #getter for: Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/profile/NameYourWazerPopup;->access$3(Lcom/waze/profile/NameYourWazerPopup;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CHECKING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    invoke-virtual {v0, v3}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    const v1, 0x7f09044f

    invoke-virtual {v0, v1}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 149
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4;->timer:Ljava/util/Timer;

    .line 150
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/waze/profile/NameYourWazerPopup$4$1;

    invoke-direct {v1, p0}, Lcom/waze/profile/NameYourWazerPopup$4$1;-><init>(Lcom/waze/profile/NameYourWazerPopup$4;)V

    .line 166
    const-wide/16 v2, 0x1f4

    .line 150
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 168
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 171
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "arg0"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    const/4 v1, 0x0

    #setter for: Lcom/waze/profile/NameYourWazerPopup;->IsValid:Z
    invoke-static {v0, v1}, Lcom/waze/profile/NameYourWazerPopup;->access$5(Lcom/waze/profile/NameYourWazerPopup;Z)V

    .line 178
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/waze/profile/NameYourWazerPopup;->mText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/profile/NameYourWazerPopup;->access$6(Lcom/waze/profile/NameYourWazerPopup;Ljava/lang/String;)V

    .line 181
    return-void
.end method
