.class Lcom/waze/phone/PhoneVerifyYourNumbersActivity$3;
.super Ljava/lang/Object;
.source "PhoneVerifyYourNumbersActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$3;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    .line 237
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
    .line 241
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$3;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mContinueButton:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$6(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
