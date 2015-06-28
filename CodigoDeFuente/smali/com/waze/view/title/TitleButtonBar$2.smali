.class Lcom/waze/view/title/TitleButtonBar$2;
.super Ljava/lang/Object;
.source "TitleButtonBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/title/TitleButtonBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/title/TitleButtonBar;


# direct methods
.method constructor <init>(Lcom/waze/view/title/TitleButtonBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/title/TitleButtonBar$2;->this$0:Lcom/waze/view/title/TitleButtonBar;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar$2;->this$0:Lcom/waze/view/title/TitleButtonBar;

    #getter for: Lcom/waze/view/title/TitleButtonBar;->closeListener2:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/waze/view/title/TitleButtonBar;->access$1(Lcom/waze/view/title/TitleButtonBar;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar$2;->this$0:Lcom/waze/view/title/TitleButtonBar;

    #getter for: Lcom/waze/view/title/TitleButtonBar;->closeListener2:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/waze/view/title/TitleButtonBar;->access$1(Lcom/waze/view/title/TitleButtonBar;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar$2;->this$0:Lcom/waze/view/title/TitleButtonBar;

    invoke-virtual {v0}, Lcom/waze/view/title/TitleButtonBar;->onCloseClicked()V

    goto :goto_0
.end method
