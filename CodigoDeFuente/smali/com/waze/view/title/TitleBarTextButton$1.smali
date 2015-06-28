.class Lcom/waze/view/title/TitleBarTextButton$1;
.super Ljava/lang/Object;
.source "TitleBarTextButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/title/TitleBarTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/title/TitleBarTextButton;


# direct methods
.method constructor <init>(Lcom/waze/view/title/TitleBarTextButton;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/title/TitleBarTextButton$1;->this$0:Lcom/waze/view/title/TitleBarTextButton;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton$1;->this$0:Lcom/waze/view/title/TitleBarTextButton;

    #getter for: Lcom/waze/view/title/TitleBarTextButton;->closeListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/waze/view/title/TitleBarTextButton;->access$0(Lcom/waze/view/title/TitleBarTextButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton$1;->this$0:Lcom/waze/view/title/TitleBarTextButton;

    #getter for: Lcom/waze/view/title/TitleBarTextButton;->closeListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/waze/view/title/TitleBarTextButton;->access$0(Lcom/waze/view/title/TitleBarTextButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton$1;->this$0:Lcom/waze/view/title/TitleBarTextButton;

    invoke-virtual {v0}, Lcom/waze/view/title/TitleBarTextButton;->onCloseClicked()V

    goto :goto_0
.end method
