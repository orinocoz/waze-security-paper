.class Lcom/waze/share/ShareActivity$3;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareActivity$3;->this$0:Lcom/waze/share/ShareActivity;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/ShareActivity$3;)Lcom/waze/share/ShareActivity;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/waze/share/ShareActivity$3;->this$0:Lcom/waze/share/ShareActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 137
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/waze/share/ShareActivity$3$1;

    invoke-direct {v1, p0}, Lcom/waze/share/ShareActivity$3$1;-><init>(Lcom/waze/share/ShareActivity$3;)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getWork(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 152
    return-void
.end method
