.class Lcom/waze/view/popups/SystemMessageWeb$1;
.super Ljava/lang/Object;
.source "SystemMessageWeb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/SystemMessageWeb;->show(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/SystemMessageWeb;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/SystemMessageWeb;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/SystemMessageWeb$1;->this$0:Lcom/waze/view/popups/SystemMessageWeb;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb$1;->this$0:Lcom/waze/view/popups/SystemMessageWeb;

    invoke-virtual {v0}, Lcom/waze/view/popups/SystemMessageWeb;->hide()V

    .line 72
    return-void
.end method
