.class Lcom/waze/navigate/DriveToNativeManager$14;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getSortPreferences(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$SortPreferencesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sortPreferences:Lcom/waze/navigate/SortPreferences;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$category:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$SortPreferencesListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$SortPreferencesListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$14;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$14;->val$category:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$14;->val$listener:Lcom/waze/navigate/DriveToNativeManager$SortPreferencesListener;

    .line 597
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$14;->val$listener:Lcom/waze/navigate/DriveToNativeManager$SortPreferencesListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$14;->sortPreferences:Lcom/waze/navigate/SortPreferences;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$SortPreferencesListener;->onComplete(Lcom/waze/navigate/SortPreferences;)V

    .line 608
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$14;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$14;->val$category:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getSortPreferencesNTV(Ljava/lang/String;)Lcom/waze/navigate/SortPreferences;
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$13(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Lcom/waze/navigate/SortPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$14;->sortPreferences:Lcom/waze/navigate/SortPreferences;

    .line 603
    return-void
.end method
