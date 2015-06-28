.class Lcom/waze/routes/RoutesMapActivity$2$1;
.super Ljava/lang/Object;
.source "RoutesMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/routes/RoutesMapActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/routes/RoutesMapActivity$2;


# direct methods
.method constructor <init>(Lcom/waze/routes/RoutesMapActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/routes/RoutesMapActivity$2$1;->this$1:Lcom/waze/routes/RoutesMapActivity$2;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 73
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity$2$1;->this$1:Lcom/waze/routes/RoutesMapActivity$2;

    #getter for: Lcom/waze/routes/RoutesMapActivity$2;->this$0:Lcom/waze/routes/RoutesMapActivity;
    invoke-static {v0}, Lcom/waze/routes/RoutesMapActivity$2;->access$0(Lcom/waze/routes/RoutesMapActivity$2;)Lcom/waze/routes/RoutesMapActivity;

    move-result-object v0

    #calls: Lcom/waze/routes/RoutesMapActivity;->routeConfirmed()V
    invoke-static {v0}, Lcom/waze/routes/RoutesMapActivity;->access$2(Lcom/waze/routes/RoutesMapActivity;)V

    .line 76
    :cond_0
    return-void
.end method
