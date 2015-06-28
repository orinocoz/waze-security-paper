.class Lcom/waze/view/button/AutoResizeTextButton$1;
.super Ljava/lang/Object;
.source "AutoResizeTextButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/button/AutoResizeTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/button/AutoResizeTextButton;


# direct methods
.method constructor <init>(Lcom/waze/view/button/AutoResizeTextButton;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/button/AutoResizeTextButton$1;->this$0:Lcom/waze/view/button/AutoResizeTextButton;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/waze/view/button/AutoResizeTextButton$1;->this$0:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0}, Lcom/waze/view/button/AutoResizeTextButton;->performClick()Z

    .line 46
    return-void
.end method
