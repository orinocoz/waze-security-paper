.class Lcom/waze/share/ShareActivity$5;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareActivity$5;->this$0:Lcom/waze/share/ShareActivity;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/waze/share/ShareActivity$5;->this$0:Lcom/waze/share/ShareActivity;

    #getter for: Lcom/waze/share/ShareActivity;->isNavigating:Z
    invoke-static {v0}, Lcom/waze/share/ShareActivity;->access$1(Lcom/waze/share/ShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/waze/share/ShareActivity$5;->this$0:Lcom/waze/share/ShareActivity;

    invoke-virtual {v0}, Lcom/waze/share/ShareActivity;->onShareMyDestination()V

    .line 190
    :cond_0
    return-void
.end method
