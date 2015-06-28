.class Lcom/waze/rtalerts/RTAlertsListAdapter$1;
.super Ljava/lang/Object;
.source "RTAlertsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsListAdapter;->getView(Landroid/app/Activity;Landroid/view/View;Lcom/waze/rtalerts/RTAlertsAlertData;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$alertData:Lcom/waze/rtalerts/RTAlertsAlertData;

.field private final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/waze/rtalerts/RTAlertsAlertData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsListAdapter$1;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/waze/rtalerts/RTAlertsListAdapter$1;->val$alertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsListAdapter$1;->val$context:Landroid/app/Activity;

    const-class v2, Lcom/waze/rtalerts/RTAlertsGroupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsListAdapter$1;->val$alertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget-object v2, v2, Lcom/waze/rtalerts/RTAlertsAlertData;->mGroupUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsListAdapter$1;->val$context:Landroid/app/Activity;

    const v2, 0x8005

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    return-void
.end method
