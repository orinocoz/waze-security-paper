.class Lcom/waze/reports/EditPlaceFragment$18;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFragment;->setPointsWheels(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFragment;

.field private final synthetic val$tensSV:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment;Landroid/widget/ScrollView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$18;->this$0:Lcom/waze/reports/EditPlaceFragment;

    iput-object p2, p0, Lcom/waze/reports/EditPlaceFragment$18;->val$tensSV:Landroid/widget/ScrollView;

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$18;->val$tensSV:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    const/high16 v2, 0x41a0

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment$18;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mDensity:F
    invoke-static {v3}, Lcom/waze/reports/EditPlaceFragment;->access$8(Lcom/waze/reports/EditPlaceFragment;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1116
    return-void
.end method
