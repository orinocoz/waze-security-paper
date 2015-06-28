.class Lcom/waze/navigate/AddFavoriteNameActivity$1;
.super Ljava/lang/Object;
.source "AddFavoriteNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddFavoriteNameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddFavoriteNameActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddFavoriteNameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddFavoriteNameActivity$1;->this$0:Lcom/waze/navigate/AddFavoriteNameActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteNameActivity$1;->this$0:Lcom/waze/navigate/AddFavoriteNameActivity;

    invoke-virtual {v0, p1}, Lcom/waze/navigate/AddFavoriteNameActivity;->approveClicked(Landroid/view/View;)V

    .line 55
    return-void
.end method
