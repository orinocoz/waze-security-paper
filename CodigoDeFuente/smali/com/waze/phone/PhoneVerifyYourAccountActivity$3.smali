.class Lcom/waze/phone/PhoneVerifyYourAccountActivity$3;
.super Ljava/lang/Object;
.source "PhoneVerifyYourAccountActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneVerifyYourAccountActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneVerifyYourAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity$3;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountActivity;

    .line 119
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
    .line 122
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity$3;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountActivity;

    invoke-virtual {v0, p1}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->searchClicked(Landroid/view/View;)V

    .line 124
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
