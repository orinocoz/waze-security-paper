.class Lcom/waze/profile/NameYourWazerPopup$3;
.super Ljava/lang/Object;
.source "NameYourWazerPopup.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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


# direct methods
.method constructor <init>(Lcom/waze/profile/NameYourWazerPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/NameYourWazerPopup$3;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 133
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$3;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    #calls: Lcom/waze/profile/NameYourWazerPopup;->onContinueClicked()V
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup;->access$2(Lcom/waze/profile/NameYourWazerPopup;)V

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
