.class Lcom/waze/navigate/NavigateActivity$1$1;
.super Ljava/lang/Object;
.source "NavigateActivity.java"

# interfaces
.implements Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/NavigateActivity$1;->getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/NavigateActivity$1;


# direct methods
.method constructor <init>(Lcom/waze/navigate/NavigateActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity$1$1;->this$1:Lcom/waze/navigate/NavigateActivity$1;

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepareForSerchResults()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1$1;->this$1:Lcom/waze/navigate/NavigateActivity$1;

    #getter for: Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;
    invoke-static {v0}, Lcom/waze/navigate/NavigateActivity$1;->access$0(Lcom/waze/navigate/NavigateActivity$1;)Lcom/waze/navigate/NavigateActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/NavigateActivity;->SetHandlerForAutocomplete()V

    .line 880
    return-void
.end method
