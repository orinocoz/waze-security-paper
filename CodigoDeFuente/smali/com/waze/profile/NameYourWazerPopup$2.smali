.class Lcom/waze/profile/NameYourWazerPopup$2;
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
    iput-object p1, p0, Lcom/waze/profile/NameYourWazerPopup$2;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$2;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    #calls: Lcom/waze/profile/NameYourWazerPopup;->onContinueClicked()V
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup;->access$2(Lcom/waze/profile/NameYourWazerPopup;)V

    .line 128
    return-void
.end method
