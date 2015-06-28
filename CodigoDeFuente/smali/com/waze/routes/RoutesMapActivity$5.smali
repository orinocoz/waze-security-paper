.class Lcom/waze/routes/RoutesMapActivity$5;
.super Ljava/lang/Object;
.source "RoutesMapActivity.java"

# interfaces
.implements Lcom/waze/view/tabs/TabBar$IOnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/routes/RoutesMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/routes/RoutesMapActivity;


# direct methods
.method constructor <init>(Lcom/waze/routes/RoutesMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/routes/RoutesMapActivity$5;->this$0:Lcom/waze/routes/RoutesMapActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity$5;->this$0:Lcom/waze/routes/RoutesMapActivity;

    #calls: Lcom/waze/routes/RoutesMapActivity;->onSelect(I)V
    invoke-static {v0, p1}, Lcom/waze/routes/RoutesMapActivity;->access$4(Lcom/waze/routes/RoutesMapActivity;I)V

    .line 121
    return-void
.end method
