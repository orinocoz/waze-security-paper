.class Lcom/waze/mywaze/social/TwitterActivity$2;
.super Ljava/lang/Object;
.source "TwitterActivity.java"

# interfaces
.implements Lcom/waze/settings/SwitchCheckedCallback;


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
    iput-object p1, p0, Lcom/waze/mywaze/social/TwitterActivity$2;->this$0:Lcom/waze/mywaze/social/TwitterActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCallback(Z)V
    .locals 1
    .parameter "bIsChecked"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity$2;->this$0:Lcom/waze/mywaze/social/TwitterActivity;

    #calls: Lcom/waze/mywaze/social/TwitterActivity;->onOptionReports(Z)V
    invoke-static {v0, p1}, Lcom/waze/mywaze/social/TwitterActivity;->access$1(Lcom/waze/mywaze/social/TwitterActivity;Z)V

    .line 117
    return-void
.end method