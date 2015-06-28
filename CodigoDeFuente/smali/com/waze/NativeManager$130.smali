.class Lcom/waze/NativeManager$130;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->venueUpdate(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$from:Ljava/lang/String;

.field private final synthetic val$origVenue:Lcom/waze/reports/VenueData;

.field private final synthetic val$questionId:Ljava/lang/String;

.field private final synthetic val$venue:Lcom/waze/reports/VenueData;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$130;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$130;->val$venue:Lcom/waze/reports/VenueData;

    iput-object p3, p0, Lcom/waze/NativeManager$130;->val$origVenue:Lcom/waze/reports/VenueData;

    iput-object p4, p0, Lcom/waze/NativeManager$130;->val$from:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/NativeManager$130;->val$questionId:Ljava/lang/String;

    .line 2737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/waze/NativeManager$130;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$130;->val$venue:Lcom/waze/reports/VenueData;

    iget-object v2, p0, Lcom/waze/NativeManager$130;->val$origVenue:Lcom/waze/reports/VenueData;

    iget-object v3, p0, Lcom/waze/NativeManager$130;->val$from:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/NativeManager$130;->val$questionId:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->venueUpdateNTV(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->access$80(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    return-void
.end method
