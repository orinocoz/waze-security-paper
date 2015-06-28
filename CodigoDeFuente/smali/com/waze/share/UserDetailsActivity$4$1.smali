.class Lcom/waze/share/UserDetailsActivity$4$1;
.super Ljava/lang/Object;
.source "UserDetailsActivity.java"

# interfaces
.implements Lcom/waze/NativeManager$IResultCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserDetailsActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/share/UserDetailsActivity$4;


# direct methods
.method constructor <init>(Lcom/waze/share/UserDetailsActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$4$1;->this$1:Lcom/waze/share/UserDetailsActivity$4;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 277
    if-ltz p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$4$1;->this$1:Lcom/waze/share/UserDetailsActivity$4;

    #getter for: Lcom/waze/share/UserDetailsActivity$4;->this$0:Lcom/waze/share/UserDetailsActivity;
    invoke-static {v0}, Lcom/waze/share/UserDetailsActivity$4;->access$0(Lcom/waze/share/UserDetailsActivity$4;)Lcom/waze/share/UserDetailsActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->setResult(I)V

    .line 279
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$4$1;->this$1:Lcom/waze/share/UserDetailsActivity$4;

    #getter for: Lcom/waze/share/UserDetailsActivity$4;->this$0:Lcom/waze/share/UserDetailsActivity;
    invoke-static {v0}, Lcom/waze/share/UserDetailsActivity$4;->access$0(Lcom/waze/share/UserDetailsActivity$4;)Lcom/waze/share/UserDetailsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/share/UserDetailsActivity;->finish()V

    .line 281
    :cond_0
    return-void
.end method
