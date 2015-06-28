.class Lcom/waze/NativeManager$131;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->venueSaveNav(Lcom/waze/reports/VenueData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$venue:Lcom/waze/reports/VenueData;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$131;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$131;->val$venue:Lcom/waze/reports/VenueData;

    .line 2745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/waze/NativeManager$131;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$131;->val$venue:Lcom/waze/reports/VenueData;

    #calls: Lcom/waze/NativeManager;->venueSaveNavNTV(Lcom/waze/reports/VenueData;)V
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$81(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;)V

    .line 2748
    return-void
.end method
