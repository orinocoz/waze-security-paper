.class Lcom/waze/view/title/TitleBarTextButton$2;
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
    iput-object p1, p0, Lcom/waze/view/title/TitleBarTextButton$2;->this$0:Lcom/waze/view/title/TitleBarTextButton;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton$2;->this$0:Lcom/waze/view/title/TitleBarTextButton;

    #getter for: Lcom/waze/view/title/TitleBarTextButton;->mActivity:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v0}, Lcom/waze/view/title/TitleBarTextButton;->access$1(Lcom/waze/view/title/TitleBarTextButton;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton$2;->this$0:Lcom/waze/view/title/TitleBarTextButton;

    #getter for: Lcom/waze/view/title/TitleBarTextButton;->mActivity:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v0}, Lcom/waze/view/title/TitleBarTextButton;->access$1(Lcom/waze/view/title/TitleBarTextButton;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 80
    :cond_0
    return-void
.end method
