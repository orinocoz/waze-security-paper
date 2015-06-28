.class Lcom/waze/reports/EditPlaceFragment$19;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFragment;->roll(Landroid/widget/ScrollView;Landroid/widget/ScrollView;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFragment;

.field private final synthetic val$sv:Landroid/widget/ScrollView;

.field private final synthetic val$sv2:Landroid/widget/ScrollView;

.field private final synthetic val$up:Z


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment;ZLandroid/widget/ScrollView;Landroid/widget/ScrollView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$19;->this$0:Lcom/waze/reports/EditPlaceFragment;

    iput-boolean p2, p0, Lcom/waze/reports/EditPlaceFragment$19;->val$up:Z

    iput-object p3, p0, Lcom/waze/reports/EditPlaceFragment$19;->val$sv:Landroid/widget/ScrollView;

    iput-object p4, p0, Lcom/waze/reports/EditPlaceFragment$19;->val$sv2:Landroid/widget/ScrollView;

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(D)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment$19;->val$up:Z

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$19;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$20(Lcom/waze/reports/EditPlaceFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I
    invoke-static {v0, v1}, Lcom/waze/reports/EditPlaceFragment;->access$21(Lcom/waze/reports/EditPlaceFragment;I)V

    .line 1141
    :goto_0
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$19;->this$0:Lcom/waze/reports/EditPlaceFragment;

    const/4 v1, 0x0

    #setter for: Lcom/waze/reports/EditPlaceFragment;->mIsRolling:Z
    invoke-static {v0, v1}, Lcom/waze/reports/EditPlaceFragment;->access$22(Lcom/waze/reports/EditPlaceFragment;Z)V

    .line 1142
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$19;->this$0:Lcom/waze/reports/EditPlaceFragment;

    const/4 v1, 0x1

    #calls: Lcom/waze/reports/EditPlaceFragment;->setPointsWheels(Z)V
    invoke-static {v0, v1}, Lcom/waze/reports/EditPlaceFragment;->access$23(Lcom/waze/reports/EditPlaceFragment;Z)V

    .line 1143
    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$19;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$20(Lcom/waze/reports/EditPlaceFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I
    invoke-static {v0, v1}, Lcom/waze/reports/EditPlaceFragment;->access$21(Lcom/waze/reports/EditPlaceFragment;I)V

    goto :goto_0
.end method

.method public onStarted(D)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1132
    return-void
.end method

.method public onValueChanged(DD)V
    .locals 4
    .parameter "value"
    .parameter "oldValue"

    .prologue
    const/4 v3, 0x0

    .line 1126
    iget-boolean v1, p0, Lcom/waze/reports/EditPlaceFragment$19;->val$up:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x4220

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$19;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mDensity:F
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$8(Lcom/waze/reports/EditPlaceFragment;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    sub-double/2addr v1, p1

    double-to-int v0, v1

    .line 1127
    .local v0, y:I
    :goto_0
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$19;->val$sv:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1128
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$19;->val$sv2:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$19;->val$sv2:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1129
    :cond_0
    return-void

    .line 1126
    .end local v0           #y:I
    :cond_1
    double-to-int v0, p1

    goto :goto_0
.end method
