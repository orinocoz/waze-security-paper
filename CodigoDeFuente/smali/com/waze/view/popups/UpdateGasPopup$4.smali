.class Lcom/waze/view/popups/UpdateGasPopup$4;
.super Ljava/lang/Object;
.source "UpdateGasPopup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/UpdateGasPopup;->show(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/UpdateGasPopup;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/UpdateGasPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/UpdateGasPopup$4;->this$0:Lcom/waze/view/popups/UpdateGasPopup;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 155
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/waze/NativeManager;->SetShowGasPricePopupAgain(Z)V

    .line 156
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
