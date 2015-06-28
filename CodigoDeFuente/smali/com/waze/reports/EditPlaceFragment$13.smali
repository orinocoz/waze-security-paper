.class Lcom/waze/reports/EditPlaceFragment$13;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFragment;->setUpFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$13;->this$0:Lcom/waze/reports/EditPlaceFragment;

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$13;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/EditPlaceFlowActivity;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$13;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mAboutEdit:Lcom/waze/view/text/WazeTextView;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$19(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/view/text/WazeTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/view/text/WazeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditPlaceFlowActivity;->goToEditAbout(Ljava/lang/String;)V

    .line 685
    return-void
.end method
