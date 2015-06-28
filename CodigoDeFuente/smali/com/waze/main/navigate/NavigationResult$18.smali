.class Lcom/waze/main/navigate/NavigationResult$18;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->showToolTipEtaOnce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/main/navigate/NavigationResult;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$18;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$18;->this$0:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v0}, Lcom/waze/main/navigate/NavigationResult;->tooltipDismissed()V

    .line 1242
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$18;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0904b4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1243
    return-void
.end method
