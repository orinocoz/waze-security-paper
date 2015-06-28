.class Lcom/waze/share/UserOptionsActivity$1$1;
.super Ljava/lang/Object;
.source "UserOptionsActivity.java"

# interfaces
.implements Lcom/waze/NativeManager$IResultCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserOptionsActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/share/UserOptionsActivity$1;


# direct methods
.method constructor <init>(Lcom/waze/share/UserOptionsActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserOptionsActivity$1$1;->this$1:Lcom/waze/share/UserOptionsActivity$1;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 68
    if-ltz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/waze/share/UserOptionsActivity$1$1;->this$1:Lcom/waze/share/UserOptionsActivity$1;

    #getter for: Lcom/waze/share/UserOptionsActivity$1;->this$0:Lcom/waze/share/UserOptionsActivity;
    invoke-static {v0}, Lcom/waze/share/UserOptionsActivity$1;->access$0(Lcom/waze/share/UserOptionsActivity$1;)Lcom/waze/share/UserOptionsActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/share/UserOptionsActivity;->setResult(I)V

    .line 70
    iget-object v0, p0, Lcom/waze/share/UserOptionsActivity$1$1;->this$1:Lcom/waze/share/UserOptionsActivity$1;

    #getter for: Lcom/waze/share/UserOptionsActivity$1;->this$0:Lcom/waze/share/UserOptionsActivity;
    invoke-static {v0}, Lcom/waze/share/UserOptionsActivity$1;->access$0(Lcom/waze/share/UserOptionsActivity$1;)Lcom/waze/share/UserOptionsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/share/UserOptionsActivity;->finish()V

    .line 72
    :cond_0
    return-void
.end method
