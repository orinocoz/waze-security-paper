.class Lcom/waze/reports/EditPlaceFragment$4;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFragment;->focusOnView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFragment;

.field private final synthetic val$child:Landroid/view/View;

.field private final synthetic val$sv:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment;Landroid/widget/ScrollView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$4;->this$0:Lcom/waze/reports/EditPlaceFragment;

    iput-object p2, p0, Lcom/waze/reports/EditPlaceFragment$4;->val$sv:Landroid/widget/ScrollView;

    iput-object p3, p0, Lcom/waze/reports/EditPlaceFragment$4;->val$child:Landroid/view/View;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 422
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$4;->val$sv:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$4;->val$child:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment$4;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mDensity:F
    invoke-static {v3}, Lcom/waze/reports/EditPlaceFragment;->access$8(Lcom/waze/reports/EditPlaceFragment;)F

    move-result v3

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 423
    return-void
.end method
