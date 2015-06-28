.class Lcom/waze/share/ShareActivity$1;
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
    iput-object p1, p0, Lcom/waze/share/ShareActivity$1;->this$0:Lcom/waze/share/ShareActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 79
    sget-boolean v0, Lcom/waze/navigate/social/ShareDriveActivity;->bIsFollow:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/waze/share/ShareActivity$1;->this$0:Lcom/waze/share/ShareActivity;

    #getter for: Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/share/ShareActivity;->access$0(Lcom/waze/share/ShareActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->StopFollow()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/waze/share/ShareActivity$1;->this$0:Lcom/waze/share/ShareActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/share/ShareActivity;->setResult(I)V

    .line 84
    iget-object v0, p0, Lcom/waze/share/ShareActivity$1;->this$0:Lcom/waze/share/ShareActivity;

    invoke-virtual {v0}, Lcom/waze/share/ShareActivity;->finish()V

    .line 85
    return-void
.end method
