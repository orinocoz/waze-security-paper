.class Lcom/waze/reports/EditPlaceFragment$3;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFragment;

.field private final synthetic val$sv:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment;Landroid/widget/ScrollView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$3;->this$0:Lcom/waze/reports/EditPlaceFragment;

    iput-object p2, p0, Lcom/waze/reports/EditPlaceFragment$3;->val$sv:Landroid/widget/ScrollView;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$3;->val$sv:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$3;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mScrollY:I
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$7(Lcom/waze/reports/EditPlaceFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 249
    return-void
.end method
