.class Lcom/tencent/qrom/app/AlertController$3;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/AlertController;->setBottomButtons([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/qrom/app/AlertController;

.field final synthetic val$bottomButtonColorItems:[I

.field final synthetic val$hasTitle:Z


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/AlertController;Landroid/content/Context;II[Ljava/lang/CharSequence;[IZ)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Ljava/lang/CharSequence;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController$3;->this$0:Lcom/tencent/qrom/app/AlertController;

    iput-object p6, p0, Lcom/tencent/qrom/app/AlertController$3;->val$bottomButtonColorItems:[I

    iput-boolean p7, p0, Lcom/tencent/qrom/app/AlertController$3;->val$hasTitle:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$3;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mBottomButtonItems:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/tencent/qrom/app/AlertController;->access$900(Lcom/tencent/qrom/app/AlertController;)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertController$3;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 498
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 499
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$3;->val$bottomButtonColorItems:[I

    if-eqz v2, :cond_0

    .line 500
    const v2, 0x7a0900ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 501
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$3;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$600(Lcom/tencent/qrom/app/AlertController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$3;->val$bottomButtonColorItems:[I

    aget v3, v3, p1

    # invokes: Lcom/tencent/qrom/app/AlertController;->setButtonColor(Landroid/content/Context;Landroid/widget/TextView;I)V
    invoke-static {v2, v0, v3}, Lcom/tencent/qrom/app/AlertController;->access$1000(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 503
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$3;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-boolean v3, p0, Lcom/tencent/qrom/app/AlertController$3;->val$hasTitle:Z

    const/4 v4, 0x0

    # invokes: Lcom/tencent/qrom/app/AlertController;->setListBackground(Landroid/view/View;IIZZ)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/tencent/qrom/app/AlertController;->access$1100(Landroid/view/View;IIZZ)V

    .line 504
    return-object v1
.end method
