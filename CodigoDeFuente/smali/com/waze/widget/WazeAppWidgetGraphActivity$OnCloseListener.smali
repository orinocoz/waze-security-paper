.class final Lcom/waze/widget/WazeAppWidgetGraphActivity$OnCloseListener;
.super Ljava/lang/Object;
.source "WazeAppWidgetGraphActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/widget/WazeAppWidgetGraphActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnCloseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/widget/WazeAppWidgetGraphActivity;


# direct methods
.method private constructor <init>(Lcom/waze/widget/WazeAppWidgetGraphActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/waze/widget/WazeAppWidgetGraphActivity$OnCloseListener;->this$0:Lcom/waze/widget/WazeAppWidgetGraphActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/widget/WazeAppWidgetGraphActivity;Lcom/waze/widget/WazeAppWidgetGraphActivity$OnCloseListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/waze/widget/WazeAppWidgetGraphActivity$OnCloseListener;-><init>(Lcom/waze/widget/WazeAppWidgetGraphActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "aView"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/waze/widget/WazeAppWidgetGraphActivity$OnCloseListener;->this$0:Lcom/waze/widget/WazeAppWidgetGraphActivity;

    invoke-virtual {v0}, Lcom/waze/widget/WazeAppWidgetGraphActivity;->finish()V

    .line 49
    return-void
.end method
