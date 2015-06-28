.class Lcom/waze/phone/PhoneRequestAccessDialog$3;
.super Ljava/lang/Object;
.source "PhoneRequestAccessDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneRequestAccessDialog;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneRequestAccessDialog;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneRequestAccessDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneRequestAccessDialog$3;->this$0:Lcom/waze/phone/PhoneRequestAccessDialog;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    const-string v0, "ALLOW_CONTACTS_ACCESS_CONTINUE_CLICK"

    invoke-static {v0, v2, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/waze/phone/AddressBook;->AccountExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/waze/phone/AddressBook;->CreateAccount()V

    .line 94
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->setContactsAccess(Z)V

    .line 96
    iget-object v0, p0, Lcom/waze/phone/PhoneRequestAccessDialog$3;->this$0:Lcom/waze/phone/PhoneRequestAccessDialog;

    iput-boolean v1, v0, Lcom/waze/phone/PhoneRequestAccessDialog;->mbOkClicked:Z

    .line 97
    iget-object v0, p0, Lcom/waze/phone/PhoneRequestAccessDialog$3;->this$0:Lcom/waze/phone/PhoneRequestAccessDialog;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneRequestAccessDialog;->dismiss()V

    .line 98
    return-void
.end method
