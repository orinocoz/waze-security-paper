.class Lcom/waze/widget/WazeAppWidgetNoDataActivity$2;
.super Ljava/lang/Object;
.source "WazeAppWidgetNoDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/widget/WazeAppWidgetNoDataActivity;->setOnCLickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/widget/WazeAppWidgetNoDataActivity;


# direct methods
.method constructor <init>(Lcom/waze/widget/WazeAppWidgetNoDataActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity$2;->this$0:Lcom/waze/widget/WazeAppWidgetNoDataActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity$2;->this$0:Lcom/waze/widget/WazeAppWidgetNoDataActivity;

    const-class v2, Lcom/waze/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity$2;->this$0:Lcom/waze/widget/WazeAppWidgetNoDataActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 73
    iget-object v1, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity$2;->this$0:Lcom/waze/widget/WazeAppWidgetNoDataActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->setResult(I)V

    .line 74
    iget-object v1, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity$2;->this$0:Lcom/waze/widget/WazeAppWidgetNoDataActivity;

    invoke-virtual {v1}, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->finish()V

    .line 76
    return-void
.end method
