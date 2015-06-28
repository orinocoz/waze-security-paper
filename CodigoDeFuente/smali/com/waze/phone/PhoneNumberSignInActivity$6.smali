.class Lcom/waze/phone/PhoneNumberSignInActivity$6;
.super Ljava/lang/Object;
.source "PhoneNumberSignInActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneNumberSignInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneNumberSignInActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$6;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 310
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$6;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->SendPhone(Landroid/view/View;)V

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
