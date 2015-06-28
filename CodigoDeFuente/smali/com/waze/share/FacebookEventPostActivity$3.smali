.class Lcom/waze/share/FacebookEventPostActivity$3;
.super Ljava/lang/Object;
.source "FacebookEventPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/FacebookEventPostActivity;->onPostResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/FacebookEventPostActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/FacebookEventPostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/FacebookEventPostActivity$3;->this$0:Lcom/waze/share/FacebookEventPostActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity$3;->this$0:Lcom/waze/share/FacebookEventPostActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/share/FacebookEventPostActivity;->setResult(I)V

    .line 122
    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity$3;->this$0:Lcom/waze/share/FacebookEventPostActivity;

    invoke-virtual {v0}, Lcom/waze/share/FacebookEventPostActivity;->finish()V

    .line 123
    return-void
.end method
