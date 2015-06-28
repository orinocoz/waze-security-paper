.class Lcom/waze/ifs/ui/FullScreenTooltip$3;
.super Ljava/lang/Object;
.source "FullScreenTooltip.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/waze/ifs/ui/FullScreenTooltip$3;->this$0:Lcom/waze/ifs/ui/FullScreenTooltip;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/waze/ifs/ui/FullScreenTooltip$3;->this$0:Lcom/waze/ifs/ui/FullScreenTooltip;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    #setter for: Lcom/waze/ifs/ui/FullScreenTooltip;->mShowAgain:Z
    invoke-static {v1, v0}, Lcom/waze/ifs/ui/FullScreenTooltip;->access$2(Lcom/waze/ifs/ui/FullScreenTooltip;Z)V

    .line 162
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
