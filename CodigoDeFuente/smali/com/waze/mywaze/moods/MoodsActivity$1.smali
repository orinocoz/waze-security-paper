.class Lcom/waze/mywaze/moods/MoodsActivity$1;
.super Ljava/lang/Object;
.source "MoodsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/moods/MoodsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/moods/MoodsActivity;

.field private final synthetic val$adapter:Lcom/waze/mywaze/moods/MoodArrayAdapter;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/moods/MoodsActivity;Lcom/waze/mywaze/moods/MoodArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/moods/MoodsActivity$1;->this$0:Lcom/waze/mywaze/moods/MoodsActivity;

    iput-object p2, p0, Lcom/waze/mywaze/moods/MoodsActivity$1;->val$adapter:Lcom/waze/mywaze/moods/MoodArrayAdapter;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/mywaze/moods/MoodItem;

    .line 42
    .local v0, item:Lcom/waze/mywaze/moods/MoodItem;
    iget-boolean v1, v0, Lcom/waze/mywaze/moods/MoodItem;->enabled:Z

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/waze/mywaze/moods/MoodsActivity$1;->this$0:Lcom/waze/mywaze/moods/MoodsActivity;

    #getter for: Lcom/waze/mywaze/moods/MoodsActivity;->moodManager:Lcom/waze/MoodManager;
    invoke-static {v1}, Lcom/waze/mywaze/moods/MoodsActivity;->access$0(Lcom/waze/mywaze/moods/MoodsActivity;)Lcom/waze/MoodManager;

    move-result-object v1

    iget-object v2, v0, Lcom/waze/mywaze/moods/MoodItem;->mood:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/waze/MoodManager;->setWazerMood(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/waze/mywaze/moods/MoodsActivity$1;->val$adapter:Lcom/waze/mywaze/moods/MoodArrayAdapter;

    invoke-virtual {v1}, Lcom/waze/mywaze/moods/MoodArrayAdapter;->notifyDataSetChanged()V

    .line 45
    iget-object v1, p0, Lcom/waze/mywaze/moods/MoodsActivity$1;->this$0:Lcom/waze/mywaze/moods/MoodsActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/waze/mywaze/moods/MoodsActivity;->setResult(I)V

    .line 46
    iget-object v1, p0, Lcom/waze/mywaze/moods/MoodsActivity$1;->this$0:Lcom/waze/mywaze/moods/MoodsActivity;

    invoke-virtual {v1}, Lcom/waze/mywaze/moods/MoodsActivity;->finish()V

    .line 48
    :cond_0
    return-void
.end method
