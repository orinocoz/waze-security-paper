.class Lcom/waze/view/popups/AlerterPopUp$4;
.super Ljava/lang/Object;
.source "AlerterPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/AlerterPopUp;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/AlerterPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/AlerterPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/AlerterPopUp$4;->this$0:Lcom/waze/view/popups/AlerterPopUp;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/waze/view/popups/AlerterPopUp$4;->this$0:Lcom/waze/view/popups/AlerterPopUp;

    invoke-virtual {v0}, Lcom/waze/view/popups/AlerterPopUp;->hide()V

    .line 184
    return-void
.end method