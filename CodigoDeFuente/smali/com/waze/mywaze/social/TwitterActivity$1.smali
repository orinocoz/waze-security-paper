.class Lcom/waze/mywaze/social/TwitterActivity$1;
.super Ljava/lang/Object;
.source "TwitterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/social/TwitterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/social/TwitterActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/social/TwitterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/social/TwitterActivity$1;->this$0:Lcom/waze/mywaze/social/TwitterActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity$1;->this$0:Lcom/waze/mywaze/social/TwitterActivity;

    #calls: Lcom/waze/mywaze/social/TwitterActivity;->onLogin()V
    invoke-static {v0}, Lcom/waze/mywaze/social/TwitterActivity;->access$0(Lcom/waze/mywaze/social/TwitterActivity;)V

    .line 105
    return-void
.end method
