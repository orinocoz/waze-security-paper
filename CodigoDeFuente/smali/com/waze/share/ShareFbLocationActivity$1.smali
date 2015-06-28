.class Lcom/waze/share/ShareFbLocationActivity$1;
.super Ljava/lang/Object;
.source "ShareFbLocationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/ShareFbLocationActivity;
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
.field final synthetic this$0:Lcom/waze/share/ShareFbLocationActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbLocationActivity$1;->this$0:Lcom/waze/share/ShareFbLocationActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
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
    .line 130
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/waze/share/ShareFbLocListAdapter;

    .line 131
    .local v0, adapter:Lcom/waze/share/ShareFbLocListAdapter;
    invoke-virtual {v0, p3}, Lcom/waze/share/ShareFbLocListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/share/ShareFbLocation;

    invoke-static {v2}, Lcom/waze/share/ShareFbLocationActivity;->access$0(Lcom/waze/share/ShareFbLocation;)V

    .line 133
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "Position id"

    invoke-static {}, Lcom/waze/share/ShareFbLocationActivity;->access$1()Lcom/waze/share/ShareFbLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/share/ShareFbLocation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v2, p0, Lcom/waze/share/ShareFbLocationActivity$1;->this$0:Lcom/waze/share/ShareFbLocationActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/waze/share/ShareFbLocationActivity;->setResult(ILandroid/content/Intent;)V

    .line 136
    iget-object v2, p0, Lcom/waze/share/ShareFbLocationActivity$1;->this$0:Lcom/waze/share/ShareFbLocationActivity;

    invoke-virtual {v2}, Lcom/waze/share/ShareFbLocationActivity;->finish()V

    .line 137
    return-void
.end method
