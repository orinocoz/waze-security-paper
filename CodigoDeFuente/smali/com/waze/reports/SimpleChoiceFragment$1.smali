.class Lcom/waze/reports/SimpleChoiceFragment$1;
.super Ljava/lang/Object;
.source "SimpleChoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/SimpleChoiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/SimpleChoiceFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/SimpleChoiceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/SimpleChoiceFragment$1;->this$0:Lcom/waze/reports/SimpleChoiceFragment;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/waze/reports/SimpleChoiceFragment$1;->this$0:Lcom/waze/reports/SimpleChoiceFragment;

    #calls: Lcom/waze/reports/SimpleChoiceFragment;->doDone()V
    invoke-static {v0}, Lcom/waze/reports/SimpleChoiceFragment;->access$0(Lcom/waze/reports/SimpleChoiceFragment;)V

    .line 132
    return-void
.end method
