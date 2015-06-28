.class Lcom/waze/profile/CarsActivity$1;
.super Ljava/lang/Object;
.source "CarsActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$UserCarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/CarsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/CarsActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/CarsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/CarsActivity$1;->this$0:Lcom/waze/profile/CarsActivity;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCar(Ljava/lang/String;)V
    .locals 1
    .parameter "selection"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/waze/profile/CarsActivity$1;->this$0:Lcom/waze/profile/CarsActivity;

    #calls: Lcom/waze/profile/CarsActivity;->init(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/waze/profile/CarsActivity;->access$0(Lcom/waze/profile/CarsActivity;Ljava/lang/String;)V

    .line 35
    return-void
.end method
