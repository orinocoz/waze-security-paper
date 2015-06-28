.class Lcom/waze/mywaze/social/SocialActivity$5;
.super Ljava/lang/Object;
.source "SocialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/social/SocialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/social/SocialActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/social/SocialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/social/SocialActivity$5;->this$0:Lcom/waze/mywaze/social/SocialActivity;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 155
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/mywaze/social/SocialActivity$5;->this$0:Lcom/waze/mywaze/social/SocialActivity;

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareSettings(Lcom/waze/mywaze/MyWazeNativeManager$FoursquareCallback;)V

    .line 156
    return-void
.end method
