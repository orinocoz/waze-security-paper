.class Lcom/waze/reports/UpdatePriceActivity$4;
.super Ljava/lang/Object;
.source "UpdatePriceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/UpdatePriceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/UpdatePriceActivity;


# direct methods
.method constructor <init>(Lcom/waze/reports/UpdatePriceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity$4;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$4;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #calls: Lcom/waze/reports/UpdatePriceActivity;->focusNextField()V
    invoke-static {v0}, Lcom/waze/reports/UpdatePriceActivity;->access$7(Lcom/waze/reports/UpdatePriceActivity;)V

    .line 283
    return-void
.end method
