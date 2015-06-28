.class Lcom/waze/navigate/social/AddFromActivity$4;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFromActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFromActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFromActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$4;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewForObject(Ljava/lang/Object;)Landroid/view/View;
    .locals 10
    .parameter "object"

    .prologue
    const/4 v9, 0x0

    .line 223
    move-object v7, p1

    check-cast v7, Lcom/waze/user/PersonBase;

    .line 226
    .local v7, p:Lcom/waze/user/PersonBase;
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$4;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v0}, Lcom/waze/navigate/social/AddFromActivity;->access$2(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/autocomplete/ContactsCompletionView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    const-string v1, "layout_inflater"

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 229
    .local v6, l:Landroid/view/LayoutInflater;
    const v1, 0x7f030043

    .line 230
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$4;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v0}, Lcom/waze/navigate/social/AddFromActivity;->access$2(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/autocomplete/ContactsCompletionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 229
    invoke-virtual {v6, v1, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 231
    .local v8, view:Landroid/widget/LinearLayout;
    const v0, 0x7f090236

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const v0, 0x7f090235

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 234
    .local v3, friendImageInLayout:Landroid/widget/ImageView;
    const v0, 0x7f02011b

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-virtual {v7}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 236
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$4;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    .line 235
    invoke-virtual/range {v0 .. v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 238
    const v0, 0x7f090234

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 240
    return-object v8
.end method
