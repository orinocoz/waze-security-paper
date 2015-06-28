.class Lcom/waze/settings/SettingsUtils$3;
.super Ljava/lang/Object;
.source "SettingsUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsUtils;->createDrillDownButton(Landroid/app/Activity;ILcom/waze/strings/DisplayStrings;Ljava/lang/Class;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$activityClass:Ljava/lang/Class;

.field private final synthetic val$activityCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsUtils$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/waze/settings/SettingsUtils$3;->val$activityClass:Ljava/lang/Class;

    iput p3, p0, Lcom/waze/settings/SettingsUtils$3;->val$activityCode:I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/settings/SettingsUtils$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/waze/settings/SettingsUtils$3;->val$activityClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/settings/SettingsUtils$3;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/waze/settings/SettingsUtils$3;->val$activityCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 71
    return-void
.end method
