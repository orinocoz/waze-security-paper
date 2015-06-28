.class Lcom/waze/navigate/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$SortPreferencesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/SearchActivity$1;->this$0:Lcom/waze/navigate/SearchActivity;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/SortPreferences;)V
    .locals 1
    .parameter "sortPreferences"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity$1;->this$0:Lcom/waze/navigate/SearchActivity;

    iput-object p1, v0, Lcom/waze/navigate/SearchActivity;->sortPreferences:Lcom/waze/navigate/SortPreferences;

    .line 113
    return-void
.end method
