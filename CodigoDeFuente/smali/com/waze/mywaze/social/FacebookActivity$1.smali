.class Lcom/waze/mywaze/social/FacebookActivity$1;
.super Ljava/lang/Object;
.source "FacebookActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/social/FacebookActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/social/FacebookActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/social/FacebookActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/social/FacebookActivity$1;->this$0:Lcom/waze/mywaze/social/FacebookActivity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookActivity$1;->this$0:Lcom/waze/mywaze/social/FacebookActivity;

    #calls: Lcom/waze/mywaze/social/FacebookActivity;->onLogin()V
    invoke-static {v0}, Lcom/waze/mywaze/social/FacebookActivity;->access$0(Lcom/waze/mywaze/social/FacebookActivity;)V

    .line 95
    return-void
.end method
