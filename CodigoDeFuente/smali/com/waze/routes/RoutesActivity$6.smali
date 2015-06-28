.class Lcom/waze/routes/RoutesActivity$6;
.super Ljava/lang/Object;
.source "RoutesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/routes/RoutesActivity;->onRouteSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/routes/RoutesActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/waze/routes/RoutesActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/routes/RoutesActivity$6;->this$0:Lcom/waze/routes/RoutesActivity;

    iput p2, p0, Lcom/waze/routes/RoutesActivity$6;->val$position:I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 106
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity$6;->this$0:Lcom/waze/routes/RoutesActivity;

    iget v1, p0, Lcom/waze/routes/RoutesActivity$6;->val$position:I

    #calls: Lcom/waze/routes/RoutesActivity;->routeConfirmed(I)V
    invoke-static {v0, v1}, Lcom/waze/routes/RoutesActivity;->access$7(Lcom/waze/routes/RoutesActivity;I)V

    .line 109
    :cond_0
    return-void
.end method
