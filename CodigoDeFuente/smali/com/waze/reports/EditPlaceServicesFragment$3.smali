.class Lcom/waze/reports/EditPlaceServicesFragment$3;
.super Ljava/lang/Object;
.source "EditPlaceServicesFragment.java"

# interfaces
.implements Lcom/waze/settings/SwitchCheckedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceServicesFragment;->addLine(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceServicesFragment;

.field private final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceServicesFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceServicesFragment$3;->this$0:Lcom/waze/reports/EditPlaceServicesFragment;

    iput-object p2, p0, Lcom/waze/reports/EditPlaceServicesFragment$3;->val$id:Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCallback(Z)V
    .locals 2
    .parameter "bIsChecked"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/waze/reports/EditPlaceServicesFragment$3;->this$0:Lcom/waze/reports/EditPlaceServicesFragment;

    #getter for: Lcom/waze/reports/EditPlaceServicesFragment;->mSetServiceIds:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceServicesFragment;->access$1(Lcom/waze/reports/EditPlaceServicesFragment;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceServicesFragment$3;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/EditPlaceServicesFragment$3;->this$0:Lcom/waze/reports/EditPlaceServicesFragment;

    #getter for: Lcom/waze/reports/EditPlaceServicesFragment;->mSetServiceIds:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceServicesFragment;->access$1(Lcom/waze/reports/EditPlaceServicesFragment;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceServicesFragment$3;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
