.class Lcom/waze/rtalerts/RTAlertsCommentsEditor$2;
.super Ljava/lang/Object;
.source "RTAlertsCommentsEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsCommentsEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsCommentsEditor;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsCommentsEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor$2;->this$0:Lcom/waze/rtalerts/RTAlertsCommentsEditor;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor$2;->this$0:Lcom/waze/rtalerts/RTAlertsCommentsEditor;

    invoke-virtual {v0, p1}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->speechRecognitionClicked(Landroid/view/View;)V

    .line 79
    return-void
.end method
