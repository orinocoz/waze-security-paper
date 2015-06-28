.class Lcom/waze/mywaze/social/FoursquareActivity$3;
.super Ljava/lang/Object;
.source "FoursquareActivity.java"

# interfaces
.implements Lcom/waze/settings/SwitchCheckedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/social/FoursquareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/social/FoursquareActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/social/FoursquareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/social/FoursquareActivity$3;->this$0:Lcom/waze/mywaze/social/FoursquareActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCallback(Z)V
    .locals 1
    .parameter "bIsChecked"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/waze/mywaze/social/FoursquareActivity$3;->this$0:Lcom/waze/mywaze/social/FoursquareActivity;

    #calls: Lcom/waze/mywaze/social/FoursquareActivity;->onOptionBadge(Z)V
    invoke-static {v0, p1}, Lcom/waze/mywaze/social/FoursquareActivity;->access$2(Lcom/waze/mywaze/social/FoursquareActivity;Z)V

    .line 96
    return-void
.end method
