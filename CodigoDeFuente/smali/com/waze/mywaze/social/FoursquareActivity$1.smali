.class Lcom/waze/mywaze/social/FoursquareActivity$1;
.super Ljava/lang/Object;
.source "FoursquareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/mywaze/social/FoursquareActivity$1;->this$0:Lcom/waze/mywaze/social/FoursquareActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/waze/mywaze/social/FoursquareActivity$1;->this$0:Lcom/waze/mywaze/social/FoursquareActivity;

    #calls: Lcom/waze/mywaze/social/FoursquareActivity;->onLogin()V
    invoke-static {v0}, Lcom/waze/mywaze/social/FoursquareActivity;->access$0(Lcom/waze/mywaze/social/FoursquareActivity;)V

    .line 69
    return-void
.end method
