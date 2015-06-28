.class Lcom/waze/ifs/ui/FullScreenTooltip$1;
.super Landroid/widget/PopupWindow;
.source "FullScreenTooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/FullScreenTooltip;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/FullScreenTooltip;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/FullScreenTooltip;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/FullScreenTooltip$1;->this$0:Lcom/waze/ifs/ui/FullScreenTooltip;

    .line 123
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip$1;->this$0:Lcom/waze/ifs/ui/FullScreenTooltip;

    #getter for: Lcom/waze/ifs/ui/FullScreenTooltip;->mDismissCalled:Z
    invoke-static {v0}, Lcom/waze/ifs/ui/FullScreenTooltip;->access$0(Lcom/waze/ifs/ui/FullScreenTooltip;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip$1;->this$0:Lcom/waze/ifs/ui/FullScreenTooltip;

    #getter for: Lcom/waze/ifs/ui/FullScreenTooltip;->mIToolTipClicked:Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;
    invoke-static {v0}, Lcom/waze/ifs/ui/FullScreenTooltip;->access$1(Lcom/waze/ifs/ui/FullScreenTooltip;)Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip$1;->this$0:Lcom/waze/ifs/ui/FullScreenTooltip;

    #getter for: Lcom/waze/ifs/ui/FullScreenTooltip;->mIToolTipClicked:Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;
    invoke-static {v0}, Lcom/waze/ifs/ui/FullScreenTooltip;->access$1(Lcom/waze/ifs/ui/FullScreenTooltip;)Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;

    move-result-object v0

    invoke-interface {v0}, Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;->onCloseClicked()V

    goto :goto_0
.end method
