.class Lcom/waze/ifs/ui/FullScreenTooltip$2;
.super Ljava/lang/Object;
.source "FullScreenTooltip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/waze/ifs/ui/FullScreenTooltip;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/FullScreenTooltip$2;->this$0:Lcom/waze/ifs/ui/FullScreenTooltip;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip$2;->this$0:Lcom/waze/ifs/ui/FullScreenTooltip;

    #getter for: Lcom/waze/ifs/ui/FullScreenTooltip;->mIToolTipClicked:Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;
    invoke-static {v0}, Lcom/waze/ifs/ui/FullScreenTooltip;->access$1(Lcom/waze/ifs/ui/FullScreenTooltip;)Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip$2;->this$0:Lcom/waze/ifs/ui/FullScreenTooltip;

    #getter for: Lcom/waze/ifs/ui/FullScreenTooltip;->mIToolTipClicked:Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;
    invoke-static {v0}, Lcom/waze/ifs/ui/FullScreenTooltip;->access$1(Lcom/waze/ifs/ui/FullScreenTooltip;)Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;

    move-result-object v0

    invoke-interface {v0}, Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;->onCloseClicked()V

    .line 153
    :cond_0
    return-void
.end method
