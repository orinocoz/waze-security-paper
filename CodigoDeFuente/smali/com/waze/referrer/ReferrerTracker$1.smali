.class Lcom/waze/referrer/ReferrerTracker$1;
.super Ljava/lang/Object;
.source "ReferrerTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/referrer/ReferrerTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/referrer/ReferrerTracker;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$referrer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/referrer/ReferrerTracker;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/referrer/ReferrerTracker$1;->this$0:Lcom/waze/referrer/ReferrerTracker;

    iput-object p2, p0, Lcom/waze/referrer/ReferrerTracker$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/waze/referrer/ReferrerTracker$1;->val$referrer:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/waze/referrer/ReferrerTracker$1;->this$0:Lcom/waze/referrer/ReferrerTracker;

    iget-object v1, p0, Lcom/waze/referrer/ReferrerTracker$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/waze/referrer/ReferrerTracker$1;->val$referrer:Ljava/lang/String;

    #calls: Lcom/waze/referrer/ReferrerTracker;->send(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/waze/referrer/ReferrerTracker;->access$0(Lcom/waze/referrer/ReferrerTracker;Landroid/content/Context;Ljava/lang/String;)Z

    .line 46
    iget-object v0, p0, Lcom/waze/referrer/ReferrerTracker$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/waze/referrer/ReferrerTracker$1;->val$referrer:Ljava/lang/String;

    #calls: Lcom/waze/referrer/ReferrerTracker;->saveToPrefs(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/referrer/ReferrerTracker;->access$1(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method
