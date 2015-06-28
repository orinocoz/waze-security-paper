.class Lcom/waze/main/navigate/NavigationResult$7;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->setDlgData()V
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
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$7;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 555
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$7;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x7f090696

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 556
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 557
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$7;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->addSuggestions()V
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$9(Lcom/waze/main/navigate/NavigationResult;)V

    .line 558
    return-void
.end method
