.class Lcom/waze/navigate/NavigateActivity$9;
.super Ljava/lang/Object;
.source "NavigateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/NavigateActivity;->addressItemClicked(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity$9;->this$0:Lcom/waze/navigate/NavigateActivity;

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$9;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/NavigateActivity;->access$6(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 681
    return-void
.end method
