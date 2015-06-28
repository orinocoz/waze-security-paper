.class Lcom/waze/share/UserOptionsActivity$3;
.super Ljava/lang/Object;
.source "UserOptionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserOptionsActivity;->showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/UserOptionsActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/UserOptionsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserOptionsActivity$3;->this$0:Lcom/waze/share/UserOptionsActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/waze/share/UserOptionsActivity$3;->this$0:Lcom/waze/share/UserOptionsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/share/UserOptionsActivity;->setResult(I)V

    .line 107
    iget-object v0, p0, Lcom/waze/share/UserOptionsActivity$3;->this$0:Lcom/waze/share/UserOptionsActivity;

    invoke-virtual {v0}, Lcom/waze/share/UserOptionsActivity;->finish()V

    .line 108
    return-void
.end method
