.class Lcom/waze/TestActivity$2;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/TestActivity;


# direct methods
.method constructor <init>(Lcom/waze/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/TestActivity$2;->this$0:Lcom/waze/TestActivity;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "WAZE"

    const-string v1, "On click2!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public onSwipe()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "WAZE"

    const-string v1, "On swipe2!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method
