.class Lcom/waze/share/ShareActivity$2;
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
    iput-object p1, p0, Lcom/waze/share/ShareActivity$2;->this$0:Lcom/waze/share/ShareActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/ShareActivity$2;)Lcom/waze/share/ShareActivity;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/waze/share/ShareActivity$2;->this$0:Lcom/waze/share/ShareActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 116
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/waze/share/ShareActivity$2$1;

    invoke-direct {v1, p0}, Lcom/waze/share/ShareActivity$2$1;-><init>(Lcom/waze/share/ShareActivity$2;)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getHome(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 130
    return-void
.end method
