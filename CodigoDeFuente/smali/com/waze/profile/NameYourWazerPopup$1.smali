.class Lcom/waze/profile/NameYourWazerPopup$1;
.super Ljava/lang/Object;
.source "NameYourWazerPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/profile/NameYourWazerPopup$1;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$1;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    #getter for: Lcom/waze/profile/NameYourWazerPopup;->mUserName:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup;->access$0(Lcom/waze/profile/NameYourWazerPopup;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$1;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    #getter for: Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup;->access$1(Lcom/waze/profile/NameYourWazerPopup;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup$1;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    #getter for: Lcom/waze/profile/NameYourWazerPopup;->mUserName:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/profile/NameYourWazerPopup;->access$0(Lcom/waze/profile/NameYourWazerPopup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$1;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    #getter for: Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup;->access$1(Lcom/waze/profile/NameYourWazerPopup;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup$1;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    #getter for: Lcom/waze/profile/NameYourWazerPopup;->mUserName:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/profile/NameYourWazerPopup;->access$0(Lcom/waze/profile/NameYourWazerPopup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 116
    :cond_0
    return-void
.end method
