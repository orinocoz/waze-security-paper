.class public Lcom/waze/reports/MapIssueAdapter;
.super Landroid/widget/BaseAdapter;
.source "MapIssueAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private problems:[Lcom/waze/rtalerts/MapProblem;

.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/MapIssueAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/waze/reports/MapIssueAdapter;->problems:[Lcom/waze/rtalerts/MapProblem;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/reports/MapIssueAdapter;->problems:[Lcom/waze/rtalerts/MapProblem;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelected()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/waze/reports/MapIssueAdapter;->selected:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/waze/reports/MapIssueAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030080

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/MapIssueAdapter;->problems:[Lcom/waze/rtalerts/MapProblem;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/waze/rtalerts/MapProblem;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, item:Ljava/lang/String;
    const v2, 0x7f0903f3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 50
    .local v1, name:Landroid/widget/CheckedTextView;
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget v2, p0, Lcom/waze/reports/MapIssueAdapter;->selected:I

    if-ne p1, v2, :cond_1

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 56
    :goto_0
    return-object p2

    .line 54
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public setProblems([Lcom/waze/rtalerts/MapProblem;)V
    .locals 0
    .parameter "problems"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/waze/reports/MapIssueAdapter;->problems:[Lcom/waze/rtalerts/MapProblem;

    .line 69
    return-void
.end method

.method public setSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 60
    iput p1, p0, Lcom/waze/reports/MapIssueAdapter;->selected:I

    .line 61
    return-void
.end method
