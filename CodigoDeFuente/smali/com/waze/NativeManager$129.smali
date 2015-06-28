.class Lcom/waze/NativeManager$129;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->venueCreate(Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$force:Z

.field private final synthetic val$from:Ljava/lang/String;

.field private final synthetic val$questionId:Ljava/lang/String;

.field private final synthetic val$venue:Lcom/waze/reports/VenueData;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$129;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$129;->val$venue:Lcom/waze/reports/VenueData;

    iput-object p3, p0, Lcom/waze/NativeManager$129;->val$from:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$129;->val$questionId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/waze/NativeManager$129;->val$force:Z

    .line 2728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/waze/NativeManager$129;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$129;->val$venue:Lcom/waze/reports/VenueData;

    iget-object v2, p0, Lcom/waze/NativeManager$129;->val$from:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/NativeManager$129;->val$questionId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/waze/NativeManager$129;->val$force:Z

    #calls: Lcom/waze/NativeManager;->venueCreateNTV(Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->access$79(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2731
    return-void
.end method
