.class final Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;
.super Ljava/lang/Object;
.source "AddPlaceNewFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/AddPlaceNewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextPointsWatcherImplementation"
.end annotation


# instance fields
.field private _orig:Ljava/lang/String;

.field private final _pts:I

.field private final _ptsView:Lcom/waze/ifs/ui/PointsView;

.field private _validator:Lcom/waze/reports/AddPlaceNewFragment$TextValidator;

.field final synthetic this$0:Lcom/waze/reports/AddPlaceNewFragment;


# direct methods
.method private constructor <init>(Lcom/waze/reports/AddPlaceNewFragment;Lcom/waze/ifs/ui/PointsView;IZLcom/waze/reports/AddPlaceNewFragment$TextValidator;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "ptsView"
    .parameter "pts"
    .parameter "isOn"
    .parameter "v"
    .parameter "originalText"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_validator:Lcom/waze/reports/AddPlaceNewFragment$TextValidator;

    .line 53
    iput-object p2, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    .line 54
    iput p3, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_pts:I

    .line 55
    iput-object p6, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_orig:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_orig:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_orig:Ljava/lang/String;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v0, p3}, Lcom/waze/ifs/ui/PointsView;->setPoints(I)V

    .line 60
    if-eqz p4, :cond_1

    .line 61
    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I
    invoke-static {p1}, Lcom/waze/reports/AddPlaceNewFragment;->access$2(Lcom/waze/reports/AddPlaceNewFragment;)I

    move-result v0

    add-int/2addr v0, p3

    #setter for: Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I
    invoke-static {p1, v0}, Lcom/waze/reports/AddPlaceNewFragment;->access$3(Lcom/waze/reports/AddPlaceNewFragment;I)V

    .line 64
    :cond_1
    iput-object p5, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_validator:Lcom/waze/reports/AddPlaceNewFragment$TextValidator;

    .line 65
    if-nez p5, :cond_2

    .line 66
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/PointsView;->setValid(Z)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p4, v1}, Lcom/waze/ifs/ui/PointsView;->setIsOn(ZZZ)V

    .line 73
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_orig:Ljava/lang/String;

    invoke-interface {p5, v1}, Lcom/waze/reports/AddPlaceNewFragment$TextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/PointsView;->setValid(Z)V

    .line 69
    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mValidatedPointsViews:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/waze/reports/AddPlaceNewFragment;->access$4(Lcom/waze/reports/AddPlaceNewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/waze/reports/AddPlaceNewFragment;Lcom/waze/ifs/ui/PointsView;IZLcom/waze/reports/AddPlaceNewFragment$TextValidator;Ljava/lang/String;Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;-><init>(Lcom/waze/reports/AddPlaceNewFragment;Lcom/waze/ifs/ui/PointsView;IZLcom/waze/reports/AddPlaceNewFragment$TextValidator;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 83
    iget-object v6, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v6}, Lcom/waze/ifs/ui/PointsView;->isOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    iget-object v6, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I
    invoke-static {v6}, Lcom/waze/reports/AddPlaceNewFragment;->access$2(Lcom/waze/reports/AddPlaceNewFragment;)I

    move-result v7

    iget v8, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_pts:I

    sub-int/2addr v7, v8

    #setter for: Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I
    invoke-static {v6, v7}, Lcom/waze/reports/AddPlaceNewFragment;->access$3(Lcom/waze/reports/AddPlaceNewFragment;I)V

    .line 87
    :cond_0
    const/4 v2, 0x1

    .line 88
    .local v2, isValid:Z
    iget-object v6, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_validator:Lcom/waze/reports/AddPlaceNewFragment$TextValidator;

    if-eqz v6, :cond_1

    .line 89
    iget-object v6, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_validator:Lcom/waze/reports/AddPlaceNewFragment$TextValidator;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/waze/reports/AddPlaceNewFragment$TextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result v2

    .line 90
    iget-object v6, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v6, v2}, Lcom/waze/ifs/ui/PointsView;->setValid(Z)V

    .line 93
    :cond_1
    iget-object v6, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_orig:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 94
    .local v3, wasEdited:Z
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_4

    move v0, v5

    .line 95
    .local v0, hasContent:Z
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    move v1, v5

    .line 96
    .local v1, isOn:Z
    :goto_2
    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v4, v1, v0, v5}, Lcom/waze/ifs/ui/PointsView;->setIsOn(ZZZ)V

    .line 98
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I
    invoke-static {v4}, Lcom/waze/reports/AddPlaceNewFragment;->access$2(Lcom/waze/reports/AddPlaceNewFragment;)I

    move-result v5

    iget v6, p0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;->_pts:I

    add-int/2addr v5, v6

    #setter for: Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I
    invoke-static {v4, v5}, Lcom/waze/reports/AddPlaceNewFragment;->access$3(Lcom/waze/reports/AddPlaceNewFragment;I)V

    .line 99
    :cond_2
    return-void

    .end local v0           #hasContent:Z
    .end local v1           #isOn:Z
    .end local v3           #wasEdited:Z
    :cond_3
    move v3, v5

    .line 93
    goto :goto_0

    .restart local v3       #wasEdited:Z
    :cond_4
    move v0, v4

    .line 94
    goto :goto_1

    .restart local v0       #hasContent:Z
    :cond_5
    move v1, v4

    .line 95
    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 79
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 76
    return-void
.end method
