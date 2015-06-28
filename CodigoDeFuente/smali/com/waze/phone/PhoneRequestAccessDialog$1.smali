.class Lcom/waze/phone/PhoneRequestAccessDialog$1;
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
    iput-object p1, p0, Lcom/waze/phone/PhoneRequestAccessDialog$1;->this$0:Lcom/waze/phone/PhoneRequestAccessDialog;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 72
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->getLearnMorePrivacyUrlNTV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/AppService;->OpenBrowser(Ljava/lang/String;)V

    .line 73
    return-void
.end method
