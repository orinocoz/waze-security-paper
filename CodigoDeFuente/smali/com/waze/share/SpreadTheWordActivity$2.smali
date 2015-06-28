.class Lcom/waze/share/SpreadTheWordActivity$2;
.super Ljava/lang/Object;
.source "SpreadTheWordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/SpreadTheWordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/SpreadTheWordActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/SpreadTheWordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/SpreadTheWordActivity$2;->this$0:Lcom/waze/share/SpreadTheWordActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity$2;->this$0:Lcom/waze/share/SpreadTheWordActivity;

    #calls: Lcom/waze/share/SpreadTheWordActivity;->onEmail()V
    invoke-static {v0}, Lcom/waze/share/SpreadTheWordActivity;->access$2(Lcom/waze/share/SpreadTheWordActivity;)V

    .line 75
    return-void
.end method
