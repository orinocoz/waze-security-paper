.class Lcom/waze/mywaze/MyWazeActivity$2;
.super Ljava/lang/Object;
.source "MyWazeActivity.java"

# interfaces
.implements Lcom/waze/settings/SwitchCheckedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeActivity$2;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCallback(Z)V
    .locals 1
    .parameter "bIsChecked"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeActivity$2;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    #calls: Lcom/waze/mywaze/MyWazeActivity;->onOptionInvisible(Z)V
    invoke-static {v0, p1}, Lcom/waze/mywaze/MyWazeActivity;->access$0(Lcom/waze/mywaze/MyWazeActivity;Z)V

    .line 82
    return-void
.end method
