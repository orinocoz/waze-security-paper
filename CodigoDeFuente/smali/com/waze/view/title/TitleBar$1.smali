.class Lcom/waze/view/title/TitleBar$1;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/title/TitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/title/TitleBar;


# direct methods
.method constructor <init>(Lcom/waze/view/title/TitleBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/title/TitleBar$1;->this$0:Lcom/waze/view/title/TitleBar;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/waze/view/title/TitleBar$1;->this$0:Lcom/waze/view/title/TitleBar;

    #getter for: Lcom/waze/view/title/TitleBar;->closeListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/waze/view/title/TitleBar;->access$0(Lcom/waze/view/title/TitleBar;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/waze/view/title/TitleBar$1;->this$0:Lcom/waze/view/title/TitleBar;

    #getter for: Lcom/waze/view/title/TitleBar;->closeListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/waze/view/title/TitleBar;->access$0(Lcom/waze/view/title/TitleBar;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/waze/view/title/TitleBar$1;->this$0:Lcom/waze/view/title/TitleBar;

    invoke-virtual {v0}, Lcom/waze/view/title/TitleBar;->onCloseClicked()V

    goto :goto_0
.end method
