.class Lcom/waze/share/ShareFbLocationActivity$3;
.super Ljava/lang/Object;
.source "ShareFbLocationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbLocationActivity;->onLocationsListResult(Ljava/util/ArrayList;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareFbLocationActivity;

.field private final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbLocationActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbLocationActivity$3;->this$0:Lcom/waze/share/ShareFbLocationActivity;

    iput-object p2, p0, Lcom/waze/share/ShareFbLocationActivity$3;->val$result:Ljava/util/ArrayList;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/waze/share/ShareFbLocationActivity$3;->this$0:Lcom/waze/share/ShareFbLocationActivity;

    #getter for: Lcom/waze/share/ShareFbLocationActivity;->mAdapter:Lcom/waze/share/ShareFbLocListAdapter;
    invoke-static {v0}, Lcom/waze/share/ShareFbLocationActivity;->access$3(Lcom/waze/share/ShareFbLocationActivity;)Lcom/waze/share/ShareFbLocListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/share/ShareFbLocationActivity$3;->val$result:Ljava/util/ArrayList;

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/waze/share/ShareFbLocListAdapter;->updateList(Ljava/util/ArrayList;I)V

    .line 69
    iget-object v0, p0, Lcom/waze/share/ShareFbLocationActivity$3;->this$0:Lcom/waze/share/ShareFbLocationActivity;

    #getter for: Lcom/waze/share/ShareFbLocationActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/waze/share/ShareFbLocationActivity;->access$4(Lcom/waze/share/ShareFbLocationActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 70
    return-void
.end method
