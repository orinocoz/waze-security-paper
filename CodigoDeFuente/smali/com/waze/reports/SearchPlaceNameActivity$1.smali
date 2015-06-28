.class Lcom/waze/reports/SearchPlaceNameActivity$1;
.super Ljava/lang/Object;
.source "SearchPlaceNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/SearchPlaceNameActivity;->setUpActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/SearchPlaceNameActivity;


# direct methods
.method constructor <init>(Lcom/waze/reports/SearchPlaceNameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/SearchPlaceNameActivity$1;->this$0:Lcom/waze/reports/SearchPlaceNameActivity;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, returnIntent:Landroid/content/Intent;
    const-string v1, "selected_place"

    iget-object v2, p0, Lcom/waze/reports/SearchPlaceNameActivity$1;->this$0:Lcom/waze/reports/SearchPlaceNameActivity;

    #getter for: Lcom/waze/reports/SearchPlaceNameActivity;->mSelectedPlace:Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/reports/SearchPlaceNameActivity;->access$0(Lcom/waze/reports/SearchPlaceNameActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/waze/reports/SearchPlaceNameActivity$1;->this$0:Lcom/waze/reports/SearchPlaceNameActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/waze/reports/SearchPlaceNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 58
    iget-object v1, p0, Lcom/waze/reports/SearchPlaceNameActivity$1;->this$0:Lcom/waze/reports/SearchPlaceNameActivity;

    invoke-virtual {v1}, Lcom/waze/reports/SearchPlaceNameActivity;->finish()V

    .line 59
    return-void
.end method
