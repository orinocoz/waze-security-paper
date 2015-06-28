.class Lcom/waze/mywaze/social/FacebookEventActivity$2;
.super Ljava/lang/Object;
.source "FacebookEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/social/FacebookEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/social/FacebookEventActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/social/FacebookEventActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/social/FacebookEventActivity$2;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity$2;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;

    invoke-virtual {v0}, Lcom/waze/mywaze/social/FacebookEventActivity;->searchClicked()V

    .line 106
    return-void
.end method
