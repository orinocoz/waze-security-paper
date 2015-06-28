.class Lcom/waze/phone/PhoneRequestAccessDialog$2;
.super Ljava/lang/Object;
.source "PhoneRequestAccessDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneRequestAccessDialog;->initFieldsTexts()V
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
    iput-object p1, p0, Lcom/waze/phone/PhoneRequestAccessDialog$2;->this$0:Lcom/waze/phone/PhoneRequestAccessDialog;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/waze/phone/PhoneRequestAccessDialog$2;->this$0:Lcom/waze/phone/PhoneRequestAccessDialog;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneRequestAccessDialog;->dismiss()V

    .line 81
    return-void
.end method
