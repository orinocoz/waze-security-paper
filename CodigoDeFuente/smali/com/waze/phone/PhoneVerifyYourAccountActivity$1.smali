.class Lcom/waze/phone/PhoneVerifyYourAccountActivity$1;
.super Ljava/lang/Object;
.source "PhoneVerifyYourAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity$1;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountActivity;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity$1;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountActivity;

    invoke-virtual {v0, p1}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->searchClicked(Landroid/view/View;)V

    .line 109
    return-void
.end method
