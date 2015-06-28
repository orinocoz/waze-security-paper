.class Lcom/waze/navigate/AddHomeWorkActivity$2;
.super Ljava/lang/Object;
.source "AddHomeWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddHomeWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddHomeWorkActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddHomeWorkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddHomeWorkActivity$2;->this$0:Lcom/waze/navigate/AddHomeWorkActivity;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity$2;->this$0:Lcom/waze/navigate/AddHomeWorkActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddHomeWorkActivity;->searchClicked(I)V

    .line 65
    return-void
.end method
