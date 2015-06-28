.class Lcom/waze/phone/ChooseCountryPhoneActivity$1;
.super Ljava/lang/Object;
.source "ChooseCountryPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/ChooseCountryPhoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/ChooseCountryPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity$1;->this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/waze/phone/ChooseCountryPhoneActivity$1;->this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/phone/ChooseCountryPhoneActivity;->setResult(I)V

    .line 35
    iget-object v0, p0, Lcom/waze/phone/ChooseCountryPhoneActivity$1;->this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;

    invoke-virtual {v0}, Lcom/waze/phone/ChooseCountryPhoneActivity;->finish()V

    .line 36
    return-void
.end method
