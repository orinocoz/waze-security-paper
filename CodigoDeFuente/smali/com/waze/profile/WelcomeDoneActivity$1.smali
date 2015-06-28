.class Lcom/waze/profile/WelcomeDoneActivity$1;
.super Ljava/lang/Object;
.source "WelcomeDoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/WelcomeDoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/WelcomeDoneActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/WelcomeDoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/WelcomeDoneActivity$1;->this$0:Lcom/waze/profile/WelcomeDoneActivity;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/waze/profile/WelcomeDoneActivity$1;->this$0:Lcom/waze/profile/WelcomeDoneActivity;

    #calls: Lcom/waze/profile/WelcomeDoneActivity;->onDoneAnalytics()V
    invoke-static {v0}, Lcom/waze/profile/WelcomeDoneActivity;->access$0(Lcom/waze/profile/WelcomeDoneActivity;)V

    .line 39
    return-void
.end method
