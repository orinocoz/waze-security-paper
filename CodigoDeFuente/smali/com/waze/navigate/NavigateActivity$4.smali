.class Lcom/waze/navigate/NavigateActivity$4;
.super Ljava/lang/Object;
.source "NavigateActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/NavigateActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/NavigateActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/NavigateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity$4;->this$0:Lcom/waze/navigate/NavigateActivity;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 383
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "a:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ke:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$4;->this$0:Lcom/waze/navigate/NavigateActivity;

    invoke-virtual {v0, p1}, Lcom/waze/navigate/NavigateActivity;->searchClicked(Landroid/view/View;)V

    .line 387
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 388
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$4;->this$0:Lcom/waze/navigate/NavigateActivity;

    invoke-virtual {v0, p1}, Lcom/waze/navigate/NavigateActivity;->searchClicked(Landroid/view/View;)V

    .line 390
    :cond_1
    return v3
.end method
